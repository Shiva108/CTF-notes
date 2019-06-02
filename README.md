# CTF-Notes - Hackers Resources Galore

## Index

```
├── Bypassing-Web-Application-Firewalls
├── ctf
│   └── natas
├── escalationserver
├── Hydra-Cheatsheet
├── IntruderPayloads
│   ├── BurpAttacks
│   ├── FuzzLists
│   ├── Plugins
│   └── Uploads
│       ├── jpeg
│       ├── mp4
│       ├── png
│       └── swf
├── Linux-Privilege-Escalation
├── metasploit scripts
├── MSF-Venom-Cheatsheet
├── Notes VA
│   └── lpeworkshop
├── Offensive-Security-OSCP-Cheatsheets
│   ├── ctfs-walkthroughs
│   ├── lab
│   │   └── logstash.conf
│   ├── memory-forensics
│   ├── offensive-security
│   │   ├── phishing-with-ms-office
│   │   ├── red-team-infrastructure
│   │   ├── t1003-credential-dumping
│   │   ├── t1055-process-injection
│   │   ├── t1084-abusing-windows-managent-instrumentation
│   │   └── t1187-forced-authentication
│   └── offensive-security-experiments
│       ├── active-directory-kerberos-abuse
│       └── offensive-security-cheetsheets
├── oscp
│   ├── recon_enum
│   ├── reports
│   └── templates
├── OSCP-Materials-master
│   ├── Cheat Sheets
│   │   └── Arroway Cheat Sheets
│   ├── Linux Privilege Escalation and Post Exploitation
│   ├── Metasploit-Meterpreter-Msfvenom
│   ├── PASSWORD CRACKING and Usefull TOOLS and Commands
│   ├── SHELLCODE and Buffer Over Flow
│   ├── Understand Privilege Escalation
│   └── Window Privilege Escalation and Post Exploitation
├── OSCPRepo
│   ├── CheetSheets
│   │   ├── Attacks
│   │   ├── Database
│   │   │   └── Oracle
│   │   ├── Debuggers
│   │   ├── Field Manuals
│   │   ├── Networking
│   │   ├── Post
│   │   └── Specific Tools
│   ├── KeepNotes
│   │   ├── BookmarkList
│   │   │   ├── agile hacking
│   │   │   ├── attacks
│   │   │   │   ├── cloud - iaas
│   │   │   │   │   ├── aws
│   │   │   │   │   │   ├── amazon official documentation
│   │   │   │   │   │   ├── bypassing defenses
│   │   │   │   │   │   ├── disrupting logging
│   │   │   │   │   │   ├── enumeration
│   │   │   │   │   │   │   ├── aws account id exposure
│   │   │   │   │   │   │   ├── key exposure
│   │   │   │   │   │   │   │   ├── accidental commits
│   │   │   │   │   │   │   │   └── keys in ec2 instances
│   │   │   │   │   │   │   ├── roles
│   │   │   │   │   │   │   │   ├── assumerole
│   │   │   │   │   │   │   │   ├── dangerous policies
│   │   │   │   │   │   │   │   │   └── administratoraccess
│   │   │   │   │   │   │   │   ├── dangerous roles
│   │   │   │   │   │   │   │   └── updateassumerolepolicy
│   │   │   │   │   │   │   │       └── example
│   │   │   │   │   │   │   ├── s3 buckets
│   │   │   │   │   │   │   │   ├── losing your keys
│   │   │   │   │   │   │   │   ├── s3 acls
│   │   │   │   │   │   │   │   └── world readable buckets
│   │   │   │   │   │   │   │       └── internet searches
│   │   │   │   │   │   │   └── users
│   │   │   │   │   │   │       └── updateassumerolepolicy
│   │   │   │   │   │   ├── general primer
│   │   │   │   │   │   │   ├── aws iam roles
│   │   │   │   │   │   │   ├── aws metadata service
│   │   │   │   │   │   │   ├── aws security features
│   │   │   │   │   │   │   │   ├── artifact
│   │   │   │   │   │   │   │   ├── athena
│   │   │   │   │   │   │   │   ├── cloudtrail
│   │   │   │   │   │   │   │   ├── cloudwatch
│   │   │   │   │   │   │   │   ├── inspector
│   │   │   │   │   │   │   │   ├── shield
│   │   │   │   │   │   │   │   └── trustedadvisor
│   │   │   │   │   │   │   ├── s3 buckets
│   │   │   │   │   │   │   ├── shadow admins
│   │   │   │   │   │   │   ├── some aws attack chains
│   │   │   │   │   │   │   ├── testing on the cloud
│   │   │   │   │   │   │   ├── testing the cloud console
│   │   │   │   │   │   │   └── using the aws cli tool
│   │   │   │   │   │   ├── hijacking misconfigured roles
│   │   │   │   │   │   │   ├── general primer
│   │   │   │   │   │   │   └── testing assumerole and updateassumerolep
│   │   │   │   │   │   ├── mitigations
│   │   │   │   │   │   │   ├── defending buckets
│   │   │   │   │   │   │   └── example user policy with variables
│   │   │   │   │   │   ├── persistence
│   │   │   │   │   │   │   └── lambda rat
│   │   │   │   │   │   └── privilege escalation
│   │   │   │   │   │       ├── adding a user to a group
│   │   │   │   │   │       ├── attaching a policy to a resource
│   │   │   │   │   │       ├── creating an ec2 instance with an existin
│   │   │   │   │   │       ├── creating a new login profile
│   │   │   │   │   │       ├── creating a new policy version
│   │   │   │   │   │       ├── creating a new user access key
│   │   │   │   │   │       ├── passing a role to a glue development end
│   │   │   │   │   │       ├── passing a role to a new lambda function 2
│   │   │   │   │   │       ├── passing a role to a new lamdda function
│   │   │   │   │   │       ├── passing a role to cloudformation
│   │   │   │   │   │       ├── passing a role to data pipeline
│   │   │   │   │   │       ├── setting default policy version to an exi
│   │   │   │   │   │       ├── updating an existing glue development en
│   │   │   │   │   │       ├── updating an existing login profile
│   │   │   │   │   │       ├── updating an inline policy for a resource
│   │   │   │   │   │       ├── updating the assumerolepolicydocument of
│   │   │   │   │   │       └── updating the code of an existing lambda
│   │   │   │   │   ├── azure
│   │   │   │   │   │   └── general primer
│   │   │   │   │   │       ├── azure security features
│   │   │   │   │   │       │   ├── key vault
│   │   │   │   │   │       │   ├── mfa
│   │   │   │   │   │       │   ├── operations management suite
│   │   │   │   │   │       │   └── security center
│   │   │   │   │   │       ├── storage and storage keys
│   │   │   │   │   │       ├── testing in the cloud
│   │   │   │   │   │       ├── testing on the cloud
│   │   │   │   │   │       └── testing the cloud console
│   │   │   │   │   └── gcp
│   │   │   │   │       ├── enumeration
│   │   │   │   │       │   ├── storage existence
│   │   │   │   │       │   ├── storage permissions
│   │   │   │   │       │   └── storage privilege escalation
│   │   │   │   │       │       └── example
│   │   │   │   │       └── general primer
│   │   │   │   ├── devices
│   │   │   │   │   └── cisco
│   │   │   │   │       └── asa check version.nse
│   │   │   │   ├── network
│   │   │   │   │   ├── active directory - dc - combo
│   │   │   │   │   │   ├── ad dns
│   │   │   │   │   │   │   ├── adidns record control
│   │   │   │   │   │   │   └── general primer
│   │   │   │   │   │   ├── ad shadow admins
│   │   │   │   │   │   ├── backdoor ad
│   │   │   │   │   │   │   ├── sean metcafs sneaky ad persistence
│   │   │   │   │   │   │   └── using dacls
│   │   │   │   │   │   │       ├── abusing gpos backdoor
│   │   │   │   │   │   │       ├── adminsdholder backdoor
│   │   │   │   │   │   │       ├── exchange backdoor
│   │   │   │   │   │   │       ├── hidden dcsync backdoor
│   │   │   │   │   │   │       ├── laps backdoor
│   │   │   │   │   │   │       ├── mitigations to dacl backdoors
│   │   │   │   │   │   │       └── stealth and hiding the dacl
│   │   │   │   │   │   ├── dacl and acl
│   │   │   │   │   │   │   ├── ds_control_access
│   │   │   │   │   │   │   ├── general primer
│   │   │   │   │   │   │   ├── object-specific rights to care about
│   │   │   │   │   │   │   ├── target computer objects
│   │   │   │   │   │   │   ├── target domain objects
│   │   │   │   │   │   │   ├── target gpos
│   │   │   │   │   │   │   ├── target group objects
│   │   │   │   │   │   │   └── target user objects
│   │   │   │   │   │   ├── general primer
│   │   │   │   │   │   │   └── joining a domain before and after result
│   │   │   │   │   │   ├── ldap
│   │   │   │   │   │   ├── linux in ad
│   │   │   │   │   │   │   ├── kerberos
│   │   │   │   │   │   │   ├── mitigations
│   │   │   │   │   │   │   ├── sssd
│   │   │   │   │   │   │   │   ├── sssd passwords
│   │   │   │   │   │   │   │   └── sssd ssh kerberos
│   │   │   │   │   │   │   └── vintela auth services
│   │   │   │   │   │   │       ├── vintela john rules
│   │   │   │   │   │   │       └── vintela ssh kerberos
│   │   │   │   │   │   ├── maq adding a computer account to a domai
│   │   │   │   │   │   ├── mitigations
│   │   │   │   │   │   ├── passwords around ad
│   │   │   │   │   │   │   ├── ldap
│   │   │   │   │   │   │   └── sysvol
│   │   │   │   │   │   ├── pentesting ad process
│   │   │   │   │   │   ├── rodc (read-only domain controllers)
│   │   │   │   │   │   │   ├── attacking rodcs
│   │   │   │   │   │   │   │   ├── accounts with cached passwords on the ro
│   │   │   │   │   │   │   │   │   ├── compromise rodc admin
│   │   │   │   │   │   │   │   │   ├── dcsync from rodcs no
│   │   │   │   │   │   │   │   │   └── mimikatz on rodc
│   │   │   │   │   │   │   │   ├── jump to dc using dsrm
│   │   │   │   │   │   │   │   │   ├── creds to pth
│   │   │   │   │   │   │   │   │   ├── dsrm mitigation
│   │   │   │   │   │   │   │   │   └── pth to dcsync
│   │   │   │   │   │   │   │   └── kerberos service accounts
│   │   │   │   │   │   │   │       └── rodc golden-silver tickets
│   │   │   │   │   │   │   ├── general primer
│   │   │   │   │   │   │   ├── mitigations
│   │   │   │   │   │   │   └── password replication policy
│   │   │   │   │   │   └── security descriptors to care about
│   │   │   │   │   │       ├── control rights
│   │   │   │   │   │       └── generic rights to care about
│   │   │   │   │   ├── database
│   │   │   │   │   │   ├── mssql
│   │   │   │   │   │   │   └── powerupsql
│   │   │   │   │   │   └── oracle
│   │   │   │   │   │       └── xml deserialization
│   │   │   │   │   ├── ftp
│   │   │   │   │   ├── ipv6
│   │   │   │   │   ├── irc
│   │   │   │   │   │   ├── general primer
│   │   │   │   │   │   └── list of commands
│   │   │   │   │   ├── ldap
│   │   │   │   │   │   └── general primer
│   │   │   │   │   ├── msrpc
│   │   │   │   │   │   ├── example of at service
│   │   │   │   │   │   ├── general primer
│   │   │   │   │   │   ├── ids of rpcss - fingerprint
│   │   │   │   │   │   ├── invoke-rpcarchitecturecheck.ps1
│   │   │   │   │   │   ├── port query for ad
│   │   │   │   │   │   ├── port query for exchange
│   │   │   │   │   │   └── rpc network protocols
│   │   │   │   │   ├── nfs
│   │   │   │   │   │   ├── general primer
│   │   │   │   │   │   ├── nfs v3 and older
│   │   │   │   │   │   ├── root_squash
│   │   │   │   │   │   └── spoof for access
│   │   │   │   │   │       └── example
│   │   │   │   │   ├── pbx - voip
│   │   │   │   │   ├── rdp
│   │   │   │   │   ├── smb
│   │   │   │   │   │   ├── detecting versions
│   │   │   │   │   │   │   ├── cmd
│   │   │   │   │   │   │   ├── logging
│   │   │   │   │   │   │   ├── packet capture
│   │   │   │   │   │   │   └── powershell
│   │   │   │   │   │   ├── edit smbconf
│   │   │   │   │   │   ├── extracting information
│   │   │   │   │   │   │   ├── null sessions
│   │   │   │   │   │   │   ├── rpcclient
│   │   │   │   │   │   │   │   └── spray script
│   │   │   │   │   │   │   └── specific rpc functions
│   │   │   │   │   │   │       ├── localsecurityauthority domain
│   │   │   │   │   │   │       ├── localsecurityauthority translation
│   │   │   │   │   │   │       ├── netlogon
│   │   │   │   │   │   │       │   └── dsrgetdcnameex 1 and 2
│   │   │   │   │   │   │       │       ├── ldap
│   │   │   │   │   │   │       │       ├── netbios
│   │   │   │   │   │   │       │       └── scripts
│   │   │   │   │   │   │       └── security account manager c-t-s
│   │   │   │   │   │   ├── general primer
│   │   │   │   │   │   ├── linux samba
│   │   │   │   │   │   │   ├── backend types
│   │   │   │   │   │   │   ├── dc join and replication
│   │   │   │   │   │   │   ├── passdb sam store
│   │   │   │   │   │   │   ├── pdbedit
│   │   │   │   │   │   │   │   └── import and export
│   │   │   │   │   │   │   ├── samba-pwdump.py link
│   │   │   │   │   │   │   ├── samba tdb databases
│   │   │   │   │   │   │   ├── samba-tool
│   │   │   │   │   │   │   └── tdbtool
│   │   │   │   │   │   ├── mounting smb shares
│   │   │   │   │   │   ├── named pipes
│   │   │   │   │   │   │   ├── connecting to pipes
│   │   │   │   │   │   │   ├── enumerating - scanning for pipes
│   │   │   │   │   │   │   └── general info
│   │   │   │   │   │   ├── psexec smbexec
│   │   │   │   │   │   ├── registry keys
│   │   │   │   │   │   ├── relay
│   │   │   │   │   │   └── tools
│   │   │   │   │   ├── smtp - exchange - pop
│   │   │   │   │   │   ├── exchange
│   │   │   │   │   │   │   ├── abusing exchange
│   │   │   │   │   │   │   ├── access internal shares through exchange 2
│   │   │   │   │   │   │   │   ├── activesync documentation
│   │   │   │   │   │   │   │   ├── mitigations
│   │   │   │   │   │   │   │   └── useful eas tools
│   │   │   │   │   │   │   ├── backdoor process
│   │   │   │   │   │   │   ├── exchange-ad-privesc
│   │   │   │   │   │   │   │   ├── exchange dnsadmins group dacl priv esc
│   │   │   │   │   │   │   │   └── exchange domain object dacl priv esc
│   │   │   │   │   │   │   └── general primer
│   │   │   │   │   │   ├── pop - pop3
│   │   │   │   │   │   │   └── commands
│   │   │   │   │   │   │       └── login
│   │   │   │   │   │   └── smtp
│   │   │   │   │   │       ├── commands
│   │   │   │   │   │       └── user enumerate
│   │   │   │   │   ├── snmp
│   │   │   │   │   │   ├── general primer
│   │   │   │   │   │   └── write access
│   │   │   │   │   ├── ssh
│   │   │   │   │   │   ├── brute ssh known_hosts
│   │   │   │   │   │   │   ├── hashcat
│   │   │   │   │   │   │   │   ├── hexhosts.c
│   │   │   │   │   │   │   │   ├── ip-gen.sh
│   │   │   │   │   │   │   │   └── ipv4.hcmask
│   │   │   │   │   │   │   ├── jtr jumbo
│   │   │   │   │   │   │   └── known_hosts_bruteforcer.pl
│   │   │   │   │   │   │       └── usage
│   │   │   │   │   │   ├── fingerprint openssl
│   │   │   │   │   │   ├── stolen key doesnt work
│   │   │   │   │   │   └── windows 10 ssh
│   │   │   │   │   └── tftp
│   │   │   │   │       ├── general primer
│   │   │   │   │       └── how it works
│   │   │   │   ├── software
│   │   │   │   │   ├── artifact servers
│   │   │   │   │   │   └── nexus
│   │   │   │   │   │       └── backdoored versions of code
│   │   │   │   │   ├── hypervisors - containers
│   │   │   │   │   │   ├── docker
│   │   │   │   │   │   │   ├── docker api
│   │   │   │   │   │   │   │   ├── access api with curl
│   │   │   │   │   │   │   │   └── notes
│   │   │   │   │   │   │   │       ├── creating a nginx container 2
│   │   │   │   │   │   │   │       └── enum containers
│   │   │   │   │   │   │   ├── docker group priv esc escape
│   │   │   │   │   │   │   ├── escaping containers
│   │   │   │   │   │   │   │   └── container creation exploit
│   │   │   │   │   │   │   ├── general primer
│   │   │   │   │   │   │   │   ├── container configuration
│   │   │   │   │   │   │   │   ├── docker run and compose
│   │   │   │   │   │   │   │   └── what is a container
│   │   │   │   │   │   │   ├── identifying docker
│   │   │   │   │   │   │   └── interesting command reference
│   │   │   │   │   │   │       ├── executing commands in container
│   │   │   │   │   │   │       └── nix cmds without bins using proc
│   │   │   │   │   │   ├── lxd
│   │   │   │   │   │   │   └── lxc group priv
│   │   │   │   │   │   └── qemu
│   │   │   │   │   │       └── qemu monitor console
│   │   │   │   │   ├── orchestrators
│   │   │   │   │   │   ├── chef
│   │   │   │   │   │   │   ├── backdooring with chef
│   │   │   │   │   │   │   ├── enumeration with chef
│   │   │   │   │   │   │   └── general primer
│   │   │   │   │   │   ├── jenkins
│   │   │   │   │   │   │   ├── backdooring jenkins
│   │   │   │   │   │   │   ├── decrypting credentials.xml
│   │   │   │   │   │   │   │   └── decryptjenkins.py
│   │   │   │   │   │   │   ├── easiest command injection
│   │   │   │   │   │   │   │   └── jenkins secret from web
│   │   │   │   │   │   │   └── resetting passwords
│   │   │   │   │   │   └── kubernetes
│   │   │   │   │   │       ├── general primer
│   │   │   │   │   │       └── shell access to containers
│   │   │   │   │   ├── other web tech referenes
│   │   │   │   │   │   ├── cookies
│   │   │   │   │   │   ├── html 5
│   │   │   │   │   │   │   ├── communication apis
│   │   │   │   │   │   │   │   ├── cross origin resource sharing
│   │   │   │   │   │   │   │   ├── server-sent events
│   │   │   │   │   │   │   │   ├── web messaging
│   │   │   │   │   │   │   │   └── web sockets
│   │   │   │   │   │   │   │       └── implementation hints
│   │   │   │   │   │   │   ├── geolocation
│   │   │   │   │   │   │   ├── offline applications
│   │   │   │   │   │   │   ├── sandboxed frames
│   │   │   │   │   │   │   ├── storage apis
│   │   │   │   │   │   │   │   ├── client-side databases
│   │   │   │   │   │   │   │   └── local storage
│   │   │   │   │   │   │   ├── tabnabbing
│   │   │   │   │   │   │   └── web workers
│   │   │   │   │   │   ├── http
│   │   │   │   │   │   ├── rest
│   │   │   │   │   │   └── websockets
│   │   │   │   │   ├── web applications
│   │   │   │   │   │   ├── citrix
│   │   │   │   │   │   │   ├── escaping citrix
│   │   │   │   │   │   │   │   └── save as
│   │   │   │   │   │   │   └── general primer
│   │   │   │   │   │   ├── cms
│   │   │   │   │   │   │   ├── drupal
│   │   │   │   │   │   │   │   ├── cmd exec from admin login
│   │   │   │   │   │   │   │   └── passwords in settings.php
│   │   │   │   │   │   │   ├── lotus
│   │   │   │   │   │   │   ├── sharepoint
│   │   │   │   │   │   │   └── wordpress
│   │   │   │   │   │   │       ├── bruteforce users
│   │   │   │   │   │   │       ├── cmd exec from admin login
│   │   │   │   │   │   │       ├── password protected posts
│   │   │   │   │   │   │       └── passwords in wp-config
│   │   │   │   │   │   ├── office 365
│   │   │   │   │   │   ├── oracle app servers
│   │   │   │   │   │   │   └── weblogic
│   │   │   │   │   │   │       ├── decryptpasswords
│   │   │   │   │   │   │       │   ├── bouncycastle.crypto.dll
│   │   │   │   │   │   │       │   ├── java
│   │   │   │   │   │   │       │   ├── powershell
│   │   │   │   │   │   │       │   └── python
│   │   │   │   │   │   │       └── t3 protocol
│   │   │   │   │   │   ├── phpmyadmin
│   │   │   │   │   │   ├── sap
│   │   │   │   │   │   ├── vmware web
│   │   │   │   │   │   ├── webmin
│   │   │   │   │   │   │   ├── general primer
│   │   │   │   │   │   │   ├── some file locations
│   │   │   │   │   │   │   └── webmin and apache
│   │   │   │   │   │   └── xampp
│   │   │   │   │   │       ├── general primer
│   │   │   │   │   │       └── interesting urls - files
│   │   │   │   │   ├── web frameworks
│   │   │   │   │   │   ├── asp-aspx-dotnet
│   │   │   │   │   │   │   ├── files to look for
│   │   │   │   │   │   │   └── general primer
│   │   │   │   │   │   ├── coldfusion
│   │   │   │   │   │   │   ├── admin panel
│   │   │   │   │   │   │   │   └── get db creds
│   │   │   │   │   │   │   │       ├── hassinger cfml
│   │   │   │   │   │   │   │       └── ochoa python script
│   │   │   │   │   │   │   ├── brute forcing
│   │   │   │   │   │   │   ├── exec upload exe
│   │   │   │   │   │   │   ├── lfi
│   │   │   │   │   │   │   │   └── xxe tester
│   │   │   │   │   │   │   ├── passwords
│   │   │   │   │   │   │   │   ├── pass the hash with 8
│   │   │   │   │   │   │   │   ├── password reset
│   │   │   │   │   │   │   │   └── rds bypass with 9 and 10
│   │   │   │   │   │   │   ├── sqli
│   │   │   │   │   │   │   ├── uploading a cfm shell
│   │   │   │   │   │   │   │   ├── kurt shell
│   │   │   │   │   │   │   │   └── peter shell
│   │   │   │   │   │   │   └── versions and directories
│   │   │   │   │   │   ├── google web toolkit
│   │   │   │   │   │   │   ├── general primer
│   │   │   │   │   │   │   ├── gwt-rpc request format
│   │   │   │   │   │   │   │   └── gwt decode long
│   │   │   │   │   │   │   ├── gwt-rpc wire protocol documentation
│   │   │   │   │   │   │   │   ├── caveats
│   │   │   │   │   │   │   │   ├── detailed design
│   │   │   │   │   │   │   │   │   ├── envelope
│   │   │   │   │   │   │   │   │   ├── fields of a gwt-rpc request
│   │   │   │   │   │   │   │   │   ├── java objects
│   │   │   │   │   │   │   │   │   ├── java types
│   │   │   │   │   │   │   │   │   └── java values
│   │   │   │   │   │   │   │   ├── objective and background
│   │   │   │   │   │   │   │   ├── overview
│   │   │   │   │   │   │   │   └── serialization policies
│   │   │   │   │   │   │   │       ├── api
│   │   │   │   │   │   │   │       ├── calculating serialization policy
│   │   │   │   │   │   │   │       ├── find which service generated a policy
│   │   │   │   │   │   │   │       ├── how many policies per gwt app
│   │   │   │   │   │   │   │       ├── locating the policy file
│   │   │   │   │   │   │   │       └── policy file format
│   │   │   │   │   │   │   ├── mitigations
│   │   │   │   │   │   │   └── testing gwt
│   │   │   │   │   │   │       ├── csrf byass
│   │   │   │   │   │   │       │   └── actionscript gwt csrf example
│   │   │   │   │   │   │       ├── recon
│   │   │   │   │   │   │       └── unlocking ui features
│   │   │   │   │   │   └── jboss
│   │   │   │   │   └── web servers
│   │   │   │   │       ├── apache
│   │   │   │   │       │   ├── apache modules
│   │   │   │   │       │   │   ├── enumerating modules
│   │   │   │   │       │   │   └── list of modules
│   │   │   │   │       │   ├── bypass htaccess
│   │   │   │   │       │   ├── htaccess
│   │   │   │   │       │   │   └── password protection
│   │   │   │   │       │   ├── htpasswd
│   │   │   │   │       │   └── mitigations
│   │   │   │   │       ├── nginx
│   │   │   │   │       └── virtual host routing
│   │   │   │   │           └── general primer
│   │   │   │   ├── users
│   │   │   │   │   └── phishing
│   │   │   │   │       ├── bypass email filtering
│   │   │   │   │       ├── bypass user filtering
│   │   │   │   │       ├── file extension tricks
│   │   │   │   │       │   └── windowss u 202e
│   │   │   │   │       ├── js obfuscation in phishing campaigns
│   │   │   │   │       │   ├── aes 256
│   │   │   │   │       │   ├── base64
│   │   │   │   │       │   ├── combination encoding
│   │   │   │   │       │   ├── custom encoding
│   │   │   │   │       │   ├── flipped base64
│   │   │   │   │       │   ├── multibyte xor
│   │   │   │   │       │   └── xor encoding
│   │   │   │   │       └── office documents
│   │   │   │   │           ├── excel exec formula
│   │   │   │   │           ├── office dde
│   │   │   │   │           └── office macros
│   │   │   │   ├── web
│   │   │   │   │   ├── abuse of functionality
│   │   │   │   │   │   ├── abusing password recovery flows
│   │   │   │   │   │   └── general primer
│   │   │   │   │   ├── attack strings - payloads
│   │   │   │   │   │   ├── java applet
│   │   │   │   │   │   │   └── java applet
│   │   │   │   │   │   │       └── compile and sign
│   │   │   │   │   │   ├── war files
│   │   │   │   │   │   └── xss
│   │   │   │   │   │       ├── awesome xss payloads
│   │   │   │   │   │       └── general
│   │   │   │   │   ├── authentication
│   │   │   │   │   │   ├── 2fa
│   │   │   │   │   │   │   ├── general primer
│   │   │   │   │   │   │   └── session issues
│   │   │   │   │   │   ├── abuse mitigations
│   │   │   │   │   │   ├── general primer
│   │   │   │   │   │   │   ├── brute force
│   │   │   │   │   │   │   └── credential stuffing
│   │   │   │   │   │   ├── oauth
│   │   │   │   │   │   │   └── oauth v2
│   │   │   │   │   │   │       ├── general primer
│   │   │   │   │   │   │       └── testing oauth
│   │   │   │   │   │   │           ├── access token in uri
│   │   │   │   │   │   │           ├── authorization code reuse
│   │   │   │   │   │   │           ├── csrf oauth client
│   │   │   │   │   │   │           └── redirect uri not validated
│   │   │   │   │   │   └── sso - account hijack
│   │   │   │   │   │       ├── account hijack via mutable identifier
│   │   │   │   │   │       │   ├── general primer
│   │   │   │   │   │       │   └── testing mutable identifiers
│   │   │   │   │   │       └── general primer
│   │   │   │   │   ├── cache poisoning
│   │   │   │   │   ├── clickjacking
│   │   │   │   │   │   ├── general primer
│   │   │   │   │   │   └── mitigations
│   │   │   │   │   │       ├── best-for-now frame breaking script
│   │   │   │   │   │       ├── csp frame-ancestors
│   │   │   │   │   │       ├── window.confirm protection
│   │   │   │   │   │       └── x-frame options headers
│   │   │   │   │   ├── cmd injection
│   │   │   │   │   │   ├── general primer
│   │   │   │   │   │   └── shellshock
│   │   │   │   │   │       ├── general primer
│   │   │   │   │   │       └── testing for shellshock
│   │   │   │   │   ├── content spoofing
│   │   │   │   │   │   └── general primer
│   │   │   │   │   ├── cors
│   │   │   │   │   │   ├── common misconfigurations
│   │   │   │   │   │   ├── cors bypass
│   │   │   │   │   │   ├── general primer
│   │   │   │   │   │   │   ├── understanding cors
│   │   │   │   │   │   │   │   └── pre-flight
│   │   │   │   │   │   │   └── understanding sop
│   │   │   │   │   │   └── things to check
│   │   │   │   │   ├── csp
│   │   │   │   │   │   ├── bypass
│   │   │   │   │   │   └── general primer
│   │   │   │   │   ├── csrf
│   │   │   │   │   │   ├── cross-site file upload
│   │   │   │   │   │   ├── csrf via xhr - fetch
│   │   │   │   │   │   ├── general primer
│   │   │   │   │   │   ├── login csrf
│   │   │   │   │   │   ├── mitigations for csrf
│   │   │   │   │   │   │   ├── defense in depth techniques
│   │   │   │   │   │   │   │   ├── custom request headers
│   │   │   │   │   │   │   │   ├── double submit cookie
│   │   │   │   │   │   │   │   ├── samesite cookie attribute
│   │   │   │   │   │   │   │   ├── user interaction csrf defense
│   │   │   │   │   │   │   │   └── verify origin
│   │   │   │   │   │   │   └── token based
│   │   │   │   │   │   │       ├── encryption token pattern
│   │   │   │   │   │   │       ├── hmac token pattern
│   │   │   │   │   │   │       └── synchronizer token pattern
│   │   │   │   │   │   └── things to check
│   │   │   │   │   ├── defense bypass
│   │   │   │   │   │   ├── cookies
│   │   │   │   │   │   │   └── httponly cookies
│   │   │   │   │   │   ├── url obfuscation
│   │   │   │   │   │   └── web app firewall
│   │   │   │   │   │       └── parameter concatenation
│   │   │   │   │   ├── (de)serialize
│   │   │   │   │   │   ├── blackhat 17 slides
│   │   │   │   │   │   ├── java (de)serialize
│   │   │   │   │   │   │   ├── detection
│   │   │   │   │   │   │   ├── exploiting deserialization
│   │   │   │   │   │   │   ├── general primer
│   │   │   │   │   │   │   ├── java code to list objects from request
│   │   │   │   │   │   │   │   ├── code
│   │   │   │   │   │   │   │   └── usage
│   │   │   │   │   │   │   ├── mitigation
│   │   │   │   │   │   │   ├── outside port 80 and 443
│   │   │   │   │   │   │   └── payloads
│   │   │   │   │   │   ├── json (de)serialize
│   │   │   │   │   │   │   ├── general primer
│   │   │   │   │   │   │   └── nodejs iife
│   │   │   │   │   │   ├── kryo (de)serialize
│   │   │   │   │   │   │   ├── abusing cleanup utilities in finalize
│   │   │   │   │   │   │   ├── abusing static side effects in construct
│   │   │   │   │   │   │   └── general primer
│   │   │   │   │   │   ├── mitigations
│   │   │   │   │   │   ├── net (de)serialize
│   │   │   │   │   │   │   ├── general primer
│   │   │   │   │   │   │   └── known .net rce gadgets
│   │   │   │   │   │   ├── php (de)serialize
│   │   │   │   │   │   │   ├── detection - hunting
│   │   │   │   │   │   │   ├── exploitation
│   │   │   │   │   │   │   ├── general primer
│   │   │   │   │   │   │   └── mitigation
│   │   │   │   │   │   └── python (de)serialize
│   │   │   │   │   │       └── general primer
│   │   │   │   │   ├── dns
│   │   │   │   │   │   ├── dns hijacking mitigations
│   │   │   │   │   │   └── dns re-binding
│   │   │   │   │   │       ├── example attacks
│   │   │   │   │   │       ├── general primer
│   │   │   │   │   │       └── mitigations
│   │   │   │   │   ├── header attacks
│   │   │   │   │   │   ├── general prmer
│   │   │   │   │   │   └── host header attacks
│   │   │   │   │   │       ├── cache poisoning
│   │   │   │   │   │       ├── defense bypass
│   │   │   │   │   │       ├── mitigations
│   │   │   │   │   │       └── password reset poisoning
│   │   │   │   │   ├── ldap injection
│   │   │   │   │   │   └── general primer
│   │   │   │   │   ├── lfi-rfi - dir traversal
│   │   │   │   │   │   ├── bypass
│   │   │   │   │   │   │   └── file extension filtering
│   │   │   │   │   │   ├── directory traversal
│   │   │   │   │   │   ├── file locations - blind files
│   │   │   │   │   │   │   ├── linux
│   │   │   │   │   │   │   └── windows
│   │   │   │   │   │   ├── file poisoning - code exec
│   │   │   │   │   │   │   ├── access.log
│   │   │   │   │   │   │   ├── auth.log
│   │   │   │   │   │   │   ├── error.log
│   │   │   │   │   │   │   ├── phpinfo() + poc code
│   │   │   │   │   │   │   │   └── poc
│   │   │   │   │   │   │   ├── php temporary files 2
│   │   │   │   │   │   │   └── proc-self-environ
│   │   │   │   │   │   ├── general primer
│   │   │   │   │   │   ├── mitigate lfi
│   │   │   │   │   │   ├── note on using curl for testing
│   │   │   │   │   │   ├── sessions
│   │   │   │   │   │   └── testing for lfi
│   │   │   │   │   │       ├── extra tips-tricks
│   │   │   │   │   │       └── standard
│   │   │   │   │   ├── microservices
│   │   │   │   │   │   ├── fingerprinting
│   │   │   │   │   │   ├── general primer
│   │   │   │   │   │   └── weaknesses
│   │   │   │   │   ├── nosqli
│   │   │   │   │   │   ├── general primer
│   │   │   │   │   │   ├── how to test
│   │   │   │   │   │   └── nosqli payloads
│   │   │   │   │   ├── open redirect
│   │   │   │   │   │   ├── content bypass
│   │   │   │   │   │   ├── examples
│   │   │   │   │   │   │   └── open redirect in google accounts
│   │   │   │   │   │   ├── general primer
│   │   │   │   │   │   ├── impacts of open redirects
│   │   │   │   │   │   │   ├── browser exploit - malicious redirect
│   │   │   │   │   │   │   ├── credential stealing
│   │   │   │   │   │   │   ├── get-based csrf
│   │   │   │   │   │   │   ├── javascript execution
│   │   │   │   │   │   │   └── referrer data leakage - sensitive
│   │   │   │   │   │   ├── list of wontfix open redirect vulnerabil
│   │   │   │   │   │   ├── mitigation
│   │   │   │   │   │   └── things to try
│   │   │   │   │   ├── osint
│   │   │   │   │   ├── parameter polution
│   │   │   │   │   │   ├── general primer
│   │   │   │   │   │   └── http pp
│   │   │   │   │   │       ├── general primer
│   │   │   │   │   │       │   └── multiple occurance server enumeration
│   │   │   │   │   │       ├── mitigations
│   │   │   │   │   │       └── testing hpp
│   │   │   │   │   │           ├── client side hpp
│   │   │   │   │   │           ├── hpp examples
│   │   │   │   │   │           │   ├── hpp bug bounty
│   │   │   │   │   │           │   └── hpp example case
│   │   │   │   │   │           └── server side hpp
│   │   │   │   │   ├── rest
│   │   │   │   │   │   ├── attacking basic authentication
│   │   │   │   │   │   ├── csrf
│   │   │   │   │   │   ├── general primer
│   │   │   │   │   │   │   ├── http request tamper strings
│   │   │   │   │   │   │   ├── http rest return status codes
│   │   │   │   │   │   │   └── owasp rest cheatsheet
│   │   │   │   │   │   ├── java injection
│   │   │   │   │   │   ├── json serialization
│   │   │   │   │   │   ├── turning features into bugs
│   │   │   │   │   │   │   └── dynamicproxyconverter
│   │   │   │   │   │   ├── untrusted inputs
│   │   │   │   │   │   │   ├── http parameter polution
│   │   │   │   │   │   │   └── server-side request forgery
│   │   │   │   │   │   ├── wadl
│   │   │   │   │   │   └── xml related vulnerabilities
│   │   │   │   │   │       ├── xml injection
│   │   │   │   │   │       ├── xml serialization
│   │   │   │   │   │       ├── xslt injection
│   │   │   │   │   │       └── xxe marshalling or unmarshalling
│   │   │   │   │   ├── sqli
│   │   │   │   │   │   ├── cheatsheet 2
│   │   │   │   │   │   ├── db2
│   │   │   │   │   │   │   ├── db2 cheatsheet
│   │   │   │   │   │   │   ├── general info
│   │   │   │   │   │   │   └── queries
│   │   │   │   │   │   ├── general primer
│   │   │   │   │   │   │   ├── blind
│   │   │   │   │   │   │   ├── boolean-based
│   │   │   │   │   │   │   ├── error-based
│   │   │   │   │   │   │   ├── out-of-band
│   │   │   │   │   │   │   ├── sqlinjection.net
│   │   │   │   │   │   │   │   ├── advanced
│   │   │   │   │   │   │   │   │   ├── defense
│   │   │   │   │   │   │   │   │   │   ├── secure pl-sql
│   │   │   │   │   │   │   │   │   │   └── secure stored procedure
│   │   │   │   │   │   │   │   │   ├── mysql_real_escape_string sqli
│   │   │   │   │   │   │   │   │   ├── simulation environment
│   │   │   │   │   │   │   │   │   ├── stored procedures
│   │   │   │   │   │   │   │   │   │   ├── attacks
│   │   │   │   │   │   │   │   │   │   └── pl-sql attacks
│   │   │   │   │   │   │   │   │   ├── system tables for sqli
│   │   │   │   │   │   │   │   │   ├── tools
│   │   │   │   │   │   │   │   │   │   ├── sqlmap overview
│   │   │   │   │   │   │   │   │   │   └── sqlmap tutorial
│   │   │   │   │   │   │   │   │   └── uncategorized
│   │   │   │   │   │   │   │   │       ├── implicit numeric conversion
│   │   │   │   │   │   │   │   │       └── minimal select structure
│   │   │   │   │   │   │   │   ├── attacks
│   │   │   │   │   │   │   │   │   ├── basics
│   │   │   │   │   │   │   │   │   │   ├── numeric parameters
│   │   │   │   │   │   │   │   │   │   └── string parameters
│   │   │   │   │   │   │   │   │   ├── blind
│   │   │   │   │   │   │   │   │   │   ├── estimate table size
│   │   │   │   │   │   │   │   │   │   ├── time-based sqli
│   │   │   │   │   │   │   │   │   │   └── time-based using heavy query
│   │   │   │   │   │   │   │   │   ├── extract information
│   │   │   │   │   │   │   │   │   │   ├── db fingerprinting
│   │   │   │   │   │   │   │   │   │   ├── find column names
│   │   │   │   │   │   │   │   │   │   └── find table names
│   │   │   │   │   │   │   │   │   ├── techniques
│   │   │   │   │   │   │   │   │   │   ├── comments to simplify
│   │   │   │   │   │   │   │   │   │   ├── inference
│   │   │   │   │   │   │   │   │   │   ├── login bypass
│   │   │   │   │   │   │   │   │   │   ├── stacked queries
│   │   │   │   │   │   │   │   │   │   └── union
│   │   │   │   │   │   │   │   │   └── test
│   │   │   │   │   │   │   │   │       ├── anomalies
│   │   │   │   │   │   │   │   │       │   ├── detect from http errors
│   │   │   │   │   │   │   │   │       │   ├── info from custom errors
│   │   │   │   │   │   │   │   │       │   ├── server resp and page source
│   │   │   │   │   │   │   │   │       │   └── sqli and db errors
│   │   │   │   │   │   │   │   │       ├── determining query structure
│   │   │   │   │   │   │   │   │       ├── identify data entries
│   │   │   │   │   │   │   │   │       └── sqli detection
│   │   │   │   │   │   │   │   ├── risks of sqli
│   │   │   │   │   │   │   │   └── what is sqli
│   │   │   │   │   │   │   └── time-based
│   │   │   │   │   │   ├── informix
│   │   │   │   │   │   │   ├── general info
│   │   │   │   │   │   │   └── queries
│   │   │   │   │   │   ├── ingres
│   │   │   │   │   │   │   ├── general info
│   │   │   │   │   │   │   └── queries
│   │   │   │   │   │   ├── mitigation
│   │   │   │   │   │   ├── ms access
│   │   │   │   │   │   │   ├── basic testing
│   │   │   │   │   │   │   ├── blind testing
│   │   │   │   │   │   │   │   └── more specific
│   │   │   │   │   │   │   ├── enum attributes
│   │   │   │   │   │   │   ├── obtaining database schema
│   │   │   │   │   │   │   ├── queries
│   │   │   │   │   │   │   └── scripts
│   │   │   │   │   │   ├── mssql
│   │   │   │   │   │   │   ├── cheatsheets to combine
│   │   │   │   │   │   │   │   ├── evilsql cheatsheets
│   │   │   │   │   │   │   │   │   ├── blind
│   │   │   │   │   │   │   │   │   ├── error
│   │   │   │   │   │   │   │   │   └── union
│   │   │   │   │   │   │   │   └── exploit-db paper
│   │   │   │   │   │   │   ├── evading filtering
│   │   │   │   │   │   │   │   └── get tricky
│   │   │   │   │   │   │   ├── general info
│   │   │   │   │   │   │   │   ├── xp_cmdshell
│   │   │   │   │   │   │   │   └── xp_dirtree
│   │   │   │   │   │   │   ├── password hashes
│   │   │   │   │   │   │   ├── queries
│   │   │   │   │   │   │   ├── specific attacks
│   │   │   │   │   │   │   ├── tips - tricks
│   │   │   │   │   │   │   └── xd-blog tutorial
│   │   │   │   │   │   ├── mysql
│   │   │   │   │   │   │   ├── cheat sheets to combine
│   │   │   │   │   │   │   │   └── justin
│   │   │   │   │   │   │   ├── evading filtering
│   │   │   │   │   │   │   │   ├── filter evasion cheat sheet
│   │   │   │   │   │   │   │   └── get tricky
│   │   │   │   │   │   │   ├── general info
│   │   │   │   │   │   │   ├── local priv esc running as root
│   │   │   │   │   │   │   │   ├── alternative to raptor
│   │   │   │   │   │   │   │   ├── raptor_non-interactive
│   │   │   │   │   │   │   │   └── raptor_udf2.c
│   │   │   │   │   │   │   ├── potential methodology
│   │   │   │   │   │   │   ├── queries
│   │   │   │   │   │   │   │   ├── mysql_error() function
│   │   │   │   │   │   │   │   ├── privileges
│   │   │   │   │   │   │   │   ├── read file
│   │   │   │   │   │   │   │   ├── specifics
│   │   │   │   │   │   │   │   └── write file
│   │   │   │   │   │   │   └── truncating vulnerability
│   │   │   │   │   │   ├── oracle
│   │   │   │   │   │   │   ├── general info
│   │   │   │   │   │   │   │   └── passwords
│   │   │   │   │   │   │   ├── queries
│   │   │   │   │   │   │   └── specific attacks
│   │   │   │   │   │   ├── phpmyadmin
│   │   │   │   │   │   │   └── passwords in config-db
│   │   │   │   │   │   ├── postresql
│   │   │   │   │   │   │   ├── general info
│   │   │   │   │   │   │   └── queries
│   │   │   │   │   │   └── testing
│   │   │   │   │   │       ├── general attacks
│   │   │   │   │   │       ├── general testing techniques
│   │   │   │   │   │       ├── methodology
│   │   │   │   │   │       ├── tips - tricks
│   │   │   │   │   │       └── top reminders
│   │   │   │   │   ├── ssrf
│   │   │   │   │   │   ├── examples
│   │   │   │   │   │   ├── general primer
│   │   │   │   │   │   ├── mitigations
│   │   │   │   │   │   └── testing ssrf
│   │   │   │   │   ├── ssti
│   │   │   │   │   │   ├── general primer
│   │   │   │   │   │   └── testing for ssti
│   │   │   │   │   ├── timing attacks
│   │   │   │   │   │   └── general primer
│   │   │   │   │   ├── upload
│   │   │   │   │   │   ├── bypasses
│   │   │   │   │   │   ├── exentions to try appending
│   │   │   │   │   │   ├── general primer
│   │   │   │   │   │   ├── google dork for potentials
│   │   │   │   │   │   ├── malicious .htaccess
│   │   │   │   │   │   ├── mitigation
│   │   │   │   │   │   └── other attacks in combination
│   │   │   │   │   ├── xss
│   │   │   │   │   │   ├── bypass
│   │   │   │   │   │   │   └── top reminders
│   │   │   │   │   │   ├── general primer
│   │   │   │   │   │   │   ├── dom
│   │   │   │   │   │   │   ├── reflected
│   │   │   │   │   │   │   └── stored
│   │   │   │   │   │   ├── mitigation
│   │   │   │   │   │   │   ├── dom owasp rules
│   │   │   │   │   │   │   │   ├── common mitigation problems
│   │   │   │   │   │   │   │   └── guidelines for development
│   │   │   │   │   │   │   └── stored reflected owasp rules
│   │   │   │   │   │   ├── potential impact
│   │   │   │   │   │   │   ├── abusing password management
│   │   │   │   │   │   │   ├── complex scripts
│   │   │   │   │   │   │   ├── content exfiltration
│   │   │   │   │   │   │   │   ├── base tag hijack
│   │   │   │   │   │   │   │   ├── form rerouting
│   │   │   │   │   │   │   │   ├── intercept browser-managed passwords
│   │   │   │   │   │   │   │   ├── limits of defenses
│   │   │   │   │   │   │   │   ├── markup injection
│   │   │   │   │   │   │   │   └── textarea consumption
│   │   │   │   │   │   │   └── infiltration of application logic
│   │   │   │   │   │   │       ├── abuse of special privileges
│   │   │   │   │   │   │       ├── form parameter injection
│   │   │   │   │   │   │       ├── interference with existing scripts
│   │   │   │   │   │   │       │   ├── abuse of jsonp
│   │   │   │   │   │   │       │   ├── html namespace attacks
│   │   │   │   │   │   │       │   ├── script load order issues
│   │   │   │   │   │   │       │   ├── script namespace attacks
│   │   │   │   │   │   │       │   └── selective removal of scripts
│   │   │   │   │   │   │       └── ui-level attacks
│   │   │   │   │   │   ├── references
│   │   │   │   │   │   │   ├── agnostic event handlers
│   │   │   │   │   │   │   │   ├── 105 event handlers with descriptions
│   │   │   │   │   │   │   │   └── 200 event handlers without descriptions
│   │   │   │   │   │   │   ├── attack strings
│   │   │   │   │   │   │   ├── context breaking
│   │   │   │   │   │   │   ├── cookie catcher scripts
│   │   │   │   │   │   │   │   ├── ippsec double request httponly cookies
│   │   │   │   │   │   │   │   ├── other strings
│   │   │   │   │   │   │   │   └── php emailer
│   │   │   │   │   │   │   ├── js file types for variable assignment
│   │   │   │   │   │   │   ├── regex matches
│   │   │   │   │   │   │   ├── useful html tags
│   │   │   │   │   │   │   └── useful js functions 2
│   │   │   │   │   │   ├── testing for domxss
│   │   │   │   │   │   │   ├── dom xss
│   │   │   │   │   │   │   │   ├── sinks
│   │   │   │   │   │   │   │   └── sources
│   │   │   │   │   │   │   └── general primer
│   │   │   │   │   │   ├── testing for xss
│   │   │   │   │   │   │   ├── cross-origin
│   │   │   │   │   │   │   │   └── open redirects
│   │   │   │   │   │   │   ├── css xss
│   │   │   │   │   │   │   ├── filename upload abuse
│   │   │   │   │   │   │   ├── flash
│   │   │   │   │   │   │   ├── general methodology
│   │   │   │   │   │   │   ├── header abuse
│   │   │   │   │   │   │   └── same origin + clickjacking
│   │   │   │   │   │   ├── top vectors
│   │   │   │   │   │   └── tricks
│   │   │   │   │   ├── xssi
│   │   │   │   │   │   ├── categories of xssi
│   │   │   │   │   │   └── general primer
│   │   │   │   │   └── xxe
│   │   │   │   │       ├── beyond system files
│   │   │   │   │       ├── bypass defenses
│   │   │   │   │       │   ├── firewall with local dtd
│   │   │   │   │       │   └── xml bom
│   │   │   │   │       ├── entities
│   │   │   │   │       ├── examples - payloads
│   │   │   │   │       ├── general primer
│   │   │   │   │       ├── mitigation
│   │   │   │   │       └── testing for xxe
│   │   │   │   └── wireless
│   │   │   │       ├── evil twin
│   │   │   │       │   ├── general primer
│   │   │   │       │   └── the evil twin
│   │   │   │       ├── icmptx
│   │   │   │       │   ├── general primer
│   │   │   │       │   └── icmptx use
│   │   │   │       ├── password recovery
│   │   │   │       ├── scanning for wifi
│   │   │   │       ├── wep
│   │   │   │       │   ├── aircrack
│   │   │   │       │   └── general primer
│   │   │   │       ├── wireless
│   │   │   │       ├── wpa2
│   │   │   │       │   ├── aircrack
│   │   │   │       │   ├── cowpatty
│   │   │   │       │   └── pmkid with bettercap
│   │   │   │       └── wps
│   │   │   │           ├── bully
│   │   │   │           ├── general primer
│   │   │   │           ├── reaver
│   │   │   │           └── wpscrack.py
│   │   │   ├── bookmark repos
│   │   │   ├── cheet sheets and syntax
│   │   │   │   ├── character sets
│   │   │   │   │   ├── ascii
│   │   │   │   │   ├── javascript special chars
│   │   │   │   │   └── xml and html entities
│   │   │   │   ├── cheet sheet compilations
│   │   │   │   ├── database
│   │   │   │   │   ├── mongo cheat sheet
│   │   │   │   │   └── sql,mysql,ora
│   │   │   │   ├── extensions - files - permissions
│   │   │   │   │   └── magic bytes file types
│   │   │   │   ├── field manuals
│   │   │   │   │   └── ecppt
│   │   │   │   ├── general knowledge
│   │   │   │   │   ├── access control
│   │   │   │   │   └── authentication best practices
│   │   │   │   │       ├── authentication with no password
│   │   │   │   │       └── passwords
│   │   │   │   ├── local enumeration
│   │   │   │   │   ├── remote protocols rpc
│   │   │   │   │   └── windows
│   │   │   │   │       ├── common env variables
│   │   │   │   │       ├── registry cheet sheet
│   │   │   │   │       │   ├── auth related
│   │   │   │   │       │   ├── autorun - persistence
│   │   │   │   │       │   │   ├── run and runonce
│   │   │   │   │       │   │   └── winlogon and userinit
│   │   │   │   │       │   ├── click once
│   │   │   │   │       │   ├── crash related
│   │   │   │   │       │   ├── dll related
│   │   │   │   │       │   │   ├── cwdillegalindllsearch
│   │   │   │   │       │   │   ├── knowndlls
│   │   │   │   │       │   │   ├── safedllsearchmode
│   │   │   │   │       │   │   └── setdlldirectory
│   │   │   │   │       │   ├── hkcr primer
│   │   │   │   │       │   │   └── general primer
│   │   │   │   │       │   ├── hklm and hkcu primer
│   │   │   │   │       │   │   └── general primer
│   │   │   │   │       │   ├── password related
│   │   │   │   │       │   ├── security settings
│   │   │   │   │       │   ├── sethc and utilman
│   │   │   │   │       │   ├── system information
│   │   │   │   │       │   └── uac
│   │   │   │   │       ├── sids
│   │   │   │   │       ├── windows event log ids
│   │   │   │   │       └── windows version identifiers
│   │   │   │   │           ├── desktop
│   │   │   │   │           ├── other files
│   │   │   │   │           ├── server
│   │   │   │   │           ├── via iis
│   │   │   │   │           └── via smb
│   │   │   │   ├── network enumeration
│   │   │   │   │   ├── ipv6 cheat sheet
│   │   │   │   │   ├── nmap and nc port scanning
│   │   │   │   │   └── ports - protocol list
│   │   │   │   ├── os and scripts
│   │   │   │   ├── owasp attack surface analysis
│   │   │   │   │   ├── define
│   │   │   │   │   ├── identify and map
│   │   │   │   │   ├── manage
│   │   │   │   │   └── measure and assess
│   │   │   │   ├── post exploitation
│   │   │   │   │   ├── aix - others
│   │   │   │   │   ├── linux
│   │   │   │   │   │   ├── persistence
│   │   │   │   │   │   │   └── reverse shells
│   │   │   │   │   │   ├── pivot
│   │   │   │   │   │   └── presence
│   │   │   │   │   │       ├── blind files
│   │   │   │   │   │       ├── configs
│   │   │   │   │   │       ├── credentials
│   │   │   │   │   │       ├── deleting logs
│   │   │   │   │   │       ├── determine distro
│   │   │   │   │   │       ├── finding important files
│   │   │   │   │   │       ├── installed packages
│   │   │   │   │   │       ├── networking
│   │   │   │   │   │       ├── package sources
│   │   │   │   │   │       ├── system
│   │   │   │   │   │       ├── user accounts
│   │   │   │   │   │       └── users information
│   │   │   │   │   ├── metasploit
│   │   │   │   │   │   ├── information gathering
│   │   │   │   │   │   ├── java meterpreter
│   │   │   │   │   │   │   └── available payloads
│   │   │   │   │   │   ├── linux meterpreter
│   │   │   │   │   │   │   └── available payloads
│   │   │   │   │   │   ├── meterpreter scripts
│   │   │   │   │   │   ├── php meterpreter on linux
│   │   │   │   │   │   │   └── available payloads
│   │   │   │   │   │   ├── php meterpreter on windows
│   │   │   │   │   │   │   └── available payloads
│   │   │   │   │   │   ├── post modules
│   │   │   │   │   │   └── windows meterpreter
│   │   │   │   │   │       └── available payloads
│   │   │   │   │   ├── os x
│   │   │   │   │   │   ├── persistence
│   │   │   │   │   │   │   └── add user
│   │   │   │   │   │   ├── pivot
│   │   │   │   │   │   └── presence
│   │   │   │   │   │       ├── blind files
│   │   │   │   │   │       ├── configs
│   │   │   │   │   │       ├── deleting logs
│   │   │   │   │   │       ├── files  to pull
│   │   │   │   │   │       ├── finding important files
│   │   │   │   │   │       ├── networking
│   │   │   │   │   │       ├── packages
│   │   │   │   │   │       ├── remote access
│   │   │   │   │   │       └── system
│   │   │   │   │   ├── passwords
│   │   │   │   │   ├── persistence
│   │   │   │   │   ├── pivot
│   │   │   │   │   └── windows
│   │   │   │   │       ├── persistance
│   │   │   │   │       │   ├── binary planting
│   │   │   │   │       │   │   ├── mof
│   │   │   │   │       │   │   ├── msiexec
│   │   │   │   │       │   │   └── writable path
│   │   │   │   │       │   ├── deleting logs
│   │   │   │   │       │   ├── invasive
│   │   │   │   │       │   ├── others
│   │   │   │   │       │   ├── registry
│   │   │   │   │       │   ├── uninstall software
│   │   │   │   │       │   ├── vista-7
│   │   │   │   │       │   ├── windows feature management
│   │   │   │   │       │   └── wmi
│   │   │   │   │       ├── pivot
│   │   │   │   │       └── presence
│   │   │   │   │           ├── auto-start directories
│   │   │   │   │           ├── blind files
│   │   │   │   │           ├── configs
│   │   │   │   │           ├── files to pull
│   │   │   │   │           ├── finding important files
│   │   │   │   │           ├── networking
│   │   │   │   │           ├── remote system access
│   │   │   │   │           └── system
│   │   │   │   ├── priv escalation
│   │   │   │   │   ├── linux
│   │   │   │   │   │   └── gtfobins
│   │   │   │   │   └── windows
│   │   │   │   ├── regex
│   │   │   │   ├── tools
│   │   │   │   │   ├── debuggers
│   │   │   │   │   │   ├── gdb
│   │   │   │   │   │   │   └── peda
│   │   │   │   │   │   ├── immunity
│   │   │   │   │   │   │   └── mona
│   │   │   │   │   │   ├── radare2
│   │   │   │   │   │   │   └── ippsec tldr
│   │   │   │   │   │   └── windbg
│   │   │   │   │   ├── msfconsole
│   │   │   │   │   ├── ncat
│   │   │   │   │   │   └── port scan
│   │   │   │   │   ├── networking related
│   │   │   │   │   │   ├── iptables
│   │   │   │   │   │   ├── scapy
│   │   │   │   │   │   │   ├── defaults
│   │   │   │   │   │   │   └── examples
│   │   │   │   │   │   └── tcpdump
│   │   │   │   │   ├── recon
│   │   │   │   │   │   ├── netbios
│   │   │   │   │   │   │   ├── nbtscan
│   │   │   │   │   │   │   │   └── compile
│   │   │   │   │   │   │   ├── nbtstat
│   │   │   │   │   │   │   └── nmblookup
│   │   │   │   │   │   └── nmap
│   │   │   │   │   │       └── ttl fingerprint
│   │   │   │   │   └── tmux
│   │   │   │   │       ├── special conf
│   │   │   │   │       ├── special conf bindings
│   │   │   │   │       └── tmux_scripts
│   │   │   │   └── web
│   │   │   │       ├── lfi-rfi
│   │   │   │       ├── technologies
│   │   │   │       │   ├── ajax
│   │   │   │       │   └── java
│   │   │   │       │       └── bean validation
│   │   │   │       │           ├── additional constraints
│   │   │   │       │           ├── cascading constraints
│   │   │   │       │           ├── combining constraints
│   │   │   │       │           └── setup
│   │   │   │       │               ├── digits
│   │   │   │       │               ├── past and future
│   │   │   │       │               ├── pattern
│   │   │   │       │               └── size
│   │   │   │       └── xss
│   │   │   ├── cryptography
│   │   │   │   ├── block ciphers
│   │   │   │   │   ├── general primer
│   │   │   │   │   ├── modes of operation
│   │   │   │   │   │   ├── cbc mode
│   │   │   │   │   │   ├── ctr mode
│   │   │   │   │   │   └── ecb mode
│   │   │   │   │   └── security of block ciphers
│   │   │   │   │       ├── cryptanalysis
│   │   │   │   │       ├── padding
│   │   │   │   │       ├── practical evaluation
│   │   │   │   │       └── provable security
│   │   │   │   ├── identifying in-use ciphers or hashing
│   │   │   │   └── stream ciphers
│   │   │   │       ├── general primer
│   │   │   │       │   └── comparison of stream ciphers
│   │   │   │       └── security of stream ciphers
│   │   │   ├── exploitation development
│   │   │   │   ├── av evasion
│   │   │   │   │   └── typical evasions
│   │   │   │   │       ├── common techniques
│   │   │   │   │       ├── decrypt shellcode
│   │   │   │   │       ├── dynamic analysis detection
│   │   │   │   │       └── execute shellcode
│   │   │   │   ├── backdooring
│   │   │   │   │   └── backdoor executables primer
│   │   │   │   │       ├── conclusion
│   │   │   │   │       ├── finding space
│   │   │   │   │       ├── hijack execution flow
│   │   │   │   │       ├── inject backdoor code
│   │   │   │   │       ├── restore execution flow
│   │   │   │   │       └── tools
│   │   │   │   ├── compiling
│   │   │   │   │   ├── compile elf in linux
│   │   │   │   │   │   ├── compiling 32bit in linux
│   │   │   │   │   │   ├── compiling 64bit in linux
│   │   │   │   │   │   ├── compiling for older kernels with newer g
│   │   │   │   │   │   └── other gcc flags
│   │   │   │   │   ├── compile exe in linux
│   │   │   │   │   │   ├── issues with mingw
│   │   │   │   │   │   ├── windows 32bit in linux with mingw
│   │   │   │   │   │   │   └── code for windows useradd.c
│   │   │   │   │   │   └── windows 64bit in linux with mingw
│   │   │   │   │   ├── compile exe in windows
│   │   │   │   │   │   └── with nmake and makefile
│   │   │   │   │   ├── compile python code for anything
│   │   │   │   │   │   └── py2exe
│   │   │   │   │   ├── general primer
│   │   │   │   │   └── powershell to war
│   │   │   │   ├── debuggers - tools
│   │   │   │   │   ├── edb - evans debugger
│   │   │   │   │   │   └── general primer
│   │   │   │   │   ├── gdb
│   │   │   │   │   │   ├── addons - enhancements
│   │   │   │   │   │   ├── child processes
│   │   │   │   │   │   ├── finding jmp
│   │   │   │   │   │   ├── general primer
│   │   │   │   │   │   ├── peda
│   │   │   │   │   │   ├── printing
│   │   │   │   │   │   ├── working  with registers
│   │   │   │   │   │   └── x64 vs x32
│   │   │   │   │   ├── ghidra
│   │   │   │   │   │   └── general primer
│   │   │   │   │   ├── immunity debugger
│   │   │   │   │   │   ├── mona.py
│   │   │   │   │   │   │   ├── finding jmp
│   │   │   │   │   │   │   └── hunting bad characters
│   │   │   │   │   │   │       └── mona badchars.txt
│   │   │   │   │   │   └── seh related
│   │   │   │   │   ├── msf tools
│   │   │   │   │   ├── ollydbg
│   │   │   │   │   │   └── seh related
│   │   │   │   │   ├── pdb - python debugger
│   │   │   │   │   ├── python
│   │   │   │   │   │   ├── pwn tools
│   │   │   │   │   │   └── struct
│   │   │   │   │   └── strace
│   │   │   │   ├── defense settings
│   │   │   │   │   ├── aslr
│   │   │   │   │   │   ├── bypass with bruteforce
│   │   │   │   │   │   └── bypass with rop
│   │   │   │   │   │       └── plt and got
│   │   │   │   │   ├── canary
│   │   │   │   │   │   └── bypassing with env
│   │   │   │   │   ├── checksec
│   │   │   │   │   ├── dep
│   │   │   │   │   ├── nx
│   │   │   │   │   │   └── bypass with rop
│   │   │   │   │   ├── pie
│   │   │   │   │   ├── relro
│   │   │   │   │   └── stack smash
│   │   │   │   ├── exploit development-references
│   │   │   │   │   ├── assembly
│   │   │   │   │   ├── buffer overflow
│   │   │   │   │   │   ├── corelan
│   │   │   │   │   │   │   ├── part 1 stack-based-overflows
│   │   │   │   │   │   │   │   ├── background
│   │   │   │   │   │   │   │   ├── determining buffer size to write eip
│   │   │   │   │   │   │   │   ├── find memory space to host shellcode
│   │   │   │   │   │   │   │   ├── jump to shellcode reliably
│   │   │   │   │   │   │   │   ├── process memory
│   │   │   │   │   │   │   │   ├── shellcode and finalize
│   │   │   │   │   │   │   │   ├── the debugger
│   │   │   │   │   │   │   │   ├── theory
│   │   │   │   │   │   │   │   └── the stack
│   │   │   │   │   │   │   ├── part 2 stack-based-overflows jumping to
│   │   │   │   │   │   │   │   ├── backwards jumps
│   │   │   │   │   │   │   │   ├── blind ret
│   │   │   │   │   │   │   │   ├── call reg 2
│   │   │   │   │   │   │   │   ├── hardcoded jumps
│   │   │   │   │   │   │   │   ├── jmp reg offset
│   │   │   │   │   │   │   │   ├── popad
│   │   │   │   │   │   │   │   ├── pop ret 2
│   │   │   │   │   │   │   │   ├── push ret
│   │   │   │   │   │   │   │   ├── short and conditional jumps
│   │   │   │   │   │   │   │   └── small buffers and custom jumpcode
│   │   │   │   │   │   │   └── part 3 seh-based-exploits
│   │   │   │   │   │   │       ├── how to use seh to jmp
│   │   │   │   │   │   │       ├── impacts of protection mechanisms
│   │   │   │   │   │   │       ├── seh in action ollydbg
│   │   │   │   │   │   │       ├── seh in action windbg
│   │   │   │   │   │   │       └── what are exception handlers
│   │   │   │   │   │   ├── finding badchars
│   │   │   │   │   │   ├── ippsec
│   │   │   │   │   │   │   └── ret2libc
│   │   │   │   │   │   │       ├── bruteforce aslr locally
│   │   │   │   │   │   │       │   └── build exploit template
│   │   │   │   │   │   │       ├── general primer
│   │   │   │   │   │   │       └── ret2libc without aslr
│   │   │   │   │   │   ├── technical references
│   │   │   │   │   │   │   ├── opcodes
│   │   │   │   │   │   │   ├── popular jump techniques
│   │   │   │   │   │   │   ├── putting input into programs
│   │   │   │   │   │   │   │   └── standard input
│   │   │   │   │   │   │   ├── registers
│   │   │   │   │   │   │   └── ret2libc
│   │   │   │   │   │   └── tldr
│   │   │   │   │   │       ├── compiling for practice
│   │   │   │   │   │       ├── local aslr retlibc brute
│   │   │   │   │   │       ├── no protections
│   │   │   │   │   │       └── templates
│   │   │   │   │   │           ├── aslr_brute_local_ret2libc_template.py
│   │   │   │   │   │           └── sockets
│   │   │   │   │   │               ├── bo_pwntool_socket_reuse_jmp_direct_templ
│   │   │   │   │   │               ├── bo_pwntool_socket_reuse_ret2libc_templat
│   │   │   │   │   │               └── python socket overflow template
│   │   │   │   │   ├── egghunter
│   │   │   │   │   │   └── env egg address finder
│   │   │   │   │   ├── heap exploit
│   │   │   │   │   └── improving exploits
│   │   │   │   │       ├── general primer
│   │   │   │   │       └── msf exit functions
│   │   │   │   ├── fuzzing - tools
│   │   │   │   ├── intro
│   │   │   │   ├── re-use after free - heap
│   │   │   │   ├── reverse engineering and malware
│   │   │   │   │   ├── decompiling tools
│   │   │   │   │   ├── general primer
│   │   │   │   │   └── java
│   │   │   │   ├── unsorted
│   │   │   │   │   └── unsorted commands
│   │   │   │   ├── windows api calls - etc
│   │   │   │   │   └── create process
│   │   │   │   └── windows shellcode
│   │   │   │       ├── msfconsole
│   │   │   │       ├── msfvenom
│   │   │   │       └── online sources
│   │   │   ├── exploits and advisories
│   │   │   │   ├── exploits and advisories
│   │   │   │   ├── linux references
│   │   │   │   │   ├── drupal
│   │   │   │   │   └── kernel
│   │   │   │   │       └── websites
│   │   │   │   └── windows references
│   │   │   │       ├── local
│   │   │   │       │   ├── add admin poc
│   │   │   │       │   └── reference chart 1
│   │   │   │       ├── pre-compiled
│   │   │   │       └── remote
│   │   │   │           ├── kerberos
│   │   │   │           └── smb
│   │   │   │               ├── fuzzbunch debian recommended
│   │   │   │               │   ├── example usage
│   │   │   │               │   └── setup commands
│   │   │   │               └── fuzzbunch python
│   │   │   │                   └── setup
│   │   │   ├── file transfer - exfiltration
│   │   │   │   ├── detecting file transfers - exfil activit
│   │   │   │   ├── egress checks
│   │   │   │   │   ├── general primer
│   │   │   │   │   ├── quick bash
│   │   │   │   │   ├── quick dns
│   │   │   │   │   ├── quick nc
│   │   │   │   │   ├── quick nmap
│   │   │   │   │   ├── quick powershell
│   │   │   │   │   └── quick python
│   │   │   │   ├── file transfer
│   │   │   │   ├── general
│   │   │   │   │   ├── bsides 2016 top 12
│   │   │   │   │   ├── cloud services
│   │   │   │   │   ├── copy paste
│   │   │   │   │   ├── covert tcp-ip
│   │   │   │   │   │   ├── application layer
│   │   │   │   │   │   │   ├── dns
│   │   │   │   │   │   │   │   └── dns example using nslookup
│   │   │   │   │   │   │   ├── ftp
│   │   │   │   │   │   │   ├── http
│   │   │   │   │   │   │   ├── rtp - rtcp
│   │   │   │   │   │   │   ├── sip - sdp
│   │   │   │   │   │   │   └── ssh
│   │   │   │   │   │   ├── internet layer
│   │   │   │   │   │   │   ├── arp
│   │   │   │   │   │   │   ├── dhcp
│   │   │   │   │   │   │   ├── icmp
│   │   │   │   │   │   │   │   └── icmp example using param p
│   │   │   │   │   │   │   ├── igmp
│   │   │   │   │   │   │   ├── ip fragmentation
│   │   │   │   │   │   │   └── timing channels
│   │   │   │   │   │   └── tcp layer
│   │   │   │   │   │       ├── tcp
│   │   │   │   │   │       └── udp
│   │   │   │   │   └── email
│   │   │   │   ├── linux
│   │   │   │   │   ├── bash
│   │   │   │   │   ├── curl
│   │   │   │   │   ├── fetch
│   │   │   │   │   ├── ftp
│   │   │   │   │   │   ├── pure-ftpd
│   │   │   │   │   │   └── python ftp
│   │   │   │   │   │       └── alt python ftp
│   │   │   │   │   ├── netcat
│   │   │   │   │   ├── openssl
│   │   │   │   │   ├── perl
│   │   │   │   │   ├── php
│   │   │   │   │   ├── rsync
│   │   │   │   │   ├── ruby
│   │   │   │   │   ├── scp
│   │   │   │   │   ├── set up web server
│   │   │   │   │   │   ├── nginx
│   │   │   │   │   │   ├── php
│   │   │   │   │   │   ├── python
│   │   │   │   │   │   └── ruby
│   │   │   │   │   ├── socat
│   │   │   │   │   ├── telnet
│   │   │   │   │   ├── tftp
│   │   │   │   │   │   └── set up tftp server
│   │   │   │   │   └── wget
│   │   │   │   └── windows
│   │   │   │       ├── bits
│   │   │   │       ├── certutil
│   │   │   │       ├── csc.exe
│   │   │   │       │   └── general primer
│   │   │   │       ├── exe2multi
│   │   │   │       │   ├── exe2bat debug.exe
│   │   │   │       │   ├── exe2bat python
│   │   │   │       │   ├── exe2hex cmd-ps-debug
│   │   │   │       │   │   ├── methods - support
│   │   │   │       │   │   ├── telnet
│   │   │   │       │   │   └── winexe
│   │   │   │       │   └── exe2txt powershell
│   │   │   │       │       ├── exe2powershell
│   │   │   │       │       └── nishang
│   │   │   │       ├── fsquirt
│   │   │   │       ├── ftp
│   │   │   │       ├── notepad
│   │   │   │       ├── powershell
│   │   │   │       │   ├── base64 encoded requests
│   │   │   │       │   ├── dont use ps1 extension
│   │   │   │       │   ├── iex from documents
│   │   │   │       │   ├── iex web request
│   │   │   │       │   ├── invoke-webrequest
│   │   │   │       │   ├── system.net.webclient one-liner
│   │   │   │       │   └── wget.ps1
│   │   │   │       ├── putty and equivs
│   │   │   │       ├── python
│   │   │   │       │   ├── python unzip
│   │   │   │       │   ├── python web get and exec
│   │   │   │       │   └── python wget
│   │   │   │       │       └── alt
│   │   │   │       ├── self extracting zip
│   │   │   │       │   ├── create in linux
│   │   │   │       │   └── create in win
│   │   │   │       ├── smbserver
│   │   │   │       ├── stream
│   │   │   │       ├── tftp
│   │   │   │       └── vbscript
│   │   │   │           ├── unzip vbscript
│   │   │   │           │   └── alt unzip bat
│   │   │   │           └── wget vbscript
│   │   │   │               ├── alt script
│   │   │   │               └── script
│   │   │   ├── labs - ctf - practice
│   │   │   │   ├── ctf
│   │   │   │   │   └── write-up - walkthrough resources
│   │   │   │   ├── isos and online apps-labs
│   │   │   │   │   ├── oscp-like htb
│   │   │   │   │   └── oscp-like vms
│   │   │   │   ├── old-vulnerable software repos
│   │   │   │   ├── oscp labs lessons learned
│   │   │   │   ├── tips - tricks - ctf
│   │   │   │   │   └── web post requests
│   │   │   │   ├── typically ctf specific challenges
│   │   │   │   │   ├── audio hiding stegonography
│   │   │   │   │   ├── brainfuck
│   │   │   │   │   ├── empty .git repository recover
│   │   │   │   │   ├── image hiding stegonography
│   │   │   │   │   ├── image pixel alpha values
│   │   │   │   │   └── port knocking
│   │   │   │   └── writeup lessons learned
│   │   │   │       ├── hackthebox
│   │   │   │       │   ├── access - db pwd zip mailbox savecred app
│   │   │   │       │   ├── active - dns smb ad bloodhound kerberoas
│   │   │   │       │   ├── apocalyst - cewl brute wp stego
│   │   │   │       │   ├── aragog - xxe php filters wp keylog
│   │   │   │       │   │   └── xxe_file_retrieval.py
│   │   │   │       │   ├── arctic - coldfusion
│   │   │   │       │   ├── ariekei - net-ssh pivoting imagetragick
│   │   │   │       │   ├── bank - dns writing passwd
│   │   │   │       │   ├── bashed - php source python shell
│   │   │   │       │   ├── bastard - drupal phpshell winpriv
│   │   │   │       │   ├── beep - sip poison lfi cgi shellshock
│   │   │   │       │   ├── blocky - rabbit holes php password_hash
│   │   │   │       │   ├── blue - eblue smb
│   │   │   │       │   ├── bounty - asp config rce file upload merl
│   │   │   │       │   │   ├── web.config as asp
│   │   │   │       │   │   ├── web.config other tricks
│   │   │   │       │   │   └── web.config removing hidden segment prote
│   │   │   │       │   ├── brainfuck - minor crypto
│   │   │   │       │   ├── calamity - bp ps blacklist audio stego m
│   │   │   │       │   ├── canape - extensive recon git pickle couc
│   │   │   │       │   │   └── exploit-cpickle.py
│   │   │   │       │   ├── carrier - routers bgp hijacking
│   │   │   │       │   ├── celestial - node serialize rce
│   │   │   │       │   ├── charon - sql inject crypto
│   │   │   │       │   ├── chatterbox - start-process get-acl cacls 2
│   │   │   │       │   ├── crimestoppers - php filters thunderbird
│   │   │   │       │   ├── cronos
│   │   │   │       │   ├── curling - cewl joomla php curl redirect
│   │   │   │       │   ├── dab - ssrf memcache dynamic link shared
│   │   │   │       │   ├── devoops - lfi xxe pickle git
│   │   │   │       │   │   ├── exploit-pickle.py
│   │   │   │       │   │   └── exploit-xxe.py
│   │   │   │       │   ├── dropzone - tftp mof exec ads msf pry deb
│   │   │   │       │   ├── enterprise - error based sqli msf socks 2
│   │   │   │       │   ├── ethereal - blind cmdi dns exfil openssl 2
│   │   │   │       │   │   ├── dns exfil windows cmdi.py
│   │   │   │       │   │   └── ethereal applocker bypass
│   │   │   │       │   ├── europa - sql php regex preg_replace
│   │   │   │       │   ├── falafel - php type juggling wget linux t 2
│   │   │   │       │   │   └── sql_bool_injection.py
│   │   │   │       │   ├── fighter - mssql evasion truncate append 2
│   │   │   │       │   │   ├── fighter mssql shell
│   │   │   │       │   │   └── walkthrough script modules
│   │   │   │       │   ├── flux capacitor - param fuzz waf nginx op
│   │   │   │       │   ├── frolic - enumerate rop dep overflow file
│   │   │   │       │   ├── fulcrum - api fuzz blind xxe ssrf ad pws
│   │   │   │       │   │   └── xxe
│   │   │   │       │   ├── giddy - asp mssql out of band pth winrm
│   │   │   │       │   ├── granny and grandpa - hashcat aspx shell
│   │   │   │       │   ├── haircut - redirects suid
│   │   │   │       │   ├── hawk - ftp encryption drupal h2 console
│   │   │   │       │   ├── holiday - sql complex xss cominj npm
│   │   │   │       │   │   └── createencodedjs
│   │   │   │       │   ├── inception - phpfilter webdav squid tftp 2
│   │   │   │       │   │   ├── inception_httppty_phpcmdshell.py
│   │   │   │       │   │   └── sokar_vulnhub_httppty_shellshock_forward
│   │   │   │       │   ├── jail - chain vulns rbash socket reuse
│   │   │   │       │   │   └── buffer_overflow_socket_template.py
│   │   │   │       │   ├── jeeves - jenkins keypasss ads
│   │   │   │       │   ├── jerry - tomcat war
│   │   │   │       │   ├── joker - squid proxy wildcard priv
│   │   │   │       │   ├── kotarak - tomcat ssrf authbind pythonftp
│   │   │   │       │   ├── lazy - cookie bitflipping path hijack
│   │   │   │       │   ├── mantis - dc mssql kerberos 14-068 psexec
│   │   │   │       │   ├── minion - ssrf ci icmp shell powershell f
│   │   │   │       │   ├── mirai - dns pi grep file recovery string
│   │   │   │       │   ├── mischief - snmp ipv6 getfacl
│   │   │   │       │   │   └── icmp_exfil_scapy_read.py
│   │   │   │       │   ├── nibbles - image php shell sudo
│   │   │   │       │   ├── nineveh - hydra chain vulns ifs
│   │   │   │       │   │   ├── alt_procmon.sh
│   │   │   │       │   │   └── procmon.sh
│   │   │   │       │   ├── node - nodejs rest mongo bo wildcard com
│   │   │   │       │   ├── october - alsr dd overflow
│   │   │   │       │   ├── olympus - dns xdebug wpa crack docker pr
│   │   │   │       │   │   └── dnsrecon range lookups
│   │   │   │       │   ├── optimum - win arch differences poweshell
│   │   │   │       │   ├── oz - web api sqli docker portainer
│   │   │   │       │   ├── poison - php lfi poisoning
│   │   │   │       │   ├── popcorn - php img
│   │   │   │       │   ├── red cross - multi error sqli web 64 bit
│   │   │   │       │   │   └── redcross iptctl 64 bit rop bo
│   │   │   │       │   ├── reddish - networking pivots docker node-
│   │   │   │       │   ├── reel - bloodhound ad harvesting phishing 2
│   │   │   │       │   ├── secnotes - webshare csrf sqli windows su
│   │   │   │       │   ├── sense - pfsense env var substitute msf
│   │   │   │       │   │   └── python_get_session
│   │   │   │       │   ├── shocker - nse debugging shellshock
│   │   │   │       │   ├── shrek - audio analysis crypto wildcard
│   │   │   │       │   ├── silo - oracle and odat volatility pth wi
│   │   │   │       │   ├── smasher - aslr rop bo padding oracle rac
│   │   │   │       │   │   ├── analysis and exploitation alt
│   │   │   │       │   │   │   └── padding_oracle_cli.py
│   │   │   │       │   │   ├── binary analysis and exploitation
│   │   │   │       │   │   │   ├── gadgets
│   │   │   │       │   │   │   └── pwntools_skeleton
│   │   │   │       │   │   ├── patching checker binary
│   │   │   │       │   │   └── smasher padding oracle
│   │   │   │       │   ├── sneaky - ipv6 snmp buffer overflow
│   │   │   │       │   ├── solidstate - mail rbash james
│   │   │   │       │   ├── stratosphere - forward shell struts pyth
│   │   │   │       │   │   └── stratosphere_httppty_cmdshell.py
│   │   │   │       │   ├── sunday - finger ssh algorithms
│   │   │   │       │   ├── tally - sharepoint ftp mssql seimpersona
│   │   │   │       │   ├── tartarsauce - wordpress tar systemd time
│   │   │   │       │   ├── teacher
│   │   │   │       │   ├── tenten
│   │   │   │       │   ├── valentine - sslyze heartbleed tmux priv
│   │   │   │       │   ├── vault - image upload vpn ipv6 source spo
│   │   │   │       │   ├── waldo - dirtrav docker rbash linux capab
│   │   │   │       │   ├── ypuffy - ldap pass the hash smb sshauth
│   │   │   │       │   └── zipper - zabbix api server vs client pat 2
│   │   │   │       ├── useful artifacts
│   │   │   │       │   ├── alt_procmon.sh
│   │   │   │       │   ├── buffer overflows
│   │   │   │       │   │   ├── 64_bit_rop_bo_template.py
│   │   │   │       │   │   ├── aslr_brute_local_ret2libc_template.py
│   │   │   │       │   │   ├── bo_pwntool_socket_reuse_jmp_direct_templ
│   │   │   │       │   │   └── bo_pwntool_socket_reuse_ret2libc_templat
│   │   │   │       │   ├── createencodedjs
│   │   │   │       │   ├── exploit-xxe.py
│   │   │   │       │   ├── icmp_exfil_scapy_read.py
│   │   │   │       │   ├── openssl_cipher_decrypt_loop.sh
│   │   │   │       │   ├── procmon.sh
│   │   │   │       │   └── shells
│   │   │   │       │       ├── dns exfil windows cmdi.py
│   │   │   │       │       └── stratosphere_httppty_cmdshell.py
│   │   │   │       └── vulnhub
│   │   │   │           ├── basic pentesting 2
│   │   │   │           ├── goldeneye - pop web moodle
│   │   │   │           └── temple of doom - deserialize tcpdump
│   │   │   ├── malware analysis
│   │   │   │   └── malware analysis
│   │   │   ├── methodologies
│   │   │   │   ├── method adversary resilience
│   │   │   │   │   └── general primer
│   │   │   │   ├── method bug hunters methodology
│   │   │   │   │   ├── auth and sessions
│   │   │   │   │   ├── bug hunting sites
│   │   │   │   │   ├── discovery
│   │   │   │   │   ├── file inclusions and upload
│   │   │   │   │   ├── github
│   │   │   │   │   ├── mapping
│   │   │   │   │   ├── philosophy
│   │   │   │   │   │   └── bug bounty template writing
│   │   │   │   │   ├── priv transport and logic
│   │   │   │   │   ├── sql injection
│   │   │   │   │   └── xss
│   │   │   │   ├── method mitre attck
│   │   │   │   │   ├── collection
│   │   │   │   │   ├── command and control
│   │   │   │   │   ├── credential access
│   │   │   │   │   ├── defense evasion
│   │   │   │   │   ├── discovery
│   │   │   │   │   ├── enterprise
│   │   │   │   │   │   ├── all
│   │   │   │   │   │   ├── collection
│   │   │   │   │   │   ├── command and control
│   │   │   │   │   │   ├── credential access
│   │   │   │   │   │   ├── defense evasion
│   │   │   │   │   │   ├── discovery
│   │   │   │   │   │   ├── execution
│   │   │   │   │   │   ├── exfiltration
│   │   │   │   │   │   ├── impact
│   │   │   │   │   │   ├── initial access
│   │   │   │   │   │   ├── lateral movement
│   │   │   │   │   │   ├── persistence
│   │   │   │   │   │   └── privilege escalation
│   │   │   │   │   ├── execution
│   │   │   │   │   ├── exfiltration
│   │   │   │   │   ├── index
│   │   │   │   │   ├── initial access
│   │   │   │   │   ├── lateral movement
│   │   │   │   │   ├── mobile
│   │   │   │   │   │   ├── all
│   │   │   │   │   │   ├── collection
│   │   │   │   │   │   ├── command and control
│   │   │   │   │   │   ├── credential access
│   │   │   │   │   │   ├── defense evasion
│   │   │   │   │   │   ├── discovery
│   │   │   │   │   │   ├── effects
│   │   │   │   │   │   ├── exfiltration
│   │   │   │   │   │   ├── initial access
│   │   │   │   │   │   ├── lateral movement
│   │   │   │   │   │   ├── network effects
│   │   │   │   │   │   ├── persistence
│   │   │   │   │   │   ├── privilege escalation
│   │   │   │   │   │   └── remote service effects
│   │   │   │   │   ├── persistence
│   │   │   │   │   ├── pre-attack
│   │   │   │   │   │   ├── adversary opsec
│   │   │   │   │   │   ├── all
│   │   │   │   │   │   ├── build capabilities
│   │   │   │   │   │   ├── establish and maintain infrastructure
│   │   │   │   │   │   ├── general primer
│   │   │   │   │   │   ├── organizational information gathering
│   │   │   │   │   │   ├── organizational weakness identification
│   │   │   │   │   │   ├── people information gathering
│   │   │   │   │   │   ├── people weakness identification
│   │   │   │   │   │   ├── persona development
│   │   │   │   │   │   ├── priority definition direction
│   │   │   │   │   │   ├── priority definition planning
│   │   │   │   │   │   ├── stage capabilities
│   │   │   │   │   │   ├── target selection
│   │   │   │   │   │   ├── technical information gathering
│   │   │   │   │   │   ├── technical weakness identification
│   │   │   │   │   │   └── test capabilities
│   │   │   │   │   └── privilege escalation
│   │   │   │   ├── methodologies
│   │   │   │   ├── method open information systems securit
│   │   │   │   │   └── method
│   │   │   │   ├── method open source security testing
│   │   │   │   │   └── methodology open source security testing
│   │   │   │   ├── method owasp testing guide
│   │   │   │   │   ├── the owasp testing framework
│   │   │   │   │   │   ├── phase 1 before development begins
│   │   │   │   │   │   ├── phase 2 during definition and design
│   │   │   │   │   │   ├── phase 3 during development
│   │   │   │   │   │   ├── phase 4 during deployment
│   │   │   │   │   │   └── phase 5 maintenance and operations
│   │   │   │   │   └── the owasp testing model
│   │   │   │   │       ├── phase 1 passive mode
│   │   │   │   │       └── phase 2 active mode
│   │   │   │   │           ├── authentication testing
│   │   │   │   │           │   ├── browser cache weakness
│   │   │   │   │           │   ├── bypassing auth schema
│   │   │   │   │           │   ├── credentials transported over an encrypte
│   │   │   │   │           │   ├── default credentials
│   │   │   │   │           │   ├── vulnerable remember password
│   │   │   │   │           │   ├── weak auth in alternative channel
│   │   │   │   │           │   ├── weak lock out mechanism
│   │   │   │   │           │   ├── weak password change or reset
│   │   │   │   │           │   ├── weak password policy
│   │   │   │   │           │   └── weak security question and answer
│   │   │   │   │           ├── authorization testing
│   │   │   │   │           │   ├── bypassing authorization schema
│   │   │   │   │           │   ├── directory traversal and file inclusion
│   │   │   │   │           │   ├── insecure direct object references
│   │   │   │   │           │   └── web privilege escalation
│   │   │   │   │           ├── client side
│   │   │   │   │           │   ├── clickjacking
│   │   │   │   │           │   ├── client side resource manipulation
│   │   │   │   │           │   ├── client side url redirect
│   │   │   │   │           │   ├── cross origin resource sharing
│   │   │   │   │           │   ├── cross site flashing
│   │   │   │   │           │   ├── css injection
│   │   │   │   │           │   ├── dom cross site scripting
│   │   │   │   │           │   ├── html injection
│   │   │   │   │           │   ├── javascript execution
│   │   │   │   │           │   ├── local storage
│   │   │   │   │           │   ├── web messaging
│   │   │   │   │           │   └── websockets
│   │   │   │   │           ├── config and deploy management
│   │   │   │   │           │   ├── application platform config
│   │   │   │   │           │   ├── file extension handling
│   │   │   │   │           │   ├── file permissions
│   │   │   │   │           │   ├── http methods
│   │   │   │   │           │   ├── http strict transport security
│   │   │   │   │           │   ├── infrastructure and admin interfaces
│   │   │   │   │           │   ├── network and infrastructure config
│   │   │   │   │           │   ├── old backup and unreferenced files
│   │   │   │   │           │   └── ria cross domain policy
│   │   │   │   │           ├── error handling
│   │   │   │   │           │   ├── error codes
│   │   │   │   │           │   └── stack traces
│   │   │   │   │           ├── identity management testing
│   │   │   │   │           │   ├── account enumeration
│   │   │   │   │           │   ├── account provisioning process
│   │   │   │   │           │   ├── role definitions
│   │   │   │   │           │   ├── user registration process
│   │   │   │   │           │   └── weak or unenforced username policy
│   │   │   │   │           ├── information gathering
│   │   │   │   │           │   ├── enumerate applications on server
│   │   │   │   │           │   ├── fingerprint web app
│   │   │   │   │           │   ├── fingerprint web app framework
│   │   │   │   │           │   ├── fingerprint web server
│   │   │   │   │           │   ├── identify application entry points
│   │   │   │   │           │   ├── map app architecture
│   │   │   │   │           │   ├── map execution paths through app
│   │   │   │   │           │   ├── search discovery
│   │   │   │   │           │   ├── server metadata leakage
│   │   │   │   │           │   └── webpage metadata leakage
│   │   │   │   │           ├── input validation
│   │   │   │   │           │   ├── buffer overflow
│   │   │   │   │           │   ├── code injection
│   │   │   │   │           │   ├── command injection
│   │   │   │   │           │   ├── format string
│   │   │   │   │           │   ├── heap overflow
│   │   │   │   │           │   ├── http incoming requests
│   │   │   │   │           │   ├── http parameter pollution
│   │   │   │   │           │   ├── http splitting smuggling
│   │   │   │   │           │   ├── http verb tampering
│   │   │   │   │           │   ├── imap smtp injection
│   │   │   │   │           │   ├── incubated vulnerabilities
│   │   │   │   │           │   ├── ldap injection
│   │   │   │   │           │   ├── local file inclusion
│   │   │   │   │           │   ├── orm injection
│   │   │   │   │           │   ├── reflected cross site scripting
│   │   │   │   │           │   │   └── bypassing xss filters
│   │   │   │   │           │   ├── remote file inclusion
│   │   │   │   │           │   ├── sql injection
│   │   │   │   │           │   │   ├── detection techniques
│   │   │   │   │           │   │   ├── exploitation techniques
│   │   │   │   │           │   │   ├── fingerprinting the database
│   │   │   │   │           │   │   ├── injection signature evasion techniques
│   │   │   │   │           │   │   ├── msaccessi
│   │   │   │   │           │   │   ├── mssqli
│   │   │   │   │           │   │   ├── mysqli
│   │   │   │   │           │   │   │   ├── attack vectors
│   │   │   │   │           │   │   │   └── information gathering
│   │   │   │   │           │   │   ├── nosqli
│   │   │   │   │           │   │   ├── oracle sqli
│   │   │   │   │           │   │   ├── postgresqli
│   │   │   │   │           │   │   └── standard sqli
│   │   │   │   │           │   ├── ssi injection
│   │   │   │   │           │   ├── stack overflow
│   │   │   │   │           │   ├── stored cross site scripting
│   │   │   │   │           │   ├── xml injection
│   │   │   │   │           │   └── xpath injection
│   │   │   │   │           ├── logic testing
│   │   │   │   │           │   ├── ability to forge requests
│   │   │   │   │           │   ├── application misuse
│   │   │   │   │           │   ├── circumvent workflow
│   │   │   │   │           │   ├── data validation
│   │   │   │   │           │   ├── function use limits
│   │   │   │   │           │   ├── integrity checks
│   │   │   │   │           │   ├── malicious file upload
│   │   │   │   │           │   ├── process timing
│   │   │   │   │           │   └── unexpected file type upload
│   │   │   │   │           ├── session management testing
│   │   │   │   │           │   ├── bypassing session management schema
│   │   │   │   │           │   ├── cookie attributes
│   │   │   │   │           │   ├── cross-site request forgery
│   │   │   │   │           │   ├── exposed session variables
│   │   │   │   │           │   ├── logout
│   │   │   │   │           │   ├── session fixation
│   │   │   │   │           │   ├── session puzzling
│   │   │   │   │           │   └── session timeout
│   │   │   │   │           ├── testing guide v4 checklist
│   │   │   │   │           └── weak cryptography
│   │   │   │   │               ├── padding oracle
│   │   │   │   │               ├── sensitive info over unencrypted channel
│   │   │   │   │               ├── weak encryption
│   │   │   │   │               └── weak ssl tls ciphers
│   │   │   │   │                   ├── common issues
│   │   │   │   │                   ├── configuration review
│   │   │   │   │                   └── how to test
│   │   │   │   ├── method owasp top ten project
│   │   │   │   │   ├── home
│   │   │   │   │   └── top ten cheat sheet (2017)
│   │   │   │   │       ├── authors and primary editors
│   │   │   │   │       ├── introduction
│   │   │   │   │       ├── other cheatsheets
│   │   │   │   │       └── owasp top ten cheat sheet
│   │   │   │   │           ├── 2017a10 insufficient logging and monito
│   │   │   │   │           ├── 2017a1 injection
│   │   │   │   │           │   ├── controller
│   │   │   │   │           │   ├── model
│   │   │   │   │           │   ├── presentation
│   │   │   │   │           │   └── testing
│   │   │   │   │           ├── 2017a2 weak authentication and session
│   │   │   │   │           │   ├── controller
│   │   │   │   │           │   ├── model
│   │   │   │   │           │   ├── presentation
│   │   │   │   │           │   └── testing
│   │   │   │   │           ├── 2017a3 sensitive data exposure
│   │   │   │   │           │   ├── controller
│   │   │   │   │           │   ├── model
│   │   │   │   │           │   ├── presentation
│   │   │   │   │           │   └── testing
│   │   │   │   │           ├── 2017a4 xml external entities
│   │   │   │   │           ├── 2017a5 broken access control
│   │   │   │   │           │   ├── 2013a4 insecure direct object reference
│   │   │   │   │           │   │   ├── controller
│   │   │   │   │           │   │   ├── model
│   │   │   │   │           │   │   ├── presentation
│   │   │   │   │           │   │   └── testing
│   │   │   │   │           │   └── 2013a7 missing function level access co
│   │   │   │   │           │       ├── controller
│   │   │   │   │           │       ├── model
│   │   │   │   │           │       ├── presentation
│   │   │   │   │           │       └── testing
│   │   │   │   │           ├── 2017a6 security misconfiguration
│   │   │   │   │           │   ├── controller
│   │   │   │   │           │   ├── model
│   │   │   │   │           │   ├── presentation
│   │   │   │   │           │   └── testing
│   │   │   │   │           ├── 2017a7 xss
│   │   │   │   │           │   ├── controller
│   │   │   │   │           │   ├── model
│   │   │   │   │           │   ├── presentation
│   │   │   │   │           │   └── testing
│   │   │   │   │           ├── 2017a8 insecure deserialization
│   │   │   │   │           ├── 2017a9 using components with known vuln
│   │   │   │   │           │   ├── controller
│   │   │   │   │           │   ├── model
│   │   │   │   │           │   ├── presentation
│   │   │   │   │           │   └── testing
│   │   │   │   │           ├── 2017 additional risks to consider
│   │   │   │   │           ├── older
│   │   │   │   │           │   ├── 2013a10 unvalidated redirects and forwa
│   │   │   │   │           │   │   ├── controller
│   │   │   │   │           │   │   ├── model
│   │   │   │   │           │   │   ├── presentation
│   │   │   │   │           │   │   └── testing
│   │   │   │   │           │   └── 2013a8 cross site request forgery
│   │   │   │   │           │       ├── controller
│   │   │   │   │           │       ├── model
│   │   │   │   │           │       ├── presentation
│   │   │   │   │           │       └── testing
│   │   │   │   │           ├── whats next for application managers
│   │   │   │   │           ├── whats next for developers
│   │   │   │   │           ├── whats next for organizations
│   │   │   │   │           └── whats next for security testers
│   │   │   │   ├── method pentest-standard.org
│   │   │   │   │   ├── exploitation
│   │   │   │   │   │   ├── countermeasures
│   │   │   │   │   │   │   ├── address space layout randomization
│   │   │   │   │   │   │   ├── anti-virus
│   │   │   │   │   │   │   │   ├── encoding
│   │   │   │   │   │   │   │   ├── encrypting
│   │   │   │   │   │   │   │   ├── packing
│   │   │   │   │   │   │   │   ├── process injection
│   │   │   │   │   │   │   │   ├── purely memory resident
│   │   │   │   │   │   │   │   └── whitelist bypass
│   │   │   │   │   │   │   ├── data execution prevention (dep)
│   │   │   │   │   │   │   ├── human
│   │   │   │   │   │   │   └── web application firewall (waf)
│   │   │   │   │   │   ├── customized exploitation avenue
│   │   │   │   │   │   ├── evasion
│   │   │   │   │   │   ├── example avenues of attack
│   │   │   │   │   │   ├── overall objective
│   │   │   │   │   │   ├── precision strike
│   │   │   │   │   │   ├── purpose
│   │   │   │   │   │   ├── tailored exploits
│   │   │   │   │   │   │   └── exploit customization
│   │   │   │   │   │   └── zero-day angle
│   │   │   │   │   │       ├── fuzzing
│   │   │   │   │   │       ├── physical access
│   │   │   │   │   │       │   ├── human angle
│   │   │   │   │   │       │   └── pc access
│   │   │   │   │   │       ├── proximity access (wifi)
│   │   │   │   │   │       │   ├── attacking the user
│   │   │   │   │   │       │   └── wifi attacks
│   │   │   │   │   │       ├── source code analysis
│   │   │   │   │   │       ├── traffic analysis
│   │   │   │   │   │       └── types of exploits
│   │   │   │   │   │           ├── buffer overflows
│   │   │   │   │   │           ├── return oriented programming
│   │   │   │   │   │           └── seh overwrites
│   │   │   │   │   ├── intel gathering
│   │   │   │   │   │   ├── covert gathering
│   │   │   │   │   │   │   ├── corporate
│   │   │   │   │   │   │   │   ├── offsite gathering
│   │   │   │   │   │   │   │   └── on-location gathering
│   │   │   │   │   │   │   └── humint
│   │   │   │   │   │   │       └── results
│   │   │   │   │   │   ├── footprinting
│   │   │   │   │   │   │   ├── external footprinting
│   │   │   │   │   │   │   │   ├── establish external target list
│   │   │   │   │   │   │   │   │   ├── identifying patch levels
│   │   │   │   │   │   │   │   │   ├── identify lockout threshold
│   │   │   │   │   │   │   │   │   ├── looking for weak web applications
│   │   │   │   │   │   │   │   │   └── mapping versions
│   │   │   │   │   │   │   │   ├── identify customer external ranges
│   │   │   │   │   │   │   │   ├── new page
│   │   │   │   │   │   │   │   │   ├── banner grabbing
│   │   │   │   │   │   │   │   │   ├── dns bruteforce
│   │   │   │   │   │   │   │   │   ├── dns discovery
│   │   │   │   │   │   │   │   │   ├── forward-reverse dns
│   │   │   │   │   │   │   │   │   ├── port scanning
│   │   │   │   │   │   │   │   │   ├── smtp bounce back
│   │   │   │   │   │   │   │   │   ├── snmp sweeps
│   │   │   │   │   │   │   │   │   ├── virtual host detection  enumeration
│   │   │   │   │   │   │   │   │   ├── web application discovery
│   │   │   │   │   │   │   │   │   └── zone transfers
│   │   │   │   │   │   │   │   └── passive reconnaissance
│   │   │   │   │   │   │   │       ├── bgp looking glasses
│   │   │   │   │   │   │   │       └── whois lookups
│   │   │   │   │   │   │   └── internal footprinting
│   │   │   │   │   │   │       ├── active reconnaissance
│   │   │   │   │   │   │       ├── identify customer internal ranges
│   │   │   │   │   │   │       └── passive reconnaissance
│   │   │   │   │   │   ├── general
│   │   │   │   │   │   │   └── background concepts
│   │   │   │   │   │   │       ├── level 1 information gathering
│   │   │   │   │   │   │       ├── level 2 information gathering
│   │   │   │   │   │   │       └── level 3 information gathering
│   │   │   │   │   │   ├── identify protection mechanisms
│   │   │   │   │   │   │   ├── application level protections
│   │   │   │   │   │   │   ├── host based protections
│   │   │   │   │   │   │   ├── network based protections
│   │   │   │   │   │   │   ├── storage protections
│   │   │   │   │   │   │   └── user protections
│   │   │   │   │   │   ├── intel gathering
│   │   │   │   │   │   │   ├── what it is
│   │   │   │   │   │   │   ├── what its not
│   │   │   │   │   │   │   └── why do it
│   │   │   │   │   │   ├── osint
│   │   │   │   │   │   │   ├── corporate
│   │   │   │   │   │   │   │   ├── electronic
│   │   │   │   │   │   │   │   │   ├── document metadata (l1-l2)
│   │   │   │   │   │   │   │   │   └── marketing communications (l1-l2)
│   │   │   │   │   │   │   │   ├── financial
│   │   │   │   │   │   │   │   │   ├── market analysis (l1-l2-l3)
│   │   │   │   │   │   │   │   │   │   ├── edgar (sec)
│   │   │   │   │   │   │   │   │   │   ├── trade capital
│   │   │   │   │   │   │   │   │   │   └── value history
│   │   │   │   │   │   │   │   │   └── reporting (l1-l2)
│   │   │   │   │   │   │   │   ├── infrastructure assets
│   │   │   │   │   │   │   │   │   ├── application usage (l1-l2)
│   │   │   │   │   │   │   │   │   ├── defense technologies (l1-l2-l3)
│   │   │   │   │   │   │   │   │   │   ├── active fingerprinting
│   │   │   │   │   │   │   │   │   │   └── passive fingerprinting
│   │   │   │   │   │   │   │   │   ├── email addresses (l1)
│   │   │   │   │   │   │   │   │   ├── external infrastructure profile (l1)
│   │   │   │   │   │   │   │   │   ├── human capability (l1-l2-l3)
│   │   │   │   │   │   │   │   │   ├── network blocks owned (l1)
│   │   │   │   │   │   │   │   │   ├── purchase agreements (l1-l2-l3)
│   │   │   │   │   │   │   │   │   ├── remote access (l1-l2)
│   │   │   │   │   │   │   │   │   └── technologies used (l1-l2)
│   │   │   │   │   │   │   │   ├── logical
│   │   │   │   │   │   │   │   ├── org chart l1
│   │   │   │   │   │   │   │   └── physical
│   │   │   │   │   │   │   │       ├── locations (l1)
│   │   │   │   │   │   │   │       ├── pervasiveness (l1)
│   │   │   │   │   │   │   │       └── relationships (l1)
│   │   │   │   │   │   │   └── individual
│   │   │   │   │   │   │       └── employee
│   │   │   │   │   │   │           ├── history
│   │   │   │   │   │   │           ├── internet presence
│   │   │   │   │   │   │           ├── mobile footprint
│   │   │   │   │   │   │           ├── physical location
│   │   │   │   │   │   │           └── social network (socnet) profile
│   │   │   │   │   │   └── target selection
│   │   │   │   │   │       ├── consider any rules of engagement limitat
│   │   │   │   │   │       ├── consider end goal of the test
│   │   │   │   │   │       ├── consider time length for test
│   │   │   │   │   │       └── identification and naming of target
│   │   │   │   │   ├── main page
│   │   │   │   │   ├── penetration testing execution standard
│   │   │   │   │   ├── post-exploitation
│   │   │   │   │   │   ├── cleanup
│   │   │   │   │   │   ├── data exfiltration
│   │   │   │   │   │   │   ├── mapping of all possible exfiltration pat
│   │   │   │   │   │   │   ├── measuring control strengths
│   │   │   │   │   │   │   └── testing exfiltration paths
│   │   │   │   │   │   ├── further penetration into infrastructure
│   │   │   │   │   │   │   ├── from compromised system
│   │   │   │   │   │   │   └── thru compromised system
│   │   │   │   │   │   ├── high value-profile targets
│   │   │   │   │   │   ├── new page
│   │   │   │   │   │   │   ├── network configuration
│   │   │   │   │   │   │   │   ├── arp entries
│   │   │   │   │   │   │   │   ├── cached dns entries
│   │   │   │   │   │   │   │   ├── dns servers
│   │   │   │   │   │   │   │   ├── interfaces
│   │   │   │   │   │   │   │   ├── proxy servers
│   │   │   │   │   │   │   │   └── routing
│   │   │   │   │   │   │   └── network services
│   │   │   │   │   │   │       ├── directory services
│   │   │   │   │   │   │       ├── listening services
│   │   │   │   │   │   │       ├── neighbors
│   │   │   │   │   │   │       └── vpn connections
│   │   │   │   │   │   ├── persistence
│   │   │   │   │   │   ├── pillaging
│   │   │   │   │   │   │   ├── installed programs
│   │   │   │   │   │   │   │   └── startup items
│   │   │   │   │   │   │   ├── installed services
│   │   │   │   │   │   │   │   ├── backup systems
│   │   │   │   │   │   │   │   ├── certificate authority
│   │   │   │   │   │   │   │   ├── database servers
│   │   │   │   │   │   │   │   ├── deployment services
│   │   │   │   │   │   │   │   ├── directory servers
│   │   │   │   │   │   │   │   ├── dynamic host configuration server
│   │   │   │   │   │   │   │   ├── file-printer shares
│   │   │   │   │   │   │   │   ├── messaging
│   │   │   │   │   │   │   │   ├── monitoring and management
│   │   │   │   │   │   │   │   ├── name servers
│   │   │   │   │   │   │   │   ├── networking services (radius,tacacs..etc)
│   │   │   │   │   │   │   │   ├── security services
│   │   │   │   │   │   │   │   ├── source code management server
│   │   │   │   │   │   │   │   └── virtualization
│   │   │   │   │   │   │   ├── sensitive data
│   │   │   │   │   │   │   │   ├── key-logging
│   │   │   │   │   │   │   │   ├── network traffic capture
│   │   │   │   │   │   │   │   ├── previous audit reports
│   │   │   │   │   │   │   │   └── screen capture
│   │   │   │   │   │   │   ├── system configuration
│   │   │   │   │   │   │   │   ├── configured wireless networks and keys
│   │   │   │   │   │   │   │   ├── password policy
│   │   │   │   │   │   │   │   └── security policies
│   │   │   │   │   │   │   └── user information
│   │   │   │   │   │   │       ├── im clients
│   │   │   │   │   │   │       ├── on system
│   │   │   │   │   │   │       └── web browsers
│   │   │   │   │   │   ├── purpose
│   │   │   │   │   │   └── rules of engagement
│   │   │   │   │   │       ├── protecting yourself
│   │   │   │   │   │       └── protect the client
│   │   │   │   │   ├── pre-engagement
│   │   │   │   │   │   ├── additional support based on hourly rate
│   │   │   │   │   │   ├── capabilities and technology in place
│   │   │   │   │   │   ├── dealing with third parties
│   │   │   │   │   │   │   ├── cloud services
│   │   │   │   │   │   │   ├── countries where servers are hosted
│   │   │   │   │   │   │   ├── dealing with third parties
│   │   │   │   │   │   │   ├── isp
│   │   │   │   │   │   │   └── mssps
│   │   │   │   │   │   ├── define acceptable social engineering pre
│   │   │   │   │   │   ├── dos testing
│   │   │   │   │   │   ├── emergency contact information
│   │   │   │   │   │   │   ├── emergency contact information
│   │   │   │   │   │   │   ├── incident definition
│   │   │   │   │   │   │   ├── incident reporting process
│   │   │   │   │   │   │   ├── pgp and other alternatives
│   │   │   │   │   │   │   └── status report frequency
│   │   │   │   │   │   ├── establish lines of communication
│   │   │   │   │   │   ├── general questions
│   │   │   │   │   │   │   ├── network penetration test
│   │   │   │   │   │   │   ├── physical penetration test
│   │   │   │   │   │   │   ├── questions for business unit managers
│   │   │   │   │   │   │   ├── questions for systems administrators
│   │   │   │   │   │   │   ├── social engineering
│   │   │   │   │   │   │   ├── web application penetration test
│   │   │   │   │   │   │   └── wireless network penetration test
│   │   │   │   │   │   ├── goals
│   │   │   │   │   │   │   ├── business analysis
│   │   │   │   │   │   │   ├── goals
│   │   │   │   │   │   │   ├── primary
│   │   │   │   │   │   │   └── secondary
│   │   │   │   │   │   ├── intro to scope
│   │   │   │   │   │   ├── metrics for time estimation
│   │   │   │   │   │   ├── overview
│   │   │   │   │   │   ├── payment terms
│   │   │   │   │   │   │   ├── half upfront
│   │   │   │   │   │   │   ├── net 30
│   │   │   │   │   │   │   ├── payment terms
│   │   │   │   │   │   │   └── recurring
│   │   │   │   │   │   ├── questionnaires
│   │   │   │   │   │   ├── rules of engagement
│   │   │   │   │   │   │   ├── dealing with shunning
│   │   │   │   │   │   │   ├── evidence handling
│   │   │   │   │   │   │   ├── legal considerations
│   │   │   │   │   │   │   ├── locations
│   │   │   │   │   │   │   ├── permission to test
│   │   │   │   │   │   │   ├── regular status meetings
│   │   │   │   │   │   │   ├── timeline
│   │   │   │   │   │   │   └── time of the day to test
│   │   │   │   │   │   ├── scope creep
│   │   │   │   │   │   ├── scoping meeting
│   │   │   │   │   │   ├── specify ip ranges and domains
│   │   │   │   │   │   │   └── validate ranges
│   │   │   │   │   │   └── specify start and end dates
│   │   │   │   │   ├── reporting
│   │   │   │   │   │   ├── overview
│   │   │   │   │   │   ├── report structure
│   │   │   │   │   │   ├── technical report
│   │   │   │   │   │   └── the executive summary
│   │   │   │   │   ├── threat modeling
│   │   │   │   │   │   ├── business asset analysis
│   │   │   │   │   │   │   ├── human assets
│   │   │   │   │   │   │   └── organizational data
│   │   │   │   │   │   │       ├── customer data
│   │   │   │   │   │   │       ├── employee data
│   │   │   │   │   │   │       ├── financial information (e.g. bank, credit
│   │   │   │   │   │   │       ├── marketing information (plans, roadmaps,
│   │   │   │   │   │   │       ├── policies, plans, and procedures
│   │   │   │   │   │   │       ├── product information (e.g. trade secrets,
│   │   │   │   │   │   │       └── technical information
│   │   │   │   │   │   ├── business process analysis
│   │   │   │   │   │   │   ├── 3rd party integration and-or usage of-by
│   │   │   │   │   │   │   ├── human assets supporting process
│   │   │   │   │   │   │   ├── information assets supporting process
│   │   │   │   │   │   │   └── technical infrastructure supporting proc
│   │   │   │   │   │   ├── finding relevant news of comparable orga
│   │   │   │   │   │   ├── general
│   │   │   │   │   │   │   ├── example
│   │   │   │   │   │   │   ├── high level modeling tools
│   │   │   │   │   │   │   └── high level threat modeling process
│   │   │   │   │   │   ├── motivation modeling
│   │   │   │   │   │   ├── threat agents-community analysis
│   │   │   │   │   │   │   ├── employees
│   │   │   │   │   │   │   └── management (executive, middle)
│   │   │   │   │   │   └── threat capability analysis
│   │   │   │   │   │       ├── accessibility
│   │   │   │   │   │       ├── analysis of tools in use
│   │   │   │   │   │       ├── availability to relevant exploits-payloa
│   │   │   │   │   │       └── communication mechanisms
│   │   │   │   │   └── vulnerability analysis
│   │   │   │   │       ├── active
│   │   │   │   │       ├── passive
│   │   │   │   │       ├── research
│   │   │   │   │       ├── testing
│   │   │   │   │       └── validation
│   │   │   │   ├── method sans cloud pentesting
│   │   │   │   │   ├── cloud service models
│   │   │   │   │   ├── delineation of responsibility
│   │   │   │   │   ├── deployment models
│   │   │   │   │   ├── general primer
│   │   │   │   │   ├── iaas
│   │   │   │   │   │   ├── attacking the hypervisor
│   │   │   │   │   │   ├── cloning issues
│   │   │   │   │   │   ├── patching problems
│   │   │   │   │   │   ├── targeting
│   │   │   │   │   │   └── traffic control
│   │   │   │   │   ├── paas
│   │   │   │   │   ├── saas
│   │   │   │   │   ├── shared responsibility
│   │   │   │   │   └── the cloud stack
│   │   │   │   ├── method social engineering framework
│   │   │   │   │   ├── categories of social engineers
│   │   │   │   │   │   ├── disgruntled employees
│   │   │   │   │   │   ├── everyday people
│   │   │   │   │   │   ├── executive recruiters
│   │   │   │   │   │   ├── governments
│   │   │   │   │   │   ├── hackers
│   │   │   │   │   │   ├── identity thieves
│   │   │   │   │   │   ├── information brokers
│   │   │   │   │   │   ├── penetration testers
│   │   │   │   │   │   ├── sales people
│   │   │   │   │   │   ├── scan artists
│   │   │   │   │   │   └── spying or espionage
│   │   │   │   │   ├── common attacks
│   │   │   │   │   │   ├── customer service
│   │   │   │   │   │   ├── delivery person
│   │   │   │   │   │   ├── phone
│   │   │   │   │   │   └── tech support
│   │   │   │   │   ├── home
│   │   │   │   │   ├── real world examples
│   │   │   │   │   │   ├── con men
│   │   │   │   │   │   ├── crime victimes
│   │   │   │   │   │   ├── phishing
│   │   │   │   │   │   └── politicians
│   │   │   │   │   ├── social engineering defined
│   │   │   │   │   ├── typical goals
│   │   │   │   │   └── why attackers might use social engineeri
│   │   │   │   ├── method vulnerabilityassessment.co.uk
│   │   │   │   │   ├── as-400 auditing
│   │   │   │   │   │   └── tree
│   │   │   │   │   ├── bluetooth specific
│   │   │   │   │   │   └── new page
│   │   │   │   │   ├── cisco specific
│   │   │   │   │   │   └── tree
│   │   │   │   │   ├── citrix specific
│   │   │   │   │   │   └── tree
│   │   │   │   │   ├── discovery  probing
│   │   │   │   │   │   └── tree
│   │   │   │   │   │       ├── default nix ports
│   │   │   │   │   │       └── default win ports
│   │   │   │   │   ├── enumeration
│   │   │   │   │   │   ├── 111 portmapper
│   │   │   │   │   │   ├── 123 ntp
│   │   │   │   │   │   ├── 135-139,445 netbios
│   │   │   │   │   │   ├── 13 daytime
│   │   │   │   │   │   ├── 1433,1434 sql
│   │   │   │   │   │   ├── 1494 citrix
│   │   │   │   │   │   ├── 1521 oracle
│   │   │   │   │   │   ├── 161 snmp
│   │   │   │   │   │   ├── 2049 nfs
│   │   │   │   │   │   ├── 21 ftp
│   │   │   │   │   │   ├── 22 ssh
│   │   │   │   │   │   ├── 2301,2381 hp insight manager
│   │   │   │   │   │   ├── 23 telnet
│   │   │   │   │   │   ├── 25 sendmail
│   │   │   │   │   │   ├── 3306 mysql
│   │   │   │   │   │   ├── 3389 rdesktop
│   │   │   │   │   │   ├── 389 ldap
│   │   │   │   │   │   ├── 5000+ sybase
│   │   │   │   │   │   ├── 500-1723 pptp-l2tp-vpn
│   │   │   │   │   │   ├── 502 modbus
│   │   │   │   │   │   ├── 5060 sip
│   │   │   │   │   │   ├── 513 rlogin
│   │   │   │   │   │   ├── 514 rsh
│   │   │   │   │   │   ├── 53 dns
│   │   │   │   │   │   ├── 5900+ vnc
│   │   │   │   │   │   ├── 6000^ x11
│   │   │   │   │   │   ├── 69 tftp
│   │   │   │   │   │   ├── 79 finger
│   │   │   │   │   │   ├── 80,8080,etc web
│   │   │   │   │   │   ├── 9001,9030 tor
│   │   │   │   │   │   └── 9100 jet direct
│   │   │   │   │   ├── final report template
│   │   │   │   │   │   └── tree
│   │   │   │   │   ├── network backbone
│   │   │   │   │   │   └── tree
│   │   │   │   │   ├── network footprinting
│   │   │   │   │   │   └── tree
│   │   │   │   │   ├── password cracking
│   │   │   │   │   │   └── tree
│   │   │   │   │   ├── penetration
│   │   │   │   │   │   └── tree
│   │   │   │   │   ├── physical security
│   │   │   │   │   │   └── tree
│   │   │   │   │   ├── pre-inspection visit
│   │   │   │   │   │   └── tree
│   │   │   │   │   ├── server specific tests
│   │   │   │   │   │   └── tree
│   │   │   │   │   ├── voip security
│   │   │   │   │   │   └── tree
│   │   │   │   │   ├── vulnerability assesment
│   │   │   │   │   │   └── tree
│   │   │   │   │   └── wireless penetration
│   │   │   │   │       └── tree
│   │   │   │   ├── method web application consortium proje
│   │   │   │   │   └── frontpage
│   │   │   │   ├── method web application firewall evaluat
│   │   │   │   │   └── general primer
│   │   │   │   ├── other thoughts
│   │   │   │   │   ├── goals, value, etc
│   │   │   │   │   └── web
│   │   │   │   │       └── alternative approach to scanning
│   │   │   │   │           ├── hunting findings
│   │   │   │   │           ├── probe-pair fuzzing
│   │   │   │   │           │   ├── core logic
│   │   │   │   │           │   ├── recognizing significant response diffs
│   │   │   │   │           │   └── types of mutation
│   │   │   │   │           └── suspicious input transformations
│   │   │   │   ├── other writeups
│   │   │   │   │   ├── methodology jollyfrog oscp
│   │   │   │   │   ├── methodology rishiraj sharma (bugbounty)
│   │   │   │   │   ├── owasp testing checklist
│   │   │   │   │   └── security testing checklist for web appli
│   │   │   │   ├── password cracking
│   │   │   │   │   ├── cracking
│   │   │   │   │   └── netspi gpu password cracking methodology
│   │   │   │   │       ├── back to dictionary with more ammo (10 mi
│   │   │   │   │       ├── double dictionary (20-35 minutes)
│   │   │   │   │       ├── start with the masking attacks (15 minut
│   │   │   │   │       │   └── pastebin script
│   │   │   │   │       ├── use dictionary and rules (3 minutes)
│   │   │   │   │       └── when all else fails, brute force
│   │   │   │   └── personal
│   │   │   │       ├── better network access
│   │   │   │       ├── binaries
│   │   │   │       ├── brute force login
│   │   │   │       │   └── default logins
│   │   │   │       ├── end reporting
│   │   │   │       ├── escalation
│   │   │   │       ├── exploit
│   │   │   │       ├── high priv
│   │   │   │       ├── low priv
│   │   │   │       ├── network recon
│   │   │   │       ├── process credentials discovered
│   │   │   │       ├── process new user discovered
│   │   │   │       ├── services
│   │   │   │       │   ├── another http checklist
│   │   │   │       │   │   ├── discover
│   │   │   │       │   │   ├── gather
│   │   │   │       │   │   └── map
│   │   │   │       │   ├── dns
│   │   │   │       │   ├── each service
│   │   │   │       │   ├── finger
│   │   │   │       │   ├── ftp
│   │   │   │       │   ├── http
│   │   │   │       │   │   ├── sqli
│   │   │   │       │   │   └── squid - http-proxy
│   │   │   │       │   ├── ldap
│   │   │   │       │   ├── msrpc smb
│   │   │   │       │   │   └── checker.py
│   │   │   │       │   │       ├── mysmb.py
│   │   │   │       │   │       └── zzz_exploit.py
│   │   │   │       │   ├── nfs
│   │   │   │       │   ├── oracle
│   │   │   │       │   ├── portmapper
│   │   │   │       │   ├── rdp
│   │   │   │       │   ├── rlogin
│   │   │   │       │   ├── rsh
│   │   │   │       │   ├── smtp
│   │   │   │       │   ├── snmp
│   │   │   │       │   ├── sql
│   │   │   │       │   ├── ssh
│   │   │   │       │   ├── telnet
│   │   │   │       │   ├── tftp
│   │   │   │       │   │   ├── list
│   │   │   │       │   │   └── msf tftp list
│   │   │   │       │   ├── vnc
│   │   │   │       │   └── x11
│   │   │   │       └── unkown file - data
│   │   │   ├── networking - traffic
│   │   │   │   ├── attacks
│   │   │   │   │   └── mitm and spoof
│   │   │   │   │       ├── arp spoofing
│   │   │   │   │       │   ├── general primer
│   │   │   │   │       │   └── using tools for arp spoofing
│   │   │   │   │       ├── caching workarounds
│   │   │   │   │       │   └── http
│   │   │   │   │       ├── general primer
│   │   │   │   │       ├── ipv6 spoofing
│   │   │   │   │       │   ├── neighbor advertisements
│   │   │   │   │       │   └── router advertisements
│   │   │   │   │       ├── mitm evilgrade software updates
│   │   │   │   │       └── windows attacks
│   │   │   │   │           ├── dns
│   │   │   │   │           │   ├── adidns
│   │   │   │   │           │   ├── ipv6
│   │   │   │   │           │   └── maq
│   │   │   │   │           ├── llmnr - netbios
│   │   │   │   │           └── wpad
│   │   │   │   │               ├── general primer
│   │   │   │   │               └── mitigations
│   │   │   │   ├── firewalls - filters
│   │   │   │   │   ├── iptables
│   │   │   │   │   │   └── general primer
│   │   │   │   │   │       ├── chains
│   │   │   │   │   │       ├── examples
│   │   │   │   │   │       └── responses
│   │   │   │   │   └── windows firewall
│   │   │   │   │       ├── adding rules
│   │   │   │   │       ├── general primer
│   │   │   │   │       └── setting dns
│   │   │   │   ├── general primer
│   │   │   │   │   ├── encapsulation
│   │   │   │   │   ├── protocol layer models
│   │   │   │   │   │   ├── osi protocol layers
│   │   │   │   │   │   └── tcp ip protocol layers
│   │   │   │   │   └── routing
│   │   │   │   │       └── general primer
│   │   │   │   ├── osi data link layer 2
│   │   │   │   │   ├── cisco dtp
│   │   │   │   │   │   └── attacking dtp
│   │   │   │   │   ├── cisco isl
│   │   │   │   │   └── vrrp
│   │   │   │   ├── osi network layer 3
│   │   │   │   │   ├── cisco hsrp
│   │   │   │   │   │   └── attacking hsrp
│   │   │   │   │   ├── general primer
│   │   │   │   │   ├── ipv4
│   │   │   │   │   │   ├── general primer
│   │   │   │   │   │   │   ├── special use addresses
│   │   │   │   │   │   │   ├── subnets ipv4
│   │   │   │   │   │   │   └── three way handshake
│   │   │   │   │   │   └── ipv4 header
│   │   │   │   │   └── ipv6
│   │   │   │   │       ├── attacking ipv6 remotely
│   │   │   │   │       ├── general primer
│   │   │   │   │       ├── ipv6 addressesing
│   │   │   │   │       ├── ipv6 enumerating
│   │   │   │   │       └── ipv6 header
│   │   │   │   └── osi transport layer 4
│   │   │   │       ├── general primer
│   │   │   │       ├── routing protocols
│   │   │   │       │   └── ospf
│   │   │   │       │       ├── attacking ospf
│   │   │   │       │       ├── ospf areas
│   │   │   │       │       └── router types attr and metrics
│   │   │   │       ├── tcp
│   │   │   │       │   ├── general primer
│   │   │   │       │   └── tcp header
│   │   │   │       └── udp
│   │   │   │           └── udp header
│   │   │   ├── __NOTEBOOK__
│   │   │   ├── osint
│   │   │   │   ├── dns
│   │   │   │   │   └── general dns primer
│   │   │   │   ├── documents and metadata
│   │   │   │   │   └── general primer
│   │   │   │   ├── general primer
│   │   │   │   ├── google hacking
│   │   │   │   │   ├── deprecated
│   │   │   │   │   ├── dns
│   │   │   │   │   ├── general
│   │   │   │   │   ├── not always reliable
│   │   │   │   │   └── website specific
│   │   │   │   ├── infrastructure
│   │   │   │   └── people and organizational
│   │   │   ├── passwords and hashes
│   │   │   │   ├── authentication general info
│   │   │   │   │   ├── lm vs ntlm vs net-ntlmv2
│   │   │   │   │   │   ├── lm
│   │   │   │   │   │   │   ├── crack
│   │   │   │   │   │   │   ├── general primer
│   │   │   │   │   │   │   └── lm algorithm
│   │   │   │   │   │   ├── nthash - ntlm
│   │   │   │   │   │   │   ├── crack
│   │   │   │   │   │   │   ├── general primer
│   │   │   │   │   │   │   └── nthash algorithm
│   │   │   │   │   │   ├── ntlmv1 - net-ntlmv1
│   │   │   │   │   │   │   ├── crack
│   │   │   │   │   │   │   ├── general primer
│   │   │   │   │   │   │   └── ntlmv1 algorithm
│   │   │   │   │   │   └── ntlmv2 - net-ntlmv2
│   │   │   │   │   │       ├── crack
│   │   │   │   │   │       ├── general primer
│   │   │   │   │   │       └── ntlmv2 algorithm
│   │   │   │   │   └── ntlm authentication
│   │   │   │   │       └── general primer
│   │   │   │   ├── kerberos
│   │   │   │   │   ├── 20 minute rule
│   │   │   │   │   │   └── service tickets - silver tickets and ker
│   │   │   │   │   ├── access kerberos with ntlm hash
│   │   │   │   │   │   ├── changing users passwords
│   │   │   │   │   │   └── mitigations
│   │   │   │   │   ├── aseproasting weak tgts
│   │   │   │   │   │   ├── aseproasting with rubeus
│   │   │   │   │   │   ├── cracking aseproasted hashes
│   │   │   │   │   │   ├── enumerating users without preauth
│   │   │   │   │   │   ├── general primer
│   │   │   │   │   │   │   └── developing a toolset for aseproasting
│   │   │   │   │   │   │       └── asn.1
│   │   │   │   │   │   └── mitigations
│   │   │   │   │   ├── general primer
│   │   │   │   │   ├── golden tickets
│   │   │   │   │   │   ├── creation
│   │   │   │   │   │   ├── general primer
│   │   │   │   │   │   │   └── more notes
│   │   │   │   │   │   ├── golden ticket limitations
│   │   │   │   │   │   ├── sid history
│   │   │   │   │   │   │   └── mitigation
│   │   │   │   │   │   └── what is needed
│   │   │   │   │   ├── kerberoast spns
│   │   │   │   │   │   ├── binary convert to crack
│   │   │   │   │   │   ├── cracking spn tickets
│   │   │   │   │   │   ├── exporting tickets
│   │   │   │   │   │   ├── general primer
│   │   │   │   │   │   ├── listing spns
│   │   │   │   │   │   └── spn lists
│   │   │   │   │   │       ├── adsecurity list
│   │   │   │   │   │       └── default spns
│   │   │   │   │   ├── kerberos delegation
│   │   │   │   │   │   ├── constrained delegation
│   │   │   │   │   │   │   ├── general primer 2
│   │   │   │   │   │   │   │   └── alternate primer
│   │   │   │   │   │   │   └── s4u2
│   │   │   │   │   │   │       ├── abusing s4u and protocol transition
│   │   │   │   │   │   │       │   ├── scenario 1
│   │   │   │   │   │   │       │   │   └── exploitation of s4u2self
│   │   │   │   │   │   │       │   │       └── exploit with kekeo
│   │   │   │   │   │   │       │   ├── scenario 2
│   │   │   │   │   │   │       │   │   └── s4u.ps1
│   │   │   │   │   │   │       │   ├── scenario 3
│   │   │   │   │   │   │       │   └── scenario 4
│   │   │   │   │   │   │       ├── mitigations
│   │   │   │   │   │   │       ├── s4u2proxy
│   │   │   │   │   │   │       └── s4u2self
│   │   │   │   │   │   ├── general primer
│   │   │   │   │   │   ├── resource-based constrained delegation
│   │   │   │   │   │   │   ├── combination
│   │   │   │   │   │   │   │   └── maq dacl and allowedtoactonbehalfof
│   │   │   │   │   │   │   │       ├── abusing protocol transition
│   │   │   │   │   │   │   │       ├── alt constr 101 s4u2proxy
│   │   │   │   │   │   │   │       ├── alt s4u2self
│   │   │   │   │   │   │   │       ├── alt unconst 101
│   │   │   │   │   │   │   │       ├── features equals dacl abuse
│   │   │   │   │   │   │   │       ├── general primer
│   │   │   │   │   │   │   │       ├── kerb delegation 101
│   │   │   │   │   │   │   │       ├── mitigations
│   │   │   │   │   │   │   │       ├── mitm take over walkthrough
│   │   │   │   │   │   │   │       ├── no silver ticket needed
│   │   │   │   │   │   │   │       ├── rce-lpe opportunities
│   │   │   │   │   │   │   │       │   ├── mssql rce-lpe
│   │   │   │   │   │   │   │       │   ├── pair with adidns
│   │   │   │   │   │   │   │       │   └── win 10-16-19 lpe
│   │   │   │   │   │   │   │       ├── s4u2proxy features
│   │   │   │   │   │   │   │       ├── taking over computer
│   │   │   │   │   │   │   │       │   └── commands used
│   │   │   │   │   │   │   │       ├── the generic abuse case
│   │   │   │   │   │   │   │       ├── unconstrained domain persist
│   │   │   │   │   │   │   │       └── unconstrained to rce
│   │   │   │   │   │   │   ├── general primer
│   │   │   │   │   │   │   └── msds-allowedtoactonbehalfofotheridentity
│   │   │   │   │   │   │       └── example
│   │   │   │   │   │   │           └── gist with commands
│   │   │   │   │   │   └── unconstrained delegation
│   │   │   │   │   │       ├── combined with maq
│   │   │   │   │   │       ├── credential theft leveraging unconstraine
│   │   │   │   │   │       ├── elads unconstrained to rce
│   │   │   │   │   │       ├── general primer
│   │   │   │   │   │       │   └── more details - delegation flow
│   │   │   │   │   │       └── mitigation
│   │   │   │   │   ├── kerberos on nix
│   │   │   │   │   │   └── smb magic
│   │   │   │   │   ├── kerberos preauth
│   │   │   │   │   │   ├── general primer
│   │   │   │   │   │   └── preauth how and why
│   │   │   │   │   ├── krbtgt account
│   │   │   │   │   │   ├── changing the krbtgt password
│   │   │   │   │   │   ├── general primer
│   │   │   │   │   │   └── script to identify krbtgt account info
│   │   │   │   │   ├── silver tickets
│   │   │   │   │   │   ├── detection
│   │   │   │   │   │   ├── examples
│   │   │   │   │   │   │   ├── cifs admin access
│   │   │   │   │   │   │   ├── host admin access
│   │   │   │   │   │   │   ├── ldap admin access
│   │   │   │   │   │   │   ├── psremoting admin access
│   │   │   │   │   │   │   └── wmi admin access
│   │   │   │   │   │   ├── general primer
│   │   │   │   │   │   ├── services silver ticket reference
│   │   │   │   │   │   ├── silver tickets with mimikatz
│   │   │   │   │   │   └── what is needed
│   │   │   │   │   └── ticket process overview
│   │   │   │   │       ├── detailed ticket process
│   │   │   │   │       ├── kerberos keys
│   │   │   │   │       ├── kerberos krbtgt
│   │   │   │   │       ├── kerberos preauth
│   │   │   │   │       ├── kerberos tgt and pac
│   │   │   │   │       └── obtain a ticket without a domain
│   │   │   │   ├── laps
│   │   │   │   │   ├── general primer
│   │   │   │   │   └── laps recon
│   │   │   │   ├── lsass
│   │   │   │   │   ├── lsa protection
│   │   │   │   │   │   └── protected process light
│   │   │   │   │   ├── lsa secrets
│   │   │   │   │   ├── microsoft docs on lsass
│   │   │   │   │   └── sam
│   │   │   │   ├── pass the hash
│   │   │   │   │   ├── general primer
│   │   │   │   │   ├── others
│   │   │   │   │   ├── psexec
│   │   │   │   │   │   └── gpo issues
│   │   │   │   │   └── tools using pass the hash
│   │   │   │   ├── pass the key - overpass the hash
│   │   │   │   │   ├── general primer
│   │   │   │   │   ├── obtaining keys - hash
│   │   │   │   │   │   ├── from ad offline
│   │   │   │   │   │   ├── from ad online
│   │   │   │   │   │   └── from client lsass memory
│   │   │   │   │   └── overpass the key - hash
│   │   │   │   │       └── with mimikatz
│   │   │   │   ├── pass the ticket
│   │   │   │   │   ├── obtaining tickets
│   │   │   │   │   │   └── from client lsass memory
│   │   │   │   │   ├── passing tickets
│   │   │   │   │   └── through ssh tunnels
│   │   │   │   │       ├── general primer
│   │   │   │   │       ├── golden
│   │   │   │   │       └── silver
│   │   │   │   ├── password cracking
│   │   │   │   │   ├── cached domain credentials
│   │   │   │   │   ├── gpo
│   │   │   │   │   ├── in-memory
│   │   │   │   │   ├── local sam hashes
│   │   │   │   │   ├── lsa secrets
│   │   │   │   │   └── ntds.dit
│   │   │   │   ├── password dumping
│   │   │   │   │   └── windows
│   │   │   │   │       ├── add (ntds.dit)
│   │   │   │   │       │   ├── corrupted ntds.dit
│   │   │   │   │       │   ├── decrypting ntds.dit 2
│   │   │   │   │       │   │   └── extract hashes from ntds.dit
│   │   │   │   │       │   ├── mimikatz dump
│   │   │   │   │       │   │   ├── locally using invoke-mimikatz (on the dc
│   │   │   │   │       │   │   ├── remotely using dcsync
│   │   │   │   │       │   │   └── remotely using invoke-mimikatz (via powe
│   │   │   │   │       │   ├── pentestelab list
│   │   │   │   │       │   ├── pulling ntds.dit locally-remotely using
│   │   │   │   │       │   ├── pulling ntds.dit locally-remotely using 2
│   │   │   │   │       │   ├── pulling ntds.dit locally using ntdsutil
│   │   │   │   │       │   ├── pulling ntds.dit remotely using powerspl
│   │   │   │   │       │   ├── pulling ntds.dit remotely using vss shad
│   │   │   │   │       │   └── using powershell get-addbaccount
│   │   │   │   │       │       └── list of cmdlets
│   │   │   │   │       ├── credential manager - protected storage
│   │   │   │   │       ├── dc replication
│   │   │   │   │       │   ├── remotely using dcsync
│   │   │   │   │       │   └── remotely using samba-tools
│   │   │   │   │       │       ├── do_join
│   │   │   │   │       │       ├── hashes after join dc
│   │   │   │   │       │       │   └── samba-pwdump.py
│   │   │   │   │       │       ├── join_finalize
│   │   │   │   │       │       └── samba-4.1-replicate-only
│   │   │   │   │       ├── dpapi
│   │   │   │   │       ├── laps
│   │   │   │   │       │   ├── ad module
│   │   │   │   │       │   ├── adsi
│   │   │   │   │       │   ├── ldapsearch
│   │   │   │   │       │   ├── metasploit enum_laps
│   │   │   │   │       │   └── mitigation
│   │   │   │   │       ├── lsass
│   │   │   │   │       │   ├── mimikatz
│   │   │   │   │       │   ├── procdump
│   │   │   │   │       │   │   └── using procdump
│   │   │   │   │       │   ├── vmss2core
│   │   │   │   │       │   │   ├── using vmss2core
│   │   │   │   │       │   │   └── using volatility
│   │   │   │   │       │   ├── volatility
│   │   │   │   │       │   └── wdigest
│   │   │   │   │       ├── random password recovery applications
│   │   │   │   │       ├── sam - system - security
│   │   │   │   │       │   ├── in-memory
│   │   │   │   │       │   │   ├── fgdump
│   │   │   │   │       │   │   ├── mimikatz
│   │   │   │   │       │   │   └── windows credential editor
│   │   │   │   │       │   ├── nt and 2000
│   │   │   │   │       │   ├── physical
│   │   │   │   │       │   ├── post escalation
│   │   │   │   │       │   ├── shadow copies
│   │   │   │   │       │   └── winxp - win7
│   │   │   │   │       └── wireless configurations
│   │   │   │   │           └── general primer
│   │   │   │   ├── password locations
│   │   │   │   │   ├── reference
│   │   │   │   │   │   ├── archives
│   │   │   │   │   │   │   └── rar-winrar v 2.9-5.xx
│   │   │   │   │   │   ├── popular applications
│   │   │   │   │   │   │   ├── dialup-vpn (2000-xp-vista-2003)
│   │   │   │   │   │   │   ├── email
│   │   │   │   │   │   │   │   ├── live mail
│   │   │   │   │   │   │   │   ├── outlook 2002-2008
│   │   │   │   │   │   │   │   ├── outlook 98-2000
│   │   │   │   │   │   │   │   ├── outlook express
│   │   │   │   │   │   │   │   └── thunderbird
│   │   │   │   │   │   │   ├── web browsers
│   │   │   │   │   │   │   │   ├── chrome
│   │   │   │   │   │   │   │   │   └── get-chromedump.ps1
│   │   │   │   │   │   │   │   ├── firefox
│   │   │   │   │   │   │   │   │   └── storage breakdown
│   │   │   │   │   │   │   │   ├── ie
│   │   │   │   │   │   │   │   │   ├── version 4-6
│   │   │   │   │   │   │   │   │   └── version 7-8
│   │   │   │   │   │   │   │   └── opera
│   │   │   │   │   │   │   └── windows network passwords (xp-vista-2003
│   │   │   │   │   │   └── uncommon applications
│   │   │   │   │   │       ├── digsby
│   │   │   │   │   │       ├── icq 6.x
│   │   │   │   │   │       ├── icq lite 4-5-2003
│   │   │   │   │   │       ├── instant messenger
│   │   │   │   │   │       │   ├── aim 6
│   │   │   │   │   │       │   ├── aim pro
│   │   │   │   │   │       │   ├── google desktop
│   │   │   │   │   │       │   ├── google talk
│   │   │   │   │   │       │   ├── live messenger version 8-9
│   │   │   │   │   │       │   ├── msn messenger version 6.x
│   │   │   │   │   │       │   ├── msn messenger version 7.x
│   │   │   │   │   │       │   ├── yahoo messenger 6
│   │   │   │   │   │       │   └── yahoo messenger 7.5+
│   │   │   │   │   │       └── paltalkscene
│   │   │   │   │   └── windows
│   │   │   │   │       ├── password in file-regkey search
│   │   │   │   │       ├── passwords in group policy files
│   │   │   │   │       ├── passwords in registry
│   │   │   │   │       │   └── exploit
│   │   │   │   │       └── passwords in unattend
│   │   │   │   ├── passwords and hashes
│   │   │   │   ├── set up cloud password cracker
│   │   │   │   ├── ssps
│   │   │   │   │   ├── digest access protocol
│   │   │   │   │   │   ├── contents of a digest challenge
│   │   │   │   │   │   └── contents of a digest response
│   │   │   │   │   ├── ietf specifications for microsoft digest
│   │   │   │   │   ├── microsoft digest authentication
│   │   │   │   │   │   ├── authenticating subsequent requests
│   │   │   │   │   │   ├── initial auth using digest
│   │   │   │   │   │   └── maintaining security context
│   │   │   │   │   └── quality of protection and ciphers
│   │   │   │   │       ├── ciphers
│   │   │   │   │       └── quality of protection
│   │   │   │   ├── token impersonation
│   │   │   │   │   └── general primer
│   │   │   │   └── wordlists
│   │   │   │       ├── spraying wordlist
│   │   │   │       └── username mangle script
│   │   │   ├── payloads - lists - attack strings
│   │   │   │   ├── lists
│   │   │   │   └── password lists
│   │   │   ├── post-exploitation lateral movement
│   │   │   │   ├── general primer
│   │   │   │   ├── linux
│   │   │   │   │   └── rdp in linux
│   │   │   │   ├── multi
│   │   │   │   │   ├── metasploit
│   │   │   │   │   └── vnc
│   │   │   │   │       └── enable vnc
│   │   │   │   └── windows
│   │   │   │       ├── at
│   │   │   │       │   ├── abusing the scheduler
│   │   │   │       │   └── general primer
│   │   │   │       ├── dcom
│   │   │   │       │   ├── excel.application run
│   │   │   │       │   │   ├── invoke-excelmacropivot.ps1
│   │   │   │       │   │   ├── office shellcode
│   │   │   │       │   │   │   ├── sc-api-functions.asm
│   │   │   │       │   │   │   ├── sc-mba-hello.asm
│   │   │   │       │   │   │   └── sc-ods.asm
│   │   │   │       │   │   └── shellcode2vbascript.py
│   │   │   │       │   ├── general primer
│   │   │   │       │   ├── mmc20
│   │   │   │       │   └── shellexecute
│   │   │   │       ├── domain trusts
│   │   │   │       ├── dsc
│   │   │   │       │   └── powershelldsclateralmovement.ps1
│   │   │   │       ├── empire
│   │   │   │       │   ├── dcom
│   │   │   │       │   ├── executemsbuild
│   │   │   │       │   ├── inveigh_relay
│   │   │   │       │   ├── jenkins_script_console
│   │   │   │       │   ├── new_gpo_immediate_task
│   │   │   │       │   ├── psexec
│   │   │   │       │   ├── psremoting
│   │   │   │       │   ├── smbexec
│   │   │   │       │   ├── sqloscmd
│   │   │   │       │   ├── sshcommand
│   │   │   │       │   ├── wmi
│   │   │   │       │   └── wmidebugger
│   │   │   │       ├── finding specific user targets
│   │   │   │       │   ├── check locally
│   │   │   │       │   ├── general primer
│   │   │   │       │   ├── multi
│   │   │   │       │   │   ├── bloodhound
│   │   │   │       │   │   ├── luserhunter
│   │   │   │       │   │   └── powershell
│   │   │   │       │   │       ├── invoke-enumeratelocaladmins
│   │   │   │       │   │       ├── invoke-userhunter
│   │   │   │       │   │       │   └── how invoke-userhunter works
│   │   │   │       │   │       ├── invoke-userhunter -stealth
│   │   │   │       │   │       │   └── how invoke-userhunter stealth works
│   │   │   │       │   │       └── invoke-userlogonhunter
│   │   │   │       │   ├── psexec shell spray for auth tokens
│   │   │   │       │   ├── query for user sessions
│   │   │   │       │   │   ├── general primer
│   │   │   │       │   │   ├── get domain admins (gda)
│   │   │   │       │   │   │   └── gda.bat
│   │   │   │       │   │   ├── get domain users (gdu)
│   │   │   │       │   │   │   └── gdu.bat
│   │   │   │       │   │   ├── netsess
│   │   │   │       │   │   │   └── general primer
│   │   │   │       │   │   ├── netview
│   │   │   │       │   │   │   └── general primer
│   │   │   │       │   │   ├── nmap
│   │   │   │       │   │   │   └── general primer
│   │   │   │       │   │   ├── psloggedon
│   │   │   │       │   │   │   └── general primer
│   │   │   │       │   │   └── pvefindaduser
│   │   │   │       │   │       └── general primer
│   │   │   │       │   ├── scanning remote systems for netbios info
│   │   │   │       │   │   └── general primer
│   │   │   │       │   └── scanning remote systems for running task
│   │   │   │       │       └── general primer
│   │   │   │       ├── general primer
│   │   │   │       ├── links
│   │   │   │       ├── pass the cookie 2
│   │   │   │       │   ├── cookies of interest cheat sheet
│   │   │   │       │   └── general primer
│   │   │   │       ├── pass the hash
│   │   │   │       ├── popular builtin commands
│   │   │   │       ├── psexec
│   │   │   │       │   ├── general primer
│   │   │   │       │   ├── re-enable psexec
│   │   │   │       │   └── reminders
│   │   │   │       ├── rdp
│   │   │   │       │   ├── enable rdp remotely
│   │   │   │       │   ├── freerdp-x11 pass the hash
│   │   │   │       │   ├── mitigations
│   │   │   │       │   ├── mstsc pass the hash
│   │   │   │       │   │   └── restricted admin mode and rdp
│   │   │   │       │   └── rdp session hijack
│   │   │   │       │       └── mitigations
│   │   │   │       ├── registry
│   │   │   │       ├── services
│   │   │   │       ├── smb
│   │   │   │       │   ├── smbexec
│   │   │   │       │   └── xcopy
│   │   │   │       ├── vnc
│   │   │   │       ├── winrm
│   │   │   │       └── wmi
│   │   │   │           └── general primer
│   │   │   ├── post-exploitation persistence
│   │   │   │   ├── general post exploitation persistence
│   │   │   │   ├── linux
│   │   │   │   │   ├── automated
│   │   │   │   │   │   └── metasploit
│   │   │   │   │   │       ├── cron_persistence
│   │   │   │   │   │       └── service_persistence
│   │   │   │   │   ├── cover your tracks
│   │   │   │   │   │   └── things to do
│   │   │   │   │   ├── cron
│   │   │   │   │   │   ├── add to cron.allow
│   │   │   │   │   │   └── timed shell
│   │   │   │   │   ├── general persistence
│   │   │   │   │   ├── local
│   │   │   │   │   │   └── local user
│   │   │   │   │   ├── rootkits
│   │   │   │   │   ├── services
│   │   │   │   │   ├── sql
│   │   │   │   │   │   └── backdoor
│   │   │   │   │   ├── ssh
│   │   │   │   │   │   ├── private key
│   │   │   │   │   │   └── public key
│   │   │   │   │   ├── suid
│   │   │   │   │   └── web
│   │   │   │   │       └── backdoor webpage
│   │   │   │   ├── os x
│   │   │   │   │   └── links
│   │   │   │   └── windows
│   │   │   │       ├── accessibility program replacement
│   │   │   │       │   ├── debugger
│   │   │   │       │   ├── magnify.exe
│   │   │   │       │   ├── narrator.exe
│   │   │   │       │   ├── osk.exe
│   │   │   │       │   ├── pwn.bat
│   │   │   │       │   ├── sethc
│   │   │   │       │   └── utilman
│   │   │   │       ├── ad persistence
│   │   │   │       │   ├── adminsdholder and sdprop
│   │   │   │       │   │   ├── adminsdholder default protected objects
│   │   │   │       │   │   ├── default adminsdholder security acls
│   │   │   │       │   │   ├── exploiting adminsdholder and sdprop
│   │   │   │       │   │   ├── general primer
│   │   │   │       │   │   ├── manually triggering sdprop process
│   │   │   │       │   │   └── mitigation
│   │   │   │       │   ├── computer accounts and dc silver tickets
│   │   │   │       │   │   ├── exploitation and persistence
│   │   │   │       │   │   ├── general primer
│   │   │   │       │   │   ├── mitigation
│   │   │   │       │   │   └── privilege escalation
│   │   │   │       │   ├── creating spns
│   │   │   │       │   │   ├── general primer
│   │   │   │       │   │   ├── mitigations
│   │   │   │       │   │   └── persistence
│   │   │   │       │   ├── directory service restore mode (dsrm)
│   │   │   │       │   │   ├── changing the dsrm  account password
│   │   │   │       │   │   ├── dsrm pth to dcsync
│   │   │   │       │   │   ├── general primer
│   │   │   │       │   │   ├── logging on to dc with dsrm
│   │   │   │       │   │   ├── mitigation
│   │   │   │       │   │   ├── synchronize the dsrm password with domai
│   │   │   │       │   │   ├── using dsrm creds on the network
│   │   │   │       │   │   └── using dsrm to backdoor ad
│   │   │   │       │   ├── group policy
│   │   │   │       │   │   ├── general primer
│   │   │   │       │   │   ├── hidden group policy
│   │   │   │       │   │   ├── mitigations
│   │   │   │       │   │   └── persistence with group policy
│   │   │   │       │   ├── malicious security support provider (ssp
│   │   │   │       │   │   ├── detection
│   │   │   │       │   │   ├── dll registry ssp update scenario 1
│   │   │   │       │   │   ├── general primer
│   │   │   │       │   │   ├── get ssps and install ssp
│   │   │   │       │   │   ├── in-memory ssp update scenario 2
│   │   │   │       │   │   └── memssp
│   │   │   │       │   ├── other avenues
│   │   │   │       │   ├── seenabledelegationprivilege
│   │   │   │       │   │   └── s4u2
│   │   │   │       │   ├── sid history
│   │   │   │       │   │   ├── example
│   │   │   │       │   │   ├── general primer
│   │   │   │       │   │   └── mitigation
│   │   │   │       │   └── skeleton key
│   │   │   │       │       ├── general primer
│   │   │   │       │       ├── mimikatz skeleton key
│   │   │   │       │       └── mitigation
│   │   │   │       ├── alternate data streams
│   │   │   │       │   ├── add content to ads
│   │   │   │       │   │   ├── extrac32 ads
│   │   │   │       │   │   └── findstr ads
│   │   │   │       │   ├── backdoor executable hidden in data strea
│   │   │   │       │   ├── detecting ads
│   │   │   │       │   ├── executing data streams
│   │   │   │       │   │   ├── bitsadmin ads
│   │   │   │       │   │   ├── control ads
│   │   │   │       │   │   ├── cscript ads
│   │   │   │       │   │   ├── forfiles ads
│   │   │   │       │   │   ├── invoke-adsbackdoor.ps1
│   │   │   │       │   │   ├── mavinject ads
│   │   │   │       │   │   ├── mshta ads
│   │   │   │       │   │   ├── powershell ads
│   │   │   │       │   │   ├── regedit ads
│   │   │   │       │   │   ├── rundll32 ads
│   │   │   │       │   │   ├── services ads
│   │   │   │       │   │   ├── wmic alternate data stream execution
│   │   │   │       │   │   └── wscript ads
│   │   │   │       │   ├── general primer
│   │   │   │       │   └── hide stream from view
│   │   │   │       │       ├── dots
│   │   │   │       │       ├── numbers
│   │   │   │       │       └── spaces
│   │   │   │       ├── appdomainmanager
│   │   │   │       │   ├── general primer
│   │   │   │       │   └── hijack clr
│   │   │   │       │       ├── example hijack powershell ise
│   │   │   │       │       └── example hijack visual studio projects
│   │   │   │       ├── appx
│   │   │   │       │   ├── enable persistence
│   │   │   │       │   ├── general primer
│   │   │   │       │   └── things that dont work
│   │   │   │       ├── autoruns
│   │   │   │       │   ├── autorun directories
│   │   │   │       │   │   └── empty netsvcs keys on win7
│   │   │   │       │   ├── evading autoruns
│   │   │   │       │   │   ├── dll hijacking
│   │   │   │       │   │   ├── extension search order bug
│   │   │   │       │   │   ├── inf scriptlets
│   │   │   │       │   │   │   ├── advpack.dll
│   │   │   │       │   │   │   │   ├── cmstp
│   │   │   │       │   │   │   │   └── launchinfsection
│   │   │   │       │   │   │   ├── basics of inf and sct files
│   │   │   │       │   │   │   ├── file resources
│   │   │   │       │   │   │   │   ├── cmstp.inf
│   │   │   │       │   │   │   │   ├── powersct.sct
│   │   │   │       │   │   │   │   ├── regsvr32.sct
│   │   │   │       │   │   │   │   ├── shady.inf
│   │   │   │       │   │   │   │   └── test.sct
│   │   │   │       │   │   │   ├── ieadvpack.dll
│   │   │   │       │   │   │   │   └── ie4uinit
│   │   │   │       │   │   │   │       └── evasion  persistence
│   │   │   │       │   │   │   ├── ieexpress
│   │   │   │       │   │   │   ├── mitigations
│   │   │   │       │   │   │   ├── regsvr32
│   │   │   │       │   │   │   └── setupapi.dll
│   │   │   │       │   │   │       ├── infdefaultinstall
│   │   │   │       │   │   │       └── installhinfsection
│   │   │   │       │   │   ├── nested commands
│   │   │   │       │   │   ├── service dll bug
│   │   │   │       │   │   ├── shell32.dll indirection
│   │   │   │       │   │   ├── sip hijacking
│   │   │   │       │   │   └── syncappvpublishingservice
│   │   │   │       │   │       └── and syncappvpublishingserver!
│   │   │   │       │   ├── finding autoruns persistence
│   │   │   │       │   └── reference autorun database
│   │   │   │       ├── backdoored programs - code caves
│   │   │   │       │   ├── example auto start pidgin
│   │   │   │       │   ├── general primer
│   │   │   │       │   └── sign executables
│   │   │   │       ├── bitsadmin
│   │   │   │       │   ├── assembling a bits job
│   │   │   │       │   ├── general primer
│   │   │   │       │   ├── mitigation
│   │   │   │       │   ├── monitor the backdoor
│   │   │   │       │   ├── priming bits wtih schtasks
│   │   │   │       │   └── proof of concept bits backdoor
│   │   │   │       ├── clsid
│   │   │   │       │   └── general primer
│   │   │   │       ├── code shims
│   │   │   │       │   └── general primer
│   │   │   │       ├── forced authentication
│   │   │   │       │   ├── add evil share to victim path
│   │   │   │       │   ├── lmhosts.sam
│   │   │   │       │   │   ├── exploit
│   │   │   │       │   │   └── general primer
│   │   │   │       │   └── lnk shortcuts with unc icons
│   │   │   │       ├── gpo
│   │   │   │       │   ├── gpo machine scripts folder
│   │   │   │       │   │   └── general primer
│   │   │   │       │   └── pending gpo and inf
│   │   │   │       ├── hijack
│   │   │   │       │   ├── com object hijack
│   │   │   │       │   │   ├── general primer
│   │   │   │       │   │   ├── hijack com with scheduled tasks
│   │   │   │       │   │   └── hijacking analysis
│   │   │   │       │   ├── dll hijack
│   │   │   │       │   │   ├── general primer
│   │   │   │       │   │   └── msdtc
│   │   │   │       │   ├── file association hijack
│   │   │   │       │   └── lnkpath shortcut backdoor
│   │   │   │       │       └── general primer
│   │   │   │       ├── kerberos
│   │   │   │       ├── laps
│   │   │   │       │   ├── attacking searchflags attribute with mim
│   │   │   │       │   │   └── mitigation
│   │   │   │       │   └── poisoning admpwd.dll
│   │   │   │       │       └── mitigation
│   │   │   │       ├── links
│   │   │   │       ├── local user accounts
│   │   │   │       │   ├── disable machine account password change
│   │   │   │       │   ├── local account
│   │   │   │       │   └── support account
│   │   │   │       ├── low level persistence
│   │   │   │       │   ├── amt
│   │   │   │       │   ├── bios - uefi
│   │   │   │       │   ├── esoteric firmware
│   │   │   │       │   ├── hypervisor - ring 1
│   │   │   │       │   ├── master boot record
│   │   │   │       │   ├── smm - ring 2
│   │   │   │       │   └── volume boot record
│   │   │   │       ├── memory only
│   │   │   │       │   ├── deaduser
│   │   │   │       │   ├── eventlog rdp
│   │   │   │       │   ├── general primer
│   │   │   │       │   └── resolver
│   │   │   │       ├── mitm - network - proxy settings
│   │   │   │       │   ├── general primer
│   │   │   │       │   ├── ntsd debug tunnel
│   │   │   │       │   ├── pptp tunnel
│   │   │   │       │   ├── proxy settings
│   │   │   │       │   │   ├── global
│   │   │   │       │   │   ├── port forwarding
│   │   │   │       │   │   │   └── abusing portproxy
│   │   │   │       │   │   └── wpad
│   │   │   │       │   └── root ca
│   │   │   │       ├── ms office
│   │   │   │       │   ├── canary document
│   │   │   │       │   ├── ddeauto
│   │   │   │       │   ├── macros
│   │   │   │       │   │   ├── attackmacro
│   │   │   │       │   │   └── persist.ps1
│   │   │   │       │   └── vsto persistence
│   │   │   │       ├── passwords filters - loggers - dump - res
│   │   │   │       │   ├── general primer
│   │   │   │       │   ├── kikwissp
│   │   │   │       │   │   ├── general primer
│   │   │   │       │   │   └── get_ssps
│   │   │   │       │   ├── password filters
│   │   │   │       │   │   ├── general primer
│   │   │   │       │   │   ├── install and register filter walkthrough
│   │   │   │       │   │   ├── install and register filter walkthrough 2
│   │   │   │       │   │   │   └── code
│   │   │   │       │   │   └── reflective inject install and register f
│   │   │   │       │   └── wireless passwords
│   │   │   │       ├── physical access
│   │   │   │       ├── rats
│   │   │   │       │   ├── powershell remoting
│   │   │   │       │   └── rdp
│   │   │   │       ├── registry
│   │   │   │       │   ├── disable nla
│   │   │   │       │   ├── enable rdp
│   │   │   │       │   ├── execution from registry
│   │   │   │       │   ├── general primer
│   │   │   │       │   ├── run and runonce
│   │   │   │       │   │   ├── general primer
│   │   │   │       │   │   └── hkcu currentversion run
│   │   │   │       │   ├── weaken windows search paths
│   │   │   │       │   └── winlogon - userinit
│   │   │   │       ├── rename on next reboot
│   │   │   │       │   └── general primer
│   │   │   │       ├── scheduled tasks
│   │   │   │       │   ├── at
│   │   │   │       │   ├── hijack via clsid
│   │   │   │       │   │   ├── general primer
│   │   │   │       │   │   └── get-scheduledtaskcomhandler.ps1
│   │   │   │       │   ├── schtasks create a task
│   │   │   │       │   └── windows event log driven tasks
│   │   │   │       │       ├── account locked out task
│   │   │   │       │       ├── identifying logs with wevtutil
│   │   │   │       │       └── user initiated logoff task
│   │   │   │       └── wmi
│   │   │   │           ├── malicious wmi providers
│   │   │   │           │   └── general primer
│   │   │   │           ├── mitigations
│   │   │   │           ├── mof
│   │   │   │           │   ├── example execution
│   │   │   │           │   │   ├── mof_example_1 run command
│   │   │   │           │   │   ├── mof_example_2 embed payload
│   │   │   │           │   │   └── mof_example_3 embed payload with autost
│   │   │   │           │   ├── general primer
│   │   │   │           │   │   └── mof file structure
│   │   │   │           │   │       ├── cd rom wql example
│   │   │   │           │   │       ├── complete example
│   │   │   │           │   │       └── ntlogevent wql example
│   │   │   │           │   ├── post exploitation context
│   │   │   │           │   └── started with stuxnet
│   │   │   │           ├── scripts
│   │   │   │           │   ├── basic backdoor wmi
│   │   │   │           │   ├── empire
│   │   │   │           │   ├── invoke-wmilm.ps1
│   │   │   │           │   │   └── general primer
│   │   │   │           │   └── pocs only
│   │   │   │           │       ├── wmi_backdoor_client.ps1
│   │   │   │           │       │   └── usage
│   │   │   │           │       └── wmi_persistence_template.ps1
│   │   │   │           └── wmic
│   │   │   │               ├── example
│   │   │   │               └── general primer
│   │   │   ├── post privesc pillage - loot
│   │   │   │   ├── general primer
│   │   │   │   ├── linux
│   │   │   │   │   ├── application data
│   │   │   │   │   ├── delete history - logs
│   │   │   │   │   │   ├── apache
│   │   │   │   │   │   ├── history
│   │   │   │   │   │   ├── log files
│   │   │   │   │   │   ├── shred
│   │   │   │   │   │   └── utmp - wtmp
│   │   │   │   │   ├── files
│   │   │   │   │   ├── gui browser enum
│   │   │   │   │   ├── network capture
│   │   │   │   │   │   └── tcpdump
│   │   │   │   │   └── passwords
│   │   │   │   ├── os x
│   │   │   │   │   └── general primer
│   │   │   │   └── windows
│   │   │   │       ├── application data
│   │   │   │       │   └── web cookies
│   │   │   │       ├── delete history - logs
│   │   │   │       │   └── metasploit
│   │   │   │       │       └── meterpreter
│   │   │   │       ├── files
│   │   │   │       ├── network capture
│   │   │   │       │   └── meterpreter
│   │   │   │       ├── passwords
│   │   │   │       ├── processes
│   │   │   │       └── token stealing
│   │   │   ├── pre-exploitation enumeration
│   │   │   │   ├── active
│   │   │   │   │   ├── dns
│   │   │   │   │   │   ├── dns subdomains
│   │   │   │   │   │   ├── dns zone transfer
│   │   │   │   │   │   ├── general primer
│   │   │   │   │   │   ├── reverse lookup
│   │   │   │   │   │   └── srv records
│   │   │   │   │   ├── internal infrastructure mapping
│   │   │   │   │   │   ├── identify alive ips
│   │   │   │   │   │   │   ├── host os identification with ping
│   │   │   │   │   │   │   └── icmp protocol
│   │   │   │   │   │   ├── internal range identification
│   │   │   │   │   │   └── port scanning
│   │   │   │   │   │       ├── identify service versions
│   │   │   │   │   │       ├── probe types
│   │   │   │   │   │       ├── scan types
│   │   │   │   │   │       │   └── idle scan
│   │   │   │   │   │       └── timing and efficiency arguments
│   │   │   │   │   └── man-in-the-middle
│   │   │   │   ├── common protocols and ports
│   │   │   │   │   ├── 1099 java rmi
│   │   │   │   │   ├── 110 pop3
│   │   │   │   │   ├── 111 rpcbind
│   │   │   │   │   ├── 123 ntp
│   │   │   │   │   ├── 135 msrpc
│   │   │   │   │   ├── 137 - 139 netbios
│   │   │   │   │   ├── 139 - 445 smb-samba
│   │   │   │   │   │   ├── smb nse scripts
│   │   │   │   │   │   └── todo
│   │   │   │   │   ├── 1433 mssql
│   │   │   │   │   │   └── mssql nse scripts
│   │   │   │   │   ├── 143 - 993 imap
│   │   │   │   │   ├── 1521 oracle
│   │   │   │   │   │   ├── msf modules
│   │   │   │   │   │   └── oracle nse scripts
│   │   │   │   │   ├── 161 - 162 snmp
│   │   │   │   │   │   ├── bypassing snmp acl
│   │   │   │   │   │   ├── general primer
│   │   │   │   │   │   │   ├── protocol details
│   │   │   │   │   │   │   └── snmp versions
│   │   │   │   │   │   ├── reading mib easy mode
│   │   │   │   │   │   └── snmp todo
│   │   │   │   │   ├── 180 ris
│   │   │   │   │   ├── 1898 cymtec
│   │   │   │   │   ├── 2049 nfs
│   │   │   │   │   │   └── nfs nse scripts
│   │   │   │   │   ├── 21 ftp
│   │   │   │   │   │   └── ftp nse scripts
│   │   │   │   │   ├── 22 ssh
│   │   │   │   │   ├── 23 telnet
│   │   │   │   │   ├── 25 smtp
│   │   │   │   │   │   ├── manual python user script
│   │   │   │   │   │   └── smtp nse script
│   │   │   │   │   ├── 3306 mysql
│   │   │   │   │   │   └── mysql nse scripts
│   │   │   │   │   ├── 3389 rdp
│   │   │   │   │   │   ├── general primer
│   │   │   │   │   │   ├── mitigations
│   │   │   │   │   │   ├── mitm rdp
│   │   │   │   │   │   │   ├── credssp
│   │   │   │   │   │   │   ├── enhanced
│   │   │   │   │   │   │   ├── performing mitm rdp
│   │   │   │   │   │   │   └── standard
│   │   │   │   │   │   └── rdp-sec-check
│   │   │   │   │   ├── 389 - 636 ldap
│   │   │   │   │   ├── 53 dns
│   │   │   │   │   ├── 5900 vnc
│   │   │   │   │   ├── 5985-6 winrm-psremoting
│   │   │   │   │   ├── 631 cups
│   │   │   │   │   ├── 69 tftp
│   │   │   │   │   ├── 80-443-8000-8080 http
│   │   │   │   │   │   ├── common cms web-services
│   │   │   │   │   │   │   ├── cold-fusion
│   │   │   │   │   │   │   ├── drupal
│   │   │   │   │   │   │   ├── elastix
│   │   │   │   │   │   │   ├── joomla
│   │   │   │   │   │   │   ├── phpmyadmin
│   │   │   │   │   │   │   ├── tomcat jserv
│   │   │   │   │   │   │   │   └── jserv
│   │   │   │   │   │   │   ├── webdav
│   │   │   │   │   │   │   │   └── webdav upload
│   │   │   │   │   │   │   ├── webmin
│   │   │   │   │   │   │   └── wordpress
│   │   │   │   │   │   ├── directory brute forcing
│   │   │   │   │   │   └── major vulns
│   │   │   │   │   ├── 88 kerberos
│   │   │   │   │   ├── 9389 rsat
│   │   │   │   │   └── rpc ports
│   │   │   │   │       ├── dcom
│   │   │   │   │       ├── empv4 rpc mapper
│   │   │   │   │       ├── ip transition configuration endpoint
│   │   │   │   │       ├── ms-tsch
│   │   │   │   │       └── ncacn_ip_tcp
│   │   │   │   ├── enumeration
│   │   │   │   ├── less frequent protocols and ports
│   │   │   │   │   ├── 5353-u mdns
│   │   │   │   │   └── 548 afp
│   │   │   │   ├── local group enumeration
│   │   │   │   │   ├── through gpo
│   │   │   │   │   └── through group queries
│   │   │   │   ├── network netstat output
│   │   │   │   ├── passive
│   │   │   │   │   ├── asn number
│   │   │   │   │   ├── external websites
│   │   │   │   │   │   ├── dns dumpster
│   │   │   │   │   │   ├── google search operators
│   │   │   │   │   │   ├── harvester
│   │   │   │   │   │   ├── public scans of ips
│   │   │   │   │   │   ├── recon-ng
│   │   │   │   │   │   └── reverse dns
│   │   │   │   │   ├── local sniffing
│   │   │   │   │   └── whois
│   │   │   │   ├── password policy
│   │   │   │   │   └── get-addomainaccountpolicies
│   │   │   │   ├── port knocking
│   │   │   │   │   └── knock.sh
│   │   │   │   └── users - groups - shares
│   │   │   │       └── first three commands
│   │   │   ├── privilege escalation
│   │   │   │   ├── aix
│   │   │   │   │   └── general primer
│   │   │   │   ├── aws
│   │   │   │   │   ├── general primer
│   │   │   │   │   └── links
│   │   │   │   ├── general privilege escalation
│   │   │   │   ├── hardware based
│   │   │   │   │   └── links
│   │   │   │   ├── linux
│   │   │   │   │   ├── binary exploitation
│   │   │   │   │   │   └── general primer
│   │   │   │   │   ├── configuration - sensitive files
│   │   │   │   │   │   ├── dnsmasq
│   │   │   │   │   │   ├── general primer
│   │   │   │   │   │   ├── inetd.conf
│   │   │   │   │   │   ├── passwd
│   │   │   │   │   │   │   └── create_passwd_from_shadow
│   │   │   │   │   │   ├── samba
│   │   │   │   │   │   └── sudoers
│   │   │   │   │   ├── cron
│   │   │   │   │   │   ├── file overwrite
│   │   │   │   │   │   │   ├── exploit
│   │   │   │   │   │   │   └── general primer
│   │   │   │   │   │   ├── general primer
│   │   │   │   │   │   ├── path
│   │   │   │   │   │   │   ├── exploit
│   │   │   │   │   │   │   └── general primer
│   │   │   │   │   │   └── wildcards
│   │   │   │   │   │       ├── exploit
│   │   │   │   │   │       └── general primer
│   │   │   │   │   ├── daemons
│   │   │   │   │   │   ├── exim quick win
│   │   │   │   │   │   │   └── exploit
│   │   │   │   │   │   └── general primer
│   │   │   │   │   ├── env variables
│   │   │   │   │   │   ├── ifs internal field separator
│   │   │   │   │   │   │   ├── ifs hijacking
│   │   │   │   │   │   │   └── reference example
│   │   │   │   │   │   ├── ld_preload - ld_library_path
│   │   │   │   │   │   │   ├── exploit
│   │   │   │   │   │   │   │   ├── copy pasta
│   │   │   │   │   │   │   │   └── ld_preload walkthrough
│   │   │   │   │   │   │   └── general primer
│   │   │   │   │   │   └── path manipulation
│   │   │   │   │   │       └── cwd in path
│   │   │   │   │   ├── everything to enumerate
│   │   │   │   │   │   ├── alternate sudo binaries
│   │   │   │   │   │   ├── cached kerberos tickets
│   │   │   │   │   │   ├── cron check misconfiguration
│   │   │   │   │   │   ├── determine distro
│   │   │   │   │   │   ├── -etc-shadow access
│   │   │   │   │   │   ├── file capabilities
│   │   │   │   │   │   ├── finding files
│   │   │   │   │   │   ├── git check
│   │   │   │   │   │   ├── installed packages
│   │   │   │   │   │   ├── kernel check known exploits
│   │   │   │   │   │   ├── nfs check excessive permissions
│   │   │   │   │   │   ├── passwords in files
│   │   │   │   │   │   ├── proc filesystem
│   │   │   │   │   │   ├── samba
│   │   │   │   │   │   ├── ssh check
│   │   │   │   │   │   ├── startup check init.d
│   │   │   │   │   │   ├── sudo check misconfiguration
│   │   │   │   │   │   ├── suid check environment
│   │   │   │   │   │   ├── suid check executables
│   │   │   │   │   │   ├── suid check shared objects
│   │   │   │   │   │   ├── suid check symlinks
│   │   │   │   │   │   ├── users-groups-sudoers
│   │   │   │   │   │   └── what do most scripts enum
│   │   │   │   │   │       ├── common checks
│   │   │   │   │   │       ├── extra checks
│   │   │   │   │   │       ├── lin enum
│   │   │   │   │   │       ├── linux local enum
│   │   │   │   │   │       ├── linuxprivchecker
│   │   │   │   │   │       │   └── sploits
│   │   │   │   │   │       ├── lynis
│   │   │   │   │   │       ├── privesc check
│   │   │   │   │   │       └── uncommon checks
│   │   │   │   │   ├── general primer
│   │   │   │   │   │   └── easy wins
│   │   │   │   │   ├── kernel exploits linux
│   │   │   │   │   │   └── general primer
│   │   │   │   │   ├── linux general tricks
│   │   │   │   │   ├── nfs shares
│   │   │   │   │   │   ├── exploit
│   │   │   │   │   │   │   └── no_root_squash
│   │   │   │   │   │   └── general primer
│   │   │   │   │   ├── password mining
│   │   │   │   │   │   ├── files
│   │   │   │   │   │   │   ├── configs
│   │   │   │   │   │   │   │   └── general primer
│   │   │   │   │   │   │   ├── history
│   │   │   │   │   │   │   │   └── general primer
│   │   │   │   │   │   │   └── logs
│   │   │   │   │   │   │       └── general primer
│   │   │   │   │   │   └── memory dumping
│   │   │   │   │   │       ├── exploit
│   │   │   │   │   │       └── general primer
│   │   │   │   │   ├── privileged groups
│   │   │   │   │   │   ├── adm
│   │   │   │   │   │   ├── disk
│   │   │   │   │   │   ├── ubuntu 11.10 admin
│   │   │   │   │   │   └── video
│   │   │   │   │   ├── process invoked as root
│   │   │   │   │   │   ├── apache - webservers
│   │   │   │   │   │   ├── apt - dpkg
│   │   │   │   │   │   │   ├── apt-get path hijack
│   │   │   │   │   │   │   └── pre andor post hooks
│   │   │   │   │   │   └── mysql
│   │   │   │   │   ├── rbash - restricted shell
│   │   │   │   │   │   ├── bash_profile
│   │   │   │   │   │   ├── busybox
│   │   │   │   │   │   ├── change path or shell env
│   │   │   │   │   │   │   └── change ifs
│   │   │   │   │   │   ├── copy files
│   │   │   │   │   │   ├── escape mitigations
│   │   │   │   │   │   ├── general primer
│   │   │   │   │   │   ├── history file trick
│   │   │   │   │   │   ├── lshell
│   │   │   │   │   │   ├── recon
│   │   │   │   │   │   ├── sh
│   │   │   │   │   │   ├── spawn shell from program
│   │   │   │   │   │   │   ├── make your own script
│   │   │   │   │   │   │   ├── mysql
│   │   │   │   │   │   │   ├── nano
│   │   │   │   │   │   │   ├── nmap
│   │   │   │   │   │   │   ├── scp
│   │   │   │   │   │   │   └── vi - editors
│   │   │   │   │   │   └── ssh
│   │   │   │   │   ├── startup scripts
│   │   │   │   │   │   └── general primer
│   │   │   │   │   ├── sudo rights
│   │   │   │   │   │   ├── alternative sudo binaries
│   │   │   │   │   │   ├── excessive - dangerous binaries allowed
│   │   │   │   │   │   │   ├── apache
│   │   │   │   │   │   │   └── npm
│   │   │   │   │   │   ├── general primer
│   │   │   │   │   │   └── mitigation
│   │   │   │   │   ├── suid - sgid
│   │   │   │   │   │   ├── default suid binaries
│   │   │   │   │   │   ├── environment variables
│   │   │   │   │   │   │   ├── exploit suid path hijack
│   │   │   │   │   │   │   └── general primer
│   │   │   │   │   │   ├── executables
│   │   │   │   │   │   │   ├── methodology
│   │   │   │   │   │   │   ├── suidchecker.sh
│   │   │   │   │   │   │   └── suid on bash dash sh
│   │   │   │   │   │   ├── general primer
│   │   │   │   │   │   ├── set uid-gid-shell in c program
│   │   │   │   │   │   ├── shared objects
│   │   │   │   │   │   │   ├── exploit
│   │   │   │   │   │   │   ├── general primer
│   │   │   │   │   │   │   │   ├── explicit loading-linking
│   │   │   │   │   │   │   │   └── implicit loading-linking
│   │   │   │   │   │   │   └── so injection
│   │   │   │   │   │   └── symlink
│   │   │   │   │   │       ├── example
│   │   │   │   │   │       └── general primer
│   │   │   │   │   ├── symlinks
│   │   │   │   │   │   ├── general primer
│   │   │   │   │   │   └── symlink ftp - apache for root
│   │   │   │   │   ├── use dev-shm instead of tmp
│   │   │   │   │   ├── wildcard injection
│   │   │   │   │   │   ├── chmod
│   │   │   │   │   │   ├── chown
│   │   │   │   │   │   ├── general primer
│   │   │   │   │   │   ├── ln
│   │   │   │   │   │   ├── rsync
│   │   │   │   │   │   ├── scp
│   │   │   │   │   │   ├── sudoedit
│   │   │   │   │   │   └── tar
│   │   │   │   │   └── x over ssh
│   │   │   │   ├── network access control
│   │   │   │   │   ├── attacking captive portals
│   │   │   │   │   │   ├── mac impersonation
│   │   │   │   │   │   ├── sample windows ios osfuscate
│   │   │   │   │   │   └── scapy ipad-like connection
│   │   │   │   │   ├── attacking ieee 802.1x
│   │   │   │   │   │   └── vlans dtp and cdp
│   │   │   │   │   └── general primer
│   │   │   │   ├── osx
│   │   │   │   │   └── links
│   │   │   │   ├── script abuse
│   │   │   │   │   └── python
│   │   │   │   │       ├── imports
│   │   │   │   │       └── inputs eval builtins
│   │   │   │   │           ├── finding builtins
│   │   │   │   │           ├── python2 payload samples
│   │   │   │   │           └── python3 payload samples
│   │   │   │   └── windows
│   │   │   │       ├── admin to system
│   │   │   │       │   ├── escalate to system
│   │   │   │       │   │   ├── at
│   │   │   │       │   │   ├── cmd debug
│   │   │   │       │   │   ├── malicious msi
│   │   │   │       │   │   │   └── custom wix file
│   │   │   │       │   │   ├── metasploit
│   │   │   │       │   │   ├── proc_thread_attribute_parent_process 2
│   │   │   │       │   │   ├── psexec i
│   │   │   │       │   │   ├── schtasks
│   │   │   │       │   │   ├── system service binary
│   │   │   │       │   │   ├── token stealing
│   │   │   │       │   │   └── wmic
│   │   │   │       │   └── general primer
│   │   │   │       ├── automated exploit
│   │   │   │       │   ├── invoke-aclpwn
│   │   │   │       │   ├── meterpreter getsystem
│   │   │   │       │   │   ├── technique 1 namedpipe cmd
│   │   │   │       │   │   ├── technique 2 namedpipe dll
│   │   │   │       │   │   └── technique 3 token dupe
│   │   │   │       │   ├── powersploit powerup
│   │   │   │       │   └── spoof - relay
│   │   │   │       │       ├── abusing ntlm with relay
│   │   │   │       │       │   ├── general primer
│   │   │   │       │       │   ├── mitigations
│   │   │   │       │       │   ├── obtaining ntlm traffic
│   │   │   │       │       │   │   ├── auto discovery protocols
│   │   │   │       │       │   │   ├── insecure name resolution
│   │   │   │       │       │   │   └── man in the middle
│   │   │   │       │       │   └── relay everywhere
│   │   │   │       │       │       ├── imap
│   │   │   │       │       │       ├── ldap
│   │   │   │       │       │       ├── mssql
│   │   │   │       │       │       └── smb
│   │   │   │       │       ├── general primer
│   │   │   │       │       └── tldr
│   │   │   │       ├── defense bypass material
│   │   │   │       │   ├── antimalware scan interface amsi
│   │   │   │       │   ├── antivirus
│   │   │   │       │   │   ├── embed non-malicious file
│   │   │   │       │   │   │   ├── msf exe template
│   │   │   │       │   │   │   └── shellter project
│   │   │   │       │   │   ├── encoding
│   │   │   │       │   │   └── encrypting malware
│   │   │   │       │   ├── application whitelisting
│   │   │   │       │   │   ├── compiled html files
│   │   │   │       │   │   ├── mavinject and syncappvpublishingserver
│   │   │   │       │   │   ├── mshta
│   │   │   │       │   │   ├── msxsl and squiblytwo
│   │   │   │       │   │   ├── pubprn.vbs
│   │   │   │       │   │   ├── rundll32
│   │   │   │       │   │   └── trusted developer utilities
│   │   │   │       │   │       ├── dnx
│   │   │   │       │   │       ├── msbuild
│   │   │   │       │   │       │   └── generating the msbuild.xml
│   │   │   │       │   │       ├── rcsi
│   │   │   │       │   │       ├── tracker
│   │   │   │       │   │       └── windbg and cdb
│   │   │   │       │   ├── applocker bypass
│   │   │   │       │   │   ├── advpack.dll
│   │   │   │       │   │   │   ├── launchinfsection
│   │   │   │       │   │   │   └── registerocx
│   │   │   │       │   │   ├── alternate data streams
│   │   │   │       │   │   │   └── executing from ads
│   │   │   │       │   │   ├── bypass using file locations
│   │   │   │       │   │   ├── cmstp
│   │   │   │       │   │   │   ├── dll from localhost using cmstp
│   │   │   │       │   │   │   │   ├── file resources
│   │   │   │       │   │   │   │   │   ├── dll.inf
│   │   │   │       │   │   │   │   │   └── webdav.inf
│   │   │   │       │   │   │   │   └── general primer
│   │   │   │       │   │   │   ├── dll from webdav using cmstp
│   │   │   │       │   │   │   │   ├── file resources
│   │   │   │       │   │   │   │   │   ├── corpvpn.cmp
│   │   │   │       │   │   │   │   │   ├── corpvpn.cms
│   │   │   │       │   │   │   │   │   └── corpvpn.inf
│   │   │   │       │   │   │   │   └── general primer
│   │   │   │       │   │   │   └── sct using cmstp
│   │   │   │       │   │   │       ├── file resources
│   │   │   │       │   │   │       │   ├── powersct.inf
│   │   │   │       │   │   │       │   ├── powersct.sct
│   │   │   │       │   │   │       │   ├── sct.inf
│   │   │   │       │   │   │       │   └── sct.sct
│   │   │   │       │   │   │       └── general primer
│   │   │   │       │   │   ├── cor_profile injection
│   │   │   │       │   │   │   ├── cor_profile execution
│   │   │   │       │   │   │   └── general primer
│   │   │   │       │   │   ├── ieadvpack.dll
│   │   │   │       │   │   ├── ieframe.dll
│   │   │   │       │   │   ├── installutil
│   │   │   │       │   │   ├── microsoft.workflow.compiler
│   │   │   │       │   │   │   ├── compiler poc
│   │   │   │       │   │   │   │   ├── compiler test.xml
│   │   │   │       │   │   │   │   ├── compiler test.xoml
│   │   │   │       │   │   │   │   └── powershell generate compiler xml
│   │   │   │       │   │   │   └── compiler random ext poc
│   │   │   │       │   │   │       ├── compiler blah.foo
│   │   │   │       │   │   │       └── compiler test.txt
│   │   │   │       │   │   ├── powershell v2
│   │   │   │       │   │   ├── presentationhost
│   │   │   │       │   │   ├── regasm
│   │   │   │       │   │   ├── regsvcs
│   │   │   │       │   │   ├── regsvr and squiblydoo
│   │   │   │       │   │   ├── shdocvw.dll
│   │   │   │       │   │   ├── url.dll
│   │   │   │       │   │   │   ├── fileprotocolhandler
│   │   │   │       │   │   │   └── openurl
│   │   │   │       │   │   ├── vsto files
│   │   │   │       │   │   │   └── walkthrough
│   │   │   │       │   │   └── zipfldr.dll
│   │   │   │       │   ├── applocker partial bypass
│   │   │   │       │   │   ├── bginfo
│   │   │   │       │   │   ├── cdb
│   │   │   │       │   │   ├── cmstp
│   │   │   │       │   │   ├── control
│   │   │   │       │   │   ├── csi
│   │   │   │       │   │   ├── dfsvc
│   │   │   │       │   │   ├── dnx
│   │   │   │       │   │   ├── fsi
│   │   │   │       │   │   ├── ie4unit
│   │   │   │       │   │   ├── ieexec
│   │   │   │       │   │   ├── infdefaultinstall
│   │   │   │       │   │   ├── manage-bde
│   │   │   │       │   │   ├── mavinject
│   │   │   │       │   │   ├── msdeploy
│   │   │   │       │   │   ├── msdt
│   │   │   │       │   │   ├── msiexec
│   │   │   │       │   │   ├── msxsl
│   │   │   │       │   │   ├── odbcconf
│   │   │   │       │   │   ├── pubprn
│   │   │   │       │   │   ├── rcsi
│   │   │   │       │   │   ├── regsvr
│   │   │   │       │   │   ├── rsi
│   │   │   │       │   │   ├── rundll32
│   │   │   │       │   │   ├── runscripthelper
│   │   │   │       │   │   ├── slmgr
│   │   │   │       │   │   ├── syncappvpublishingserver
│   │   │   │       │   │   ├── te
│   │   │   │       │   │   ├── tracker
│   │   │   │       │   │   ├── winrm
│   │   │   │       │   │   ├── winword
│   │   │   │       │   │   ├── wmic 2
│   │   │   │       │   │   └── xwizard
│   │   │   │       │   ├── bypass codeexec misc
│   │   │   │       │   │   └── certutil
│   │   │   │       │   ├── dep bypass
│   │   │   │       │   │   └── general primer
│   │   │   │       │   ├── enumerate applocker policy
│   │   │   │       │   └── powershell
│   │   │   │       ├── dlls
│   │   │   │       │   ├── creating a dll
│   │   │   │       │   ├── detecting dll hijacking
│   │   │   │       │   ├── dll injection
│   │   │   │       │   │   ├── atombombing
│   │   │   │       │   │   │   ├── appendix
│   │   │   │       │   │   │   ├── execution
│   │   │   │       │   │   │   ├── final steps
│   │   │   │       │   │   │   ├── general primer
│   │   │   │       │   │   │   ├── overview
│   │   │   │       │   │   │   ├── restoration
│   │   │   │       │   │   │   └── write-what-where
│   │   │   │       │   │   ├── createremotethread
│   │   │   │       │   │   ├── doubleagent
│   │   │   │       │   │   │   ├── application verifier provider
│   │   │   │       │   │   │   ├── general primer
│   │   │   │       │   │   │   ├── injection
│   │   │   │       │   │   │   ├── mitigation
│   │   │   │       │   │   │   └── registration
│   │   │   │       │   │   ├── escalation
│   │   │   │       │   │   ├── general primer
│   │   │   │       │   │   │   ├── allocating memory
│   │   │   │       │   │   │   ├── attaching to the process
│   │   │   │       │   │   │   │   ├── handles
│   │   │   │       │   │   │   │   ├── openprocess function
│   │   │   │       │   │   │   │   └── process security and access rights
│   │   │   │       │   │   │   ├── copying the dll - determine addresses
│   │   │   │       │   │   │   ├── executing the dll
│   │   │   │       │   │   │   │   ├── ntcreatethreadex example
│   │   │   │       │   │   │   │   └── sir example
│   │   │   │       │   │   │   ├── session separation
│   │   │   │       │   │   │   └── starting point
│   │   │   │       │   │   ├── hooking
│   │   │   │       │   │   │   ├── general primer
│   │   │   │       │   │   │   ├── inline hooking
│   │   │   │       │   │   │   └── setwindowshookex
│   │   │   │       │   │   ├── injection with powershell
│   │   │   │       │   │   ├── ntcreatethreadex
│   │   │   │       │   │   ├── queueuserapc
│   │   │   │       │   │   ├── reflective
│   │   │   │       │   │   │   ├── x64 bootstrap shellcode
│   │   │   │       │   │   │   └── x86 bootstrap shellcode
│   │   │   │       │   │   ├── rtlcreateuserthread
│   │   │   │       │   │   └── setthreadcontext
│   │   │   │       │   │       ├── 32bit shell code
│   │   │   │       │   │       └── 64bit shell code
│   │   │   │       │   ├── dll side-loading
│   │   │   │       │   │   ├── finding side loading vulnerabilities
│   │   │   │       │   │   ├── general primer
│   │   │   │       │   │   └── mitigations
│   │   │   │       │   ├── hijacking via missing dependency
│   │   │   │       │   │   ├── dll hijacking with powersploit
│   │   │   │       │   │   ├── greyhat hacker primer
│   │   │   │       │   │   ├── pentestlab primer
│   │   │   │       │   │   ├── quick wins
│   │   │   │       │   │   ├── regkeys to know about
│   │   │   │       │   │   │   ├── cwdillegalindllsearch
│   │   │   │       │   │   │   ├── safedllsearchmode
│   │   │   │       │   │   │   └── setdlldirectory
│   │   │   │       │   │   ├── searching for missing dependencies
│   │   │   │       │   │   └── windows dll search order
│   │   │   │       │   │       ├── search order for desktop apps
│   │   │   │       │   │       └── search order for windows store apps
│   │   │   │       │   └── manifests
│   │   │   │       ├── domain acls
│   │   │   │       │   ├── enumerate domain trusts
│   │   │   │       │   │   ├── general primer
│   │   │   │       │   │   ├── invoke-mapdomaintrusts
│   │   │   │       │   │   └── viewing trusts graphically
│   │   │   │       │   │       ├── trust_explorer.py
│   │   │   │       │   │       └── trust_explorer readme
│   │   │   │       │   ├── enumerating group access - control paths
│   │   │   │       │   │   ├── exchange
│   │   │   │       │   │   │   ├── general primer
│   │   │   │       │   │   │   ├── poc 1 set-acl
│   │   │   │       │   │   │   └── poc 2 rbac add-adpermissino
│   │   │   │       │   │   ├── general primer
│   │   │   │       │   │   └── tools for domain group acls
│   │   │   │       │   ├── general primer
│   │   │   │       │   └── logon access to dcs
│   │   │   │       ├── everything to enumerate
│   │   │   │       │   ├── accessibility backdoors
│   │   │   │       │   ├── current privilege check - tokens
│   │   │   │       │   ├── current process arch
│   │   │   │       │   ├── dll check hijack
│   │   │   │       │   │   └── with gflags
│   │   │   │       │   ├── domain acl check exchange groups
│   │   │   │       │   ├── empire modules
│   │   │   │       │   │   ├── collection
│   │   │   │       │   │   │   ├── browser_data
│   │   │   │       │   │   │   ├── chromedump
│   │   │   │       │   │   │   ├── clipboard_monitor
│   │   │   │       │   │   │   ├── file_finder
│   │   │   │       │   │   │   ├── find_interesting_file
│   │   │   │       │   │   │   ├── foxdump
│   │   │   │       │   │   │   ├── inveigh
│   │   │   │       │   │   │   ├── keylogger
│   │   │   │       │   │   │   ├── ninjacopy
│   │   │   │       │   │   │   └── packet_capture
│   │   │   │       │   │   ├── credentials
│   │   │   │       │   │   │   ├── credential_injection
│   │   │   │       │   │   │   ├── enum_cred_store
│   │   │   │       │   │   │   ├── invoke_kerberoast
│   │   │   │       │   │   │   ├── mimikatz
│   │   │   │       │   │   │   ├── powerdump
│   │   │   │       │   │   │   ├── sessiongopher
│   │   │   │       │   │   │   ├── tokens
│   │   │   │       │   │   │   └── vault_credential
│   │   │   │       │   │   ├── exfiltration
│   │   │   │       │   │   │   ├── egresscheck
│   │   │   │       │   │   │   └── exfil_dropbox
│   │   │   │       │   │   ├── host
│   │   │   │       │   │   │   ├── antivirusproduct
│   │   │   │       │   │   │   ├── computerdetails
│   │   │   │       │   │   │   ├── dnsserver
│   │   │   │       │   │   │   ├── findtrusteddocuments
│   │   │   │       │   │   │   ├── get_pathacl
│   │   │   │       │   │   │   ├── get_proxy
│   │   │   │       │   │   │   ├── get_uaclevel
│   │   │   │       │   │   │   ├── monitortcpconnections
│   │   │   │       │   │   │   ├── paranoia
│   │   │   │       │   │   │   └── winenum
│   │   │   │       │   │   ├── network
│   │   │   │       │   │   │   ├── arpscan
│   │   │   │       │   │   │   ├── bloodhound
│   │   │   │       │   │   │   ├── get_exploitable_system
│   │   │   │       │   │   │   ├── get_spn
│   │   │   │       │   │   │   ├── get_sql_instance_domain
│   │   │   │       │   │   │   ├── get_sql_server_info
│   │   │   │       │   │   │   ├── portscan
│   │   │   │       │   │   │   ├── reverse_dns
│   │   │   │       │   │   │   ├── smbautobrute
│   │   │   │       │   │   │   └── smbscanner
│   │   │   │       │   │   └── privesc
│   │   │   │       │   │       ├── ask
│   │   │   │       │   │       ├── bypassuac
│   │   │   │       │   │       │   ├── env
│   │   │   │       │   │       │   ├── eventvwr
│   │   │   │       │   │       │   ├── fodhelper
│   │   │   │       │   │       │   ├── sdctlbypass
│   │   │   │       │   │       │   ├── tokenmanipulation
│   │   │   │       │   │       │   └── wscript
│   │   │   │       │   │       ├── getsystem
│   │   │   │       │   │       ├── gpp
│   │   │   │       │   │       ├── mcafee_sitelist
│   │   │   │       │   │       ├── ms16-032
│   │   │   │       │   │       ├── ms16-135
│   │   │   │       │   │       ├── powerup
│   │   │   │       │   │       │   ├── allchecks
│   │   │   │       │   │       │   ├── find_dllhijack
│   │   │   │       │   │       │   ├── service_exe_restore
│   │   │   │       │   │       │   ├── service_exe_stager
│   │   │   │       │   │       │   ├── service_exe_useradd
│   │   │   │       │   │       │   ├── service_stager
│   │   │   │       │   │       │   ├── service_useradd
│   │   │   │       │   │       │   └── write_dllhijacker
│   │   │   │       │   │       └── tater
│   │   │   │       │   ├── gathering ad data
│   │   │   │       │   │   ├── ad recycle bin
│   │   │   │       │   │   ├── bloodhound 2
│   │   │   │       │   │   ├── find users using anr
│   │   │   │       │   │   ├── more complex queries
│   │   │   │       │   │   ├── old school - adsi
│   │   │   │       │   │   ├── powershellery
│   │   │   │       │   │   ├── powerview
│   │   │   │       │   │   └── tips  tricks
│   │   │   │       │   ├── group policy persistence-locations
│   │   │   │       │   ├── kerberoast
│   │   │   │       │   ├── kernel check known exploits
│   │   │   │       │   ├── named pipes
│   │   │   │       │   ├── net version
│   │   │   │       │   ├── networking
│   │   │   │       │   ├── password files
│   │   │   │       │   │   ├── cached credentials
│   │   │   │       │   │   │   └── cmdkey
│   │   │   │       │   │   ├── cached kerberos tickets
│   │   │   │       │   │   ├── examples
│   │   │   │       │   │   ├── group policy sysvol creds
│   │   │   │       │   │   │   ├── cme gpp
│   │   │   │       │   │   │   ├── get-decryptedpassword
│   │   │   │       │   │   │   └── gppdecrypt
│   │   │   │       │   │   ├── search files for passwords
│   │   │   │       │   │   └── unattended installs
│   │   │   │       │   ├── passwords in memory
│   │   │   │       │   ├── passwords in registry
│   │   │   │       │   ├── registry check alwaysinstallelevated
│   │   │   │       │   ├── registry check autorun
│   │   │   │       │   ├── scheduled task check modify
│   │   │   │       │   ├── service check general enumeration
│   │   │   │       │   ├── service check modify service binpath
│   │   │   │       │   ├── service check modify service executable
│   │   │   │       │   ├── service check modify service registry k
│   │   │   │       │   ├── service check unqoted path
│   │   │   │       │   ├── startup check applications
│   │   │   │       │   ├── windows subsystem for linux
│   │   │   │       │   ├── windows xp and older
│   │   │   │       │   └── wmic script
│   │   │   │       ├── general primer
│   │   │   │       ├── group policy
│   │   │   │       │   ├── general primer
│   │   │   │       │   ├── get-gpoacls
│   │   │   │       │   ├── get-gpofileupdate
│   │   │   │       │   ├── get-gpofolderredirection
│   │   │   │       │   ├── get-gpogroups
│   │   │   │       │   ├── get-gpomsiinstallation
│   │   │   │       │   ├── get-gporegkeys
│   │   │   │       │   ├── get-gporegsettings
│   │   │   │       │   ├── get-gposchedtasks
│   │   │   │       │   ├── get-gposcripts
│   │   │   │       │   ├── get-gposhortcuts
│   │   │   │       │   ├── get-gpouserrights
│   │   │   │       │   └── get-gpousers
│   │   │   │       ├── kerberos exploits
│   │   │   │       │   ├── aseproast
│   │   │   │       │   ├── attacking constrained delegation
│   │   │   │       │   │   └── general primer
│   │   │   │       │   ├── attacking resource-based constrained del
│   │   │   │       │   ├── attacking unconstrained delegation
│   │   │   │       │   │   └── general primer
│   │   │   │       │   ├── kerberoast
│   │   │   │       │   ├── ms14-068
│   │   │   │       │   │   ├── exploit
│   │   │   │       │   │   │   ├── also in impacket
│   │   │   │       │   │   │   ├── example with ms14-068.py
│   │   │   │       │   │   │   │   └── dc time sync
│   │   │   │       │   │   │   ├── exploit with kekeo
│   │   │   │       │   │   │   └── exploit with pykek
│   │   │   │       │   │   │       ├── stage 1 artifacts
│   │   │   │       │   │   │       └── stage 2 artifacts
│   │   │   │       │   │   ├── general primer
│   │   │   │       │   │   ├── mitigation
│   │   │   │       │   │   └── pac validation detail
│   │   │   │       │   └── s4u2self
│   │   │   │       │       ├── attack vectors for s4u2self
│   │   │   │       │       └── general primer
│   │   │   │       ├── kernel exploits windows
│   │   │   │       │   └── general primer
│   │   │   │       ├── missing autoruns dependencies
│   │   │   │       │   ├── enumeration
│   │   │   │       │   └── general primer
│   │   │   │       ├── mitigations
│   │   │   │       ├── named pipes
│   │   │   │       │   ├── exploit
│   │   │   │       │   └── general primer
│   │   │   │       ├── ntfs tricks
│   │   │   │       │   ├── bypass path restrictions
│   │   │   │       │   ├── creating directories with dot in name
│   │   │   │       │   ├── cve2018-1036 create folder without permi
│   │   │   │       │   ├── exploiting symlinks and hardlinks in win
│   │   │   │       │   ├── hide destination of directory junction -
│   │   │   │       │   └── hiding data streams
│   │   │   │       │       ├── antivirus and hidden data streams
│   │   │   │       │       ├── hide alternate data streams behind dot n
│   │   │   │       │       ├── hide alternate data streams behind dot s
│   │   │   │       │       └── hide process binary in alternate data st
│   │   │   │       ├── password mining
│   │   │   │       │   ├── files
│   │   │   │       │   │   ├── cached sam
│   │   │   │       │   │   ├── group policy sysvol creds
│   │   │   │       │   │   │   ├── get-decryptedpassword
│   │   │   │       │   │   │   └── gppdecrypt
│   │   │   │       │   │   ├── mcafee sitelist.xml
│   │   │   │       │   │   │   └── exploit
│   │   │   │       │   │   ├── rdp
│   │   │   │       │   │   │   └── exploit
│   │   │   │       │   │   ├── unattend
│   │   │   │       │   │   │   ├── exploit
│   │   │   │       │   │   │   └── general primer
│   │   │   │       │   │   ├── vnc.ini
│   │   │   │       │   │   │   └── exploit
│   │   │   │       │   │   └── web.config
│   │   │   │       │   │       └── exploit
│   │   │   │       │   ├── memory
│   │   │   │       │   │   ├── exploit
│   │   │   │       │   │   └── general primer
│   │   │   │       │   └── registry
│   │   │   │       │       ├── applications
│   │   │   │       │       ├── exploit
│   │   │   │       │       ├── find strings
│   │   │   │       │       ├── general primer
│   │   │   │       │       └── windows
│   │   │   │       │           ├── autologon
│   │   │   │       │           └── wdigest
│   │   │   │       ├── physical access
│   │   │   │       │   └── sethc
│   │   │   │       ├── rdp
│   │   │   │       ├── registry
│   │   │   │       │   ├── alwaysinstallelevated
│   │   │   │       │   │   └── exploit
│   │   │   │       │   ├── autorun
│   │   │   │       │   │   ├── exploit
│   │   │   │       │   │   ├── general primer
│   │   │   │       │   │   └── keys
│   │   │   │       │   ├── clickonce
│   │   │   │       │   │   ├── clickonce app with payload
│   │   │   │       │   │   │   └── another guide
│   │   │   │       │   │   ├── general primer
│   │   │   │       │   │   ├── mitigations
│   │   │   │       │   │   └── other features
│   │   │   │       │   └── general primer
│   │   │   │       ├── relay everything
│   │   │   │       │   ├── combination
│   │   │   │       │   │   └── ntlm and kerberos
│   │   │   │       │   │       ├── mitigations
│   │   │   │       │   │       ├── other abuse avenues
│   │   │   │       │   │       └── relaying and configuring delegation
│   │   │   │       │   ├── exchange relay
│   │   │   │       │   │   ├── reflection
│   │   │   │       │   │   └── relay
│   │   │   │       │   │       ├── httpattack.py
│   │   │   │       │   │       └── privexchange.py
│   │   │   │       │   │           └── self-signed cert workaround privexchange
│   │   │   │       │   ├── general primer
│   │   │   │       │   ├── kerberos relay
│   │   │   │       │   │   ├── control of spn attribute
│   │   │   │       │   │   ├── example dcsync computer account spoolser
│   │   │   │       │   │   ├── example service account and privexchange
│   │   │   │       │   │   ├── mitigations
│   │   │   │       │   │   ├── obtaining traffic
│   │   │   │       │   │   ├── permission to alter dns records
│   │   │   │       │   │   └── unconstrained delegation account
│   │   │   │       │   ├── mitigations
│   │   │   │       │   ├── printer bug
│   │   │   │       │   │   ├── details
│   │   │   │       │   │   ├── general primer
│   │   │   │       │   │   └── mitigations
│   │   │   │       │   └── smb relay
│   │   │   │       ├── scheduled tasks
│   │   │   │       │   ├── exploit
│   │   │   │       │   └── service weak folder permissions
│   │   │   │       ├── services
│   │   │   │       │   ├── exploit service configuration permission
│   │   │   │       │   │   ├── sddl security descriptor language
│   │   │   │       │   │   │   └── aliases
│   │   │   │       │   │   ├── service binpath hijack
│   │   │   │       │   │   │   ├── exploit
│   │   │   │       │   │   │   ├── general primer
│   │   │   │       │   │   │   ├── quick wins
│   │   │   │       │   │   │   ├── service permissions
│   │   │   │       │   │   │   └── walkthrough
│   │   │   │       │   │   ├── service executable hijack
│   │   │   │       │   │   │   └── exploit
│   │   │   │       │   │   ├── service regkey imagepath hijack
│   │   │   │       │   │   │   ├── exploit
│   │   │   │       │   │   │   └── general primer
│   │   │   │       │   │   └── user-defined service
│   │   │   │       │   ├── exploit windows search order
│   │   │   │       │   │   └── service unquotedpath hijack
│   │   │   │       │   │       ├── exploit
│   │   │   │       │   │       ├── persistence with search order
│   │   │   │       │   │       └── windows program search order
│   │   │   │       │   ├── general primer
│   │   │   │       │   └── trustedinstaller
│   │   │   │       │       ├── becoming trustedinstaller
│   │   │   │       │       │   ├── via new-win32process
│   │   │   │       │       │   ├── via service config
│   │   │   │       │       │   ├── via thread_direct_impersonation
│   │   │   │       │       │   └── with system privs
│   │   │   │       │       └── general primer
│   │   │   │       ├── startup applications
│   │   │   │       │   ├── exploit
│   │   │   │       │   └── general primer
│   │   │   │       ├── token impersonation - access tokens
│   │   │   │       │   ├── general primer
│   │   │   │       │   ├── logon types
│   │   │   │       │   ├── segod privileges
│   │   │   │       │   │   ├── abusing seenabledelegation
│   │   │   │       │   │   │   ├── backdooring a domain
│   │   │   │       │   │   │   ├── finding users with seenabledelegation
│   │   │   │       │   │   │   └── general primer
│   │   │   │       │   │   └── abusing seloaddriver
│   │   │   │       │   │       ├── exploitation procedure
│   │   │   │       │   │       │   └── lookup and adjusttokenprivileges
│   │   │   │       │   │       ├── proof of concept
│   │   │   │       │   │       ├── seloaddriverprivilege and access tokens
│   │   │   │       │   │       └── seloaddriverprivilege exploitation
│   │   │   │       │   ├── split token
│   │   │   │       │   ├── token differences
│   │   │   │       │   │   └── launch normal vs run as administrator
│   │   │   │       │   └── tools
│   │   │   │       │       ├── invoke-tokenmanipulation primer
│   │   │   │       │       └── tokenvator
│   │   │   │       ├── uac bypass
│   │   │   │       │   ├── cmstp
│   │   │   │       │   │   ├── file resources
│   │   │   │       │   │   │   ├── akagi_41.c
│   │   │   │       │   │   │   ├── uacbypasscmstp.ps1
│   │   │   │       │   │   │   └── uacbypass.inf
│   │   │   │       │   │   ├── general primer
│   │   │   │       │   │   └── walkthrough
│   │   │   │       │   │       └── creating a profile
│   │   │   │       │   ├── fileless bypass
│   │   │   │       │   │   ├── eventvwr hijack
│   │   │   │       │   │   │   └── invoke-eventvwrbypass.ps1
│   │   │   │       │   │   ├── sdclt hijack
│   │   │   │       │   │   │   └── invoke-sdcltbypass
│   │   │   │       │   │   └── silentcleanup race condition
│   │   │   │       │   │       └── invoke-uacbypass.ps1
│   │   │   │       │   ├── finding autoelevate programs
│   │   │   │       │   ├── general primer
│   │   │   │       │   ├── greyhat walkthrough
│   │   │   │       │   │   ├── stage 1 writing to secure location
│   │   │   │       │   │   │   ├── comobject
│   │   │   │       │   │   │   │   └── ifileoperation com object script
│   │   │   │       │   │   │   └── wusa.exe
│   │   │   │       │   │   └── stage 2 hijacking dll
│   │   │   │       │   │       ├── windows 7
│   │   │   │       │   │       ├── windows 8
│   │   │   │       │   │       └── windows 8.1
│   │   │   │       │   ├── invoke-tokenduplication.ps1
│   │   │   │       │   ├── registry
│   │   │   │       │   │   ├── app path
│   │   │   │       │   │   │   └── sdclt.exe app path
│   │   │   │       │   │   │       └── invoke-apppathbypass.ps1
│   │   │   │       │   │   └── fodhelper
│   │   │   │       │   │       └── fodhelperbypass.ps1
│   │   │   │       │   ├── scheduled tasks
│   │   │   │       │   │   ├── environment variables in scheduled tasks
│   │   │   │       │   │   │   └── silentcleanup path hijack
│   │   │   │       │   │   └── s4u logon
│   │   │   │       │   │       ├── elevate_task_scheduler.ps1
│   │   │   │       │   │       └── task.xml
│   │   │   │       │   ├── tyranids token impersonation
│   │   │   │       │   │   ├── mitigations
│   │   │   │       │   │   ├── ntobjectmanager
│   │   │   │       │   │   └── scripts
│   │   │   │       │   │       ├── fuzzy-uac-tokenmagic.ps1
│   │   │   │       │   │       └── tyranid-bypassuac.ps1
│   │   │   │       │   ├── uac bypass mitigations
│   │   │   │       │   │   └── registry values
│   │   │   │       │   └── wscript bypass
│   │   │   │       │       └── invoke-wscriptbypassuac.ps1
│   │   │   │       └── wmi and mof
│   │   │   │           └── general primer
│   │   │   ├── red teaming
│   │   │   │   ├── bring your own land
│   │   │   │   ├── c2
│   │   │   │   │   └── dns over https
│   │   │   │   │       ├── bypass doh detection with domain frontin
│   │   │   │   │       ├── doh for c2
│   │   │   │   │       └── the common approach to dns detection
│   │   │   │   ├── defense bypass
│   │   │   │   │   └── local memory scanners
│   │   │   │   │       ├── general primer
│   │   │   │   │       └── options
│   │   │   │   │           └── gargoyle
│   │   │   │   │               └── modify for cobalt strike
│   │   │   │   │                   ├── limitations
│   │   │   │   │                   ├── references
│   │   │   │   │                   ├── step 1 beacon
│   │   │   │   │                   └── step 2 integration
│   │   │   │   ├── lateral movement
│   │   │   │   │   ├── machineaccountquota
│   │   │   │   │   │   ├── 10 rules for maq
│   │   │   │   │   │   ├── general primer
│   │   │   │   │   │   ├── maq in action
│   │   │   │   │   │   │   ├── kerberos unconstrained delegation attack
│   │   │   │   │   │   │   └── kerberos unconstrained delegation setup
│   │   │   │   │   │   └── mitigations
│   │   │   │   │   ├── malicious rdp server
│   │   │   │   │   └── spoof dns adidns
│   │   │   │   │       └── adidns
│   │   │   │   │           ├── adidns sync and replication
│   │   │   │   │           ├── cleanup entries
│   │   │   │   │           ├── finding missing or stale entries
│   │   │   │   │           ├── maintaining control of nodes
│   │   │   │   │           ├── mitigations
│   │   │   │   │           └── modify entries
│   │   │   │   │               ├── add wildcard directly in ldap
│   │   │   │   │               ├── using dynamic updates
│   │   │   │   │               └── using rpc
│   │   │   │   ├── links
│   │   │   │   ├── malware tricks
│   │   │   │   │   └── windows
│   │   │   │   │       ├── build malicious code from fonts
│   │   │   │   │       │   ├── powershell find bytes in file
│   │   │   │   │       │   ├── powershell generate vba for macro
│   │   │   │   │       │   └── vba to generate malicious components
│   │   │   │   │       └── triton and trisis campaigns
│   │   │   │   │           ├── mapped to attack framework
│   │   │   │   │           └── tools
│   │   │   │   ├── obfuscation
│   │   │   │   │   └── empire
│   │   │   │   │       ├── firstorder
│   │   │   │   │       └── general primer
│   │   │   │   ├── persistence
│   │   │   │   │   └── clsids
│   │   │   │   │       └── general primer
│   │   │   │   ├── priv esc
│   │   │   │   │   └── privexchange
│   │   │   │   └── unsorted
│   │   │   ├── reverse shells - shells
│   │   │   │   ├── adjusting terminal size
│   │   │   │   ├── asp
│   │   │   │   │   ├── asp shell with form
│   │   │   │   │   ├── classic with vb
│   │   │   │   │   ├── direct cmdi - passthrough
│   │   │   │   │   ├── ippsec predefined command
│   │   │   │   │   ├── newer with .net c#
│   │   │   │   │   └── sharpyshell
│   │   │   │   ├── awk - gawk
│   │   │   │   ├── bash
│   │   │   │   │   ├── bash -dev-tcp
│   │   │   │   │   ├── drop to bash interactive
│   │   │   │   │   ├── fifo nc
│   │   │   │   │   └── openssl encrypted
│   │   │   │   ├── cold fusion
│   │   │   │   │   ├── cmd exec functions
│   │   │   │   │   └── cmdi
│   │   │   │   ├── -dev-tcp
│   │   │   │   ├── dotnet
│   │   │   │   │   ├── reverse.c
│   │   │   │   │   ├── reverse.cs
│   │   │   │   │   └── workflowcompiler abuse
│   │   │   │   │       ├── rev.shell
│   │   │   │   │       └── rev.txt
│   │   │   │   ├── expect
│   │   │   │   │   └── random
│   │   │   │   ├── java
│   │   │   │   │   ├── java with expression language
│   │   │   │   │   ├── jvm one-liners
│   │   │   │   │   └── oracle
│   │   │   │   ├── js
│   │   │   │   │   ├── example1
│   │   │   │   │   └── example2
│   │   │   │   ├── jsp
│   │   │   │   │   ├── cmdi
│   │   │   │   │   ├── code exec functions
│   │   │   │   │   ├── one line os command shell
│   │   │   │   │   └── reverse
│   │   │   │   │       └── reverse script exec
│   │   │   │   ├── links
│   │   │   │   │   ├── reverse shell lists
│   │   │   │   │   └── web shell lists
│   │   │   │   ├── lua
│   │   │   │   ├── msfvenom
│   │   │   │   ├── mssql handler
│   │   │   │   │   └── connectivity with sqsh
│   │   │   │   ├── ncat and nc
│   │   │   │   │   ├── bsd nc.traditional
│   │   │   │   │   ├── egress - port scanning
│   │   │   │   │   ├── encryption with ncat
│   │   │   │   │   ├── fifo
│   │   │   │   │   └── mknod backpipe
│   │   │   │   ├── openssl
│   │   │   │   │   ├── linux
│   │   │   │   │   ├── openssl base64 encode
│   │   │   │   │   ├── openssl connect to secure ports
│   │   │   │   │   ├── openssl file transfer
│   │   │   │   │   └── windows
│   │   │   │   ├── perl
│   │   │   │   │   ├── cmd exec functions
│   │   │   │   │   ├── cmdi
│   │   │   │   │   └── perl-reverse-shell
│   │   │   │   ├── php
│   │   │   │   │   ├── code exec functions
│   │   │   │   │   ├── code injection cmd shells
│   │   │   │   │   │   ├── cmd param in image
│   │   │   │   │   │   │   └── useful tools
│   │   │   │   │   │   ├── fuzzy
│   │   │   │   │   │   ├── ippsec
│   │   │   │   │   │   │   └── alt
│   │   │   │   │   │   ├── php shell in a web-page
│   │   │   │   │   │   └── sqlmap shell
│   │   │   │   │   ├── easy interaction with cmd shells
│   │   │   │   │   ├── evasion - obfuscation techniques
│   │   │   │   │   ├── exec encoded exe
│   │   │   │   │   │   ├── b374k shell payloads
│   │   │   │   │   │   │   ├── b374k exe
│   │   │   │   │   │   │   ├── b374k gcc
│   │   │   │   │   │   │   ├── b374k java
│   │   │   │   │   │   │   ├── b374k node
│   │   │   │   │   │   │   ├── b374k perl
│   │   │   │   │   │   │   ├── b374k php
│   │   │   │   │   │   │   ├── b374k python
│   │   │   │   │   │   │   └── b374k ruby
│   │   │   │   │   │   └── original win reverse php
│   │   │   │   │   ├── php filters - wrappers
│   │   │   │   │   ├── php interactive console
│   │   │   │   │   ├── php-reverse-shells
│   │   │   │   │   │   ├── bartblaze
│   │   │   │   │   │   ├── basic obfuscated
│   │   │   │   │   │   ├── pentest monkey
│   │   │   │   │   │   └── quick and dirty
│   │   │   │   │   ├── php write to file
│   │   │   │   │   └── upload form
│   │   │   │   │       ├── cmd injection one liner
│   │   │   │   │       └── simple
│   │   │   │   ├── ping - icmp
│   │   │   │   │   ├── general primer
│   │   │   │   │   └── nishang
│   │   │   │   │       └── icmpsh_m.py
│   │   │   │   ├── powercat
│   │   │   │   ├── powershell
│   │   │   │   │   ├── nishang
│   │   │   │   │   ├── unicorn
│   │   │   │   │   └── winrm
│   │   │   │   │       ├── ruby winrm
│   │   │   │   │       │   └── implementation in python
│   │   │   │   │       └── ruby winrm with upload
│   │   │   │   ├── python
│   │   │   │   │   ├── darc0de bind
│   │   │   │   │   ├── evasion techniques
│   │   │   │   │   ├── paramiko
│   │   │   │   │   │   ├── combined example client
│   │   │   │   │   │   ├── compile to exe with py2exe
│   │   │   │   │   │   ├── examples
│   │   │   │   │   │   │   ├── example sftp client
│   │   │   │   │   │   │   ├── example sftp server
│   │   │   │   │   │   │   └── example ssh client
│   │   │   │   │   │   └── example server
│   │   │   │   │   ├── python port scan
│   │   │   │   │   ├── python pty shells
│   │   │   │   │   │   ├── tcp_pty_bind.py
│   │   │   │   │   │   ├── tcp_pty_handler.py
│   │   │   │   │   │   ├── tcp_pty_reverse.py
│   │   │   │   │   │   ├── udp_pty_bind.py
│   │   │   │   │   │   └── udp_pty_reverse.py
│   │   │   │   │   └── reverse-shell
│   │   │   │   │       ├── alt
│   │   │   │   │       ├── msf payload
│   │   │   │   │       └── windows
│   │   │   │   │           └── delivery and exec
│   │   │   │   ├── ruby
│   │   │   │   ├── socat
│   │   │   │   │   ├── bind
│   │   │   │   │   ├── examples
│   │   │   │   │   ├── reverse
│   │   │   │   │   ├── ssl
│   │   │   │   │   └── udp listen
│   │   │   │   ├── sql
│   │   │   │   ├── ssh w-o tty
│   │   │   │   ├── telnet
│   │   │   │   │   ├── mknod backpipe
│   │   │   │   │   └── wacky
│   │   │   │   ├── tsh
│   │   │   │   ├── tty goodies
│   │   │   │   │   ├── expect
│   │   │   │   │   ├── python magic
│   │   │   │   │   └── script q
│   │   │   │   ├── web shells
│   │   │   │   │   ├── msfvenom
│   │   │   │   │   └── weevely
│   │   │   │   ├── windows cmd
│   │   │   │   └── xterm
│   │   │   ├── tools
│   │   │   │   ├── anonymity
│   │   │   │   │   └── general primer
│   │   │   │   ├── archive
│   │   │   │   │   └── invoke-encryptedzip.ps1
│   │   │   │   ├── aws
│   │   │   │   │   ├── alert - monitor - audit
│   │   │   │   │   ├── bucket finders
│   │   │   │   │   ├── console testing
│   │   │   │   │   ├── framework
│   │   │   │   │   ├── general primer
│   │   │   │   │   └── privilege escalation
│   │   │   │   ├── collaboration
│   │   │   │   ├── database
│   │   │   │   │   └── tools
│   │   │   │   │       ├── mssql
│   │   │   │   │       │   └── powershellery
│   │   │   │   │       ├── sql-google search
│   │   │   │   │       └── sqlmap
│   │   │   │   │           └── all tamper scripts
│   │   │   │   ├── debuggers
│   │   │   │   │   ├── evansdebugger edb is a cross platform x
│   │   │   │   │   ├── gdb gnu project debugger
│   │   │   │   │   └── immunity python gui and cmdline debugge
│   │   │   │   ├── devops
│   │   │   │   │   └── general primer
│   │   │   │   ├── docker
│   │   │   │   │   └── general primer
│   │   │   │   ├── encoders - obfuscators - packers
│   │   │   │   │   ├── cmd
│   │   │   │   │   │   ├── carrot trick
│   │   │   │   │   │   ├── substring syntax zero length vars
│   │   │   │   │   │   └── u 2015 character replacement
│   │   │   │   │   └── tools
│   │   │   │   │       ├── commercial tools
│   │   │   │   │       ├── encoders
│   │   │   │   │       │   ├── invoke-cradlecrafter
│   │   │   │   │       │   ├── invoke-obfuscation
│   │   │   │   │       │   ├── javascript
│   │   │   │   │       │   │   └── view-source discogscounter
│   │   │   │   │       │   ├── php
│   │   │   │   │       │   ├── shellpaste.py
│   │   │   │   │       │   └── veil
│   │   │   │   │       │       ├── general primer
│   │   │   │   │       │       └── usage
│   │   │   │   │       ├── encryption
│   │   │   │   │       │   ├── ebowla
│   │   │   │   │       │   └── hyperion
│   │   │   │   │       │       ├── general primer
│   │   │   │   │       │       └── usage
│   │   │   │   │       ├── packers
│   │   │   │   │       │   └── upx
│   │   │   │   │       ├── powershell
│   │   │   │   │       │   └── certutil example
│   │   │   │   │       ├── shellterproject
│   │   │   │   │       └── thefatrat
│   │   │   │   ├── exchange and email
│   │   │   │   │   └── general primer
│   │   │   │   ├── file transfer - exfil
│   │   │   │   │   ├── egress testing
│   │   │   │   │   ├── file transfer - exfil
│   │   │   │   │   └── see tunnelling
│   │   │   │   ├── frameworks - multitools
│   │   │   │   │   ├── auto-pentest
│   │   │   │   │   │   ├── general primer
│   │   │   │   │   │   ├── reconscan
│   │   │   │   │   │   ├── red_hawk
│   │   │   │   │   │   │   └── general primer
│   │   │   │   │   │   ├── sn1per
│   │   │   │   │   │   │   └── general primer
│   │   │   │   │   │   ├── sparta
│   │   │   │   │   │   │   └── sparta config
│   │   │   │   │   │   └── yuki-chan
│   │   │   │   │   │       └── general primer
│   │   │   │   │   ├── covenant
│   │   │   │   │   │   └── general primer
│   │   │   │   │   ├── crackmapexec
│   │   │   │   │   │   └── general primer
│   │   │   │   │   ├── empire
│   │   │   │   │   │   └── general primer
│   │   │   │   │   ├── frameworks
│   │   │   │   │   ├── fuzzbunch
│   │   │   │   │   │   └── general primer
│   │   │   │   │   ├── hwacha
│   │   │   │   │   │   └── general primer
│   │   │   │   │   ├── merlin
│   │   │   │   │   │   ├── general primer
│   │   │   │   │   │   ├── making a merlin agent
│   │   │   │   │   │   └── setting up ssl
│   │   │   │   │   ├── metasploit
│   │   │   │   │   │   ├── converting msf modules to standalone
│   │   │   │   │   │   ├── metasploit tutorials and other
│   │   │   │   │   │   │   ├── basics
│   │   │   │   │   │   │   ├── database
│   │   │   │   │   │   │   ├── debugging msf modules
│   │   │   │   │   │   │   ├── meterpreter
│   │   │   │   │   │   │   ├── msf exploits or easy
│   │   │   │   │   │   │   ├── sessions
│   │   │   │   │   │   │   ├── working with nmap
│   │   │   │   │   │   │   └── workspaces
│   │   │   │   │   │   ├── mitre framework automation with msf
│   │   │   │   │   │   ├── msfvenom
│   │   │   │   │   │   │   ├── advanced upgrades and qol
│   │   │   │   │   │   │   ├── msfpc
│   │   │   │   │   │   │   ├── msfvenom encoders
│   │   │   │   │   │   │   ├── msfvenom formats
│   │   │   │   │   │   │   │   └── jar applet
│   │   │   │   │   │   │   ├── msfvenom obfuscate
│   │   │   │   │   │   │   ├── msfvenom payloads
│   │   │   │   │   │   │   │   ├── not staged shell
│   │   │   │   │   │   │   │   └── staged shell
│   │   │   │   │   │   │   ├── msfvenom platforms
│   │   │   │   │   │   │   ├── some generation commands
│   │   │   │   │   │   │   └── tutorials and other
│   │   │   │   │   │   ├── pivot - tunnel
│   │   │   │   │   │   │   ├── autoroute
│   │   │   │   │   │   │   │   └── options
│   │   │   │   │   │   │   ├── portfwd
│   │   │   │   │   │   │   │   ├── help
│   │   │   │   │   │   │   │   └── options
│   │   │   │   │   │   │   ├── route
│   │   │   │   │   │   │   └── socks4a
│   │   │   │   │   │   ├── popular meterpreter scripts
│   │   │   │   │   │   ├── popular post modules
│   │   │   │   │   │   └── run .net assembly in memory
│   │   │   │   │   ├── nishang
│   │   │   │   │   │   ├── general primer
│   │   │   │   │   │   └── modules
│   │   │   │   │   ├── powersploit
│   │   │   │   │   │   └── powersploit
│   │   │   │   │   │       └── recon
│   │   │   │   │   │           └── powerview
│   │   │   │   │   ├── pwndsh
│   │   │   │   │   │   └── general primer
│   │   │   │   │   ├── recon-ng
│   │   │   │   │   │   └── dns
│   │   │   │   │   └── silent trinity
│   │   │   │   │       ├── general primer
│   │   │   │   │       └── usage
│   │   │   │   │           ├── create a listener
│   │   │   │   │           ├── create a stager for listener
│   │   │   │   │           ├── execute-assembly
│   │   │   │   │           ├── modules
│   │   │   │   │           └── sessions
│   │   │   │   ├── fuzzing
│   │   │   │   │   └── general primer
│   │   │   │   ├── ics and scada
│   │   │   │   │   └── general primer
│   │   │   │   ├── lateral movement
│   │   │   │   │   ├── general primer
│   │   │   │   │   └── tokenvator
│   │   │   │   ├── linux aux
│   │   │   │   │   ├── exec win from lin
│   │   │   │   │   ├── impacket
│   │   │   │   │   │   ├── activedirectory
│   │   │   │   │   │   │   ├── getadusers
│   │   │   │   │   │   │   ├── getpac
│   │   │   │   │   │   │   ├── getst
│   │   │   │   │   │   │   ├── gettgt
│   │   │   │   │   │   │   ├── getuserspns
│   │   │   │   │   │   │   └── ticketer
│   │   │   │   │   │   │       └── generating golden tickets with ticketer
│   │   │   │   │   │   ├── dce-rpc
│   │   │   │   │   │   │   ├── getarch x86 or x64
│   │   │   │   │   │   │   ├── ifmap
│   │   │   │   │   │   │   ├── lookupsid
│   │   │   │   │   │   │   ├── opdump
│   │   │   │   │   │   │   ├── rpcdump
│   │   │   │   │   │   │   ├── samrdump
│   │   │   │   │   │   │   └── services
│   │   │   │   │   │   ├── exec
│   │   │   │   │   │   │   ├── atexec
│   │   │   │   │   │   │   ├── dcomexec
│   │   │   │   │   │   │   ├── psexec
│   │   │   │   │   │   │   └── smbexec
│   │   │   │   │   │   ├── exploits
│   │   │   │   │   │   │   └── goldenpac ms14-068
│   │   │   │   │   │   ├── mimikatz rpc controller
│   │   │   │   │   │   ├── mssql
│   │   │   │   │   │   │   ├── mssqlclient
│   │   │   │   │   │   │   └── mssql instance
│   │   │   │   │   │   ├── netview
│   │   │   │   │   │   ├── network layer
│   │   │   │   │   │   │   ├── ping
│   │   │   │   │   │   │   │   ├── ping
│   │   │   │   │   │   │   │   └── ping6
│   │   │   │   │   │   │   └── sniffing
│   │   │   │   │   │   │       ├── sniff
│   │   │   │   │   │   │       ├── sniffer
│   │   │   │   │   │   │       ├── split
│   │   │   │   │   │   │       └── tracer
│   │   │   │   │   │   ├── random tools
│   │   │   │   │   │   │   ├── esentutl
│   │   │   │   │   │   │   ├── ntfsread
│   │   │   │   │   │   │   ├── rdp_check
│   │   │   │   │   │   │   └── registry-read
│   │   │   │   │   │   ├── relay
│   │   │   │   │   │   │   ├── ntlmrelayx
│   │   │   │   │   │   │   └── smbrelayx
│   │   │   │   │   │   ├── secretsdump
│   │   │   │   │   │   ├── smb
│   │   │   │   │   │   │   ├── karmasmb
│   │   │   │   │   │   │   ├── sambapipe
│   │   │   │   │   │   │   ├── smbclient
│   │   │   │   │   │   │   ├── smbserver
│   │   │   │   │   │   │   └── smbtorture
│   │   │   │   │   │   └── wmi
│   │   │   │   │   │       ├── wmiexec
│   │   │   │   │   │       ├── wmipersist
│   │   │   │   │   │       └── wmiquery
│   │   │   │   │   └── wine
│   │   │   │   │       └── 32 and 64 wine
│   │   │   │   ├── linux local enumeration
│   │   │   │   │   └── auditing and enumeration
│   │   │   │   ├── linux priv escalation
│   │   │   │   │   └── priv escalation specific
│   │   │   │   ├── linux security
│   │   │   │   │   └── automated hardening
│   │   │   │   ├── man in the middle
│   │   │   │   │   ├── bettercap
│   │   │   │   │   │   ├── custom modules
│   │   │   │   │   │   │   └── sample custom injectjs
│   │   │   │   │   │   └── samples
│   │   │   │   │   │       ├── sample injectjs data
│   │   │   │   │   │       └── sample replace_file.rb
│   │   │   │   │   ├── ettercap
│   │   │   │   │   │   └── sample ettercap filters
│   │   │   │   │   │       ├── http img replace filter
│   │   │   │   │   │       ├── outofband filter
│   │   │   │   │   │       └── pdf add filter
│   │   │   │   │   ├── evilgrade
│   │   │   │   │   ├── man in the middle
│   │   │   │   │   ├── parasite6
│   │   │   │   │   └── sslstrip
│   │   │   │   │       └── hsts workaround
│   │   │   │   ├── network protocols
│   │   │   │   │   ├── multi - dtp-stp-cdp-hsrp-etc
│   │   │   │   │   │   ├── loki
│   │   │   │   │   │   │   ├── loki ospf
│   │   │   │   │   │   │   └── loki vrrp
│   │   │   │   │   │   └── yersinia
│   │   │   │   │   │       ├── yersinia dtp
│   │   │   │   │   │       └── yersinia hsrp
│   │   │   │   │   ├── netbios
│   │   │   │   │   ├── nfs
│   │   │   │   │   ├── rdp - vnc
│   │   │   │   │   ├── sip
│   │   │   │   │   ├── smb
│   │   │   │   │   ├── smtp
│   │   │   │   │   ├── snmp
│   │   │   │   │   ├── sql
│   │   │   │   │   └── ssh
│   │   │   │   ├── network scanners - sniffers
│   │   │   │   │   ├── netcat
│   │   │   │   │   │   ├── host discovery-port scan
│   │   │   │   │   │   ├── netcat tutorials and other
│   │   │   │   │   │   ├── send-receive
│   │   │   │   │   │   └── tunneling - relay - pivot
│   │   │   │   │   ├── network analyzers
│   │   │   │   │   ├── network scanners and scripts
│   │   │   │   │   │   └── nmap
│   │   │   │   │   │       ├── general nmap primer
│   │   │   │   │   │       └── nse
│   │   │   │   │   │           └── nse
│   │   │   │   │   ├── sniffers
│   │   │   │   │   │   ├── netsh
│   │   │   │   │   │   ├── tcpdump
│   │   │   │   │   │   │   ├── general primer
│   │   │   │   │   │   │   └── usage
│   │   │   │   │   │   └── wireshark
│   │   │   │   │   │       └── general primer
│   │   │   │   │   ├── vulnerability scanners
│   │   │   │   │   │   ├── nessus
│   │   │   │   │   │   │   └── nessus scanner
│   │   │   │   │   │   ├── nexpose
│   │   │   │   │   │   │   └── nexpose vuln scanner
│   │   │   │   │   │   ├── openvas
│   │   │   │   │   │   │   └── openvas open source vuln scanner
│   │   │   │   │   │   └── retina
│   │   │   │   │   │       └── retina vuln management
│   │   │   │   │   └── web
│   │   │   │   ├── online tools
│   │   │   │   │   ├── chmod permissions
│   │   │   │   │   ├── crypto
│   │   │   │   │   ├── online attack platforms
│   │   │   │   │   ├── osint
│   │   │   │   │   │   ├── dns
│   │   │   │   │   │   ├── infrastructure
│   │   │   │   │   │   └── people
│   │   │   │   │   └── password related
│   │   │   │   ├── osint
│   │   │   │   │   ├── aws s3 buckets
│   │   │   │   │   ├── bypass cloudflare
│   │   │   │   │   ├── dns
│   │   │   │   │   │   ├── dns powershell
│   │   │   │   │   │   │   └── dns-dump.ps1
│   │   │   │   │   │   ├── knock
│   │   │   │   │   │   ├── mdns - avahi
│   │   │   │   │   │   ├── reverse lookup
│   │   │   │   │   │   ├── subbrute
│   │   │   │   │   │   └── wfuzz
│   │   │   │   │   ├── email
│   │   │   │   │   ├── fingerprinting
│   │   │   │   │   ├── frameworks
│   │   │   │   │   ├── git - svn
│   │   │   │   │   ├── google dorks
│   │   │   │   │   ├── google storage buckets
│   │   │   │   │   ├── metadata
│   │   │   │   │   └── urls
│   │   │   │   ├── password related
│   │   │   │   │   ├── decryptors
│   │   │   │   │   ├── dit snapshot viewer
│   │   │   │   │   ├── dumpers
│   │   │   │   │   │   ├── application specific
│   │   │   │   │   │   ├── cain  abel
│   │   │   │   │   │   ├── mimikatz
│   │   │   │   │   │   │   ├── bypass lsa protection
│   │   │   │   │   │   │   ├── command guide
│   │   │   │   │   │   │   │   ├── modules and commands
│   │   │   │   │   │   │   │   │   ├── golden ticket
│   │   │   │   │   │   │   │   │   ├── silver ticket
│   │   │   │   │   │   │   │   │   └── trust ticket
│   │   │   │   │   │   │   │   └── most popular commands
│   │   │   │   │   │   │   ├── general primer
│   │   │   │   │   │   │   ├── mitigating-detecting mimikatz
│   │   │   │   │   │   │   └── obfuscating mimikatz
│   │   │   │   │   │   │       └── crucial information
│   │   │   │   │   │   └── procdump
│   │   │   │   │   │       └── procdump.bat
│   │   │   │   │   ├── general primer
│   │   │   │   │   ├── hash identification
│   │   │   │   │   ├── local crackers
│   │   │   │   │   │   ├── hashcat 2
│   │   │   │   │   │   │   ├── cracking hashes
│   │   │   │   │   │   │   │   └── lm and ntlm example
│   │   │   │   │   │   │   ├── gpu
│   │   │   │   │   │   │   │   └── installing amd drivers on linux
│   │   │   │   │   │   │   │       └── tldr
│   │   │   │   │   │   │   ├── hashcat primers
│   │   │   │   │   │   │   │   └── help bat script for cap m 2500
│   │   │   │   │   │   │   ├── hash examples
│   │   │   │   │   │   │   ├── home
│   │   │   │   │   │   │   ├── man page 2
│   │   │   │   │   │   │   └── restore
│   │   │   │   │   │   ├── hydra
│   │   │   │   │   │   ├── john 2
│   │   │   │   │   │   │   ├── compile for speed
│   │   │   │   │   │   │   ├── generate password lists
│   │   │   │   │   │   │   ├── hash formats
│   │   │   │   │   │   │   ├── home
│   │   │   │   │   │   │   └── jtrmakeconfig
│   │   │   │   │   │   ├── medusa
│   │   │   │   │   │   │   └── home
│   │   │   │   │   │   ├── ncrack
│   │   │   │   │   │   │   └── home
│   │   │   │   │   │   └── oph crack
│   │   │   │   │   │       └── rainbow tables
│   │   │   │   │   ├── network crackers - brute
│   │   │   │   │   │   ├── hydra
│   │   │   │   │   │   │   └── http
│   │   │   │   │   │   ├── medusa
│   │   │   │   │   │   │   └── smbnt brute force with hashes
│   │   │   │   │   │   └── winrm
│   │   │   │   │   │       ├── get-winrmpassword
│   │   │   │   │   │       └── winrm auth methods
│   │   │   │   │   ├── pass the hash - relay - poison
│   │   │   │   │   ├── sniffers
│   │   │   │   │   └── wordlist generator - manipulator
│   │   │   │   │       └── cewl
│   │   │   │   │           └── man
│   │   │   │   ├── post exploitation
│   │   │   │   │   ├── command and control
│   │   │   │   │   │   ├── c2 tools - frameworks
│   │   │   │   │   │   ├── connection proxy
│   │   │   │   │   │   ├── domain fronting
│   │   │   │   │   │   ├── standard application layer protocol
│   │   │   │   │   │   └── web service
│   │   │   │   │   ├── linux
│   │   │   │   │   │   ├── collection
│   │   │   │   │   │   │   ├── automated collection
│   │   │   │   │   │   │   ├── clipboard
│   │   │   │   │   │   │   ├── input capture
│   │   │   │   │   │   │   └── screen capture
│   │   │   │   │   │   ├── persistence
│   │   │   │   │   │   └── process monitoring
│   │   │   │   │   ├── post exploitation
│   │   │   │   │   ├── static binaries
│   │   │   │   │   │   └── general primer
│   │   │   │   │   └── windows
│   │   │   │   │       └── collection
│   │   │   │   │           ├── audio
│   │   │   │   │           ├── automated collection
│   │   │   │   │           ├── clipboard
│   │   │   │   │           ├── email collection
│   │   │   │   │           ├── input capture
│   │   │   │   │           ├── screen capture
│   │   │   │   │           └── video capture
│   │   │   │   ├── process injection
│   │   │   │   │   └── general primer
│   │   │   │   ├── reporting
│   │   │   │   │   └── general primer
│   │   │   │   ├── reverse engineering
│   │   │   │   │   └── general primer
│   │   │   │   ├── social engineer
│   │   │   │   ├── source inspection
│   │   │   │   │   ├── binary analysis
│   │   │   │   │   └── source inspection
│   │   │   │   ├── tool listings
│   │   │   │   ├── tunnel - pivot - port forward
│   │   │   │   │   ├── general primer
│   │   │   │   │   ├── nextnet
│   │   │   │   │   ├── plink
│   │   │   │   │   │   └── general
│   │   │   │   │   ├── proxychains
│   │   │   │   │   │   ├── dns with proxychains
│   │   │   │   │   │   ├── dynamic
│   │   │   │   │   │   ├── link
│   │   │   │   │   │   ├── multiple configurations
│   │   │   │   │   │   └── socks
│   │   │   │   │   └── tunnelling
│   │   │   │   ├── unsorted
│   │   │   │   │   ├── captive portals auth
│   │   │   │   │   └── exe2other
│   │   │   │   │       ├── exe2bat_alternate.py
│   │   │   │   │       ├── exe2bat.py
│   │   │   │   │       └── exe2powershell
│   │   │   │   ├── web
│   │   │   │   │   ├── browser
│   │   │   │   │   │   └── beef
│   │   │   │   │   │       └── running beef on alternate port
│   │   │   │   │   ├── dir brute forcers
│   │   │   │   │   ├── dns rebinding
│   │   │   │   │   │   ├── dns rebinding server
│   │   │   │   │   │   ├── dns rebind toolkit
│   │   │   │   │   │   └── whonow
│   │   │   │   │   ├── fingerprint
│   │   │   │   │   ├── firefox
│   │   │   │   │   │   ├── firefox addons
│   │   │   │   │   │   └── make firefox more hacker friendly
│   │   │   │   │   │       └── unblock restricted ports
│   │   │   │   │   ├── proxies
│   │   │   │   │   │   ├── burp
│   │   │   │   │   │   │   ├── attacks
│   │   │   │   │   │   │   │   └── bitflipping
│   │   │   │   │   │   │   ├── error resolutions
│   │   │   │   │   │   │   ├── generate csrf poc
│   │   │   │   │   │   │   ├── intercept server responses
│   │   │   │   │   │   │   ├── plugins
│   │   │   │   │   │   │   │   ├── activescan
│   │   │   │   │   │   │   │   ├── bypass waf
│   │   │   │   │   │   │   │   ├── deserialize plugins
│   │   │   │   │   │   │   │   └── turbo intruder
│   │   │   │   │   │   │   ├── private collaborator server
│   │   │   │   │   │   │   │   ├── collaborator as a linux service
│   │   │   │   │   │   │   │   ├── collaborator with ssl
│   │   │   │   │   │   │   │   ├── example config
│   │   │   │   │   │   │   │   └── starting collaborator with config
│   │   │   │   │   │   │   ├── redirector
│   │   │   │   │   │   │   ├── request method
│   │   │   │   │   │   │   ├── stateful flows with macros
│   │   │   │   │   │   │   ├── upstream proxies
│   │   │   │   │   │   │   └── wadl jax-rs
│   │   │   │   │   │   └── zap
│   │   │   │   │   ├── scanners
│   │   │   │   │   │   ├── cms
│   │   │   │   │   │   ├── command injection
│   │   │   │   │   │   ├── (de)serialize java
│   │   │   │   │   │   ├── file inclusion
│   │   │   │   │   │   │   ├── fimap
│   │   │   │   │   │   │   └── lfi freak
│   │   │   │   │   │   ├── parameter miners
│   │   │   │   │   │   ├── sql injection
│   │   │   │   │   │   ├── ssl
│   │   │   │   │   │   ├── virtual hosts
│   │   │   │   │   │   ├── xss
│   │   │   │   │   │   └── xxe
│   │   │   │   │   ├── scrapers
│   │   │   │   │   ├── screengrabbers
│   │   │   │   │   ├── shell handler
│   │   │   │   │   ├── web application firewall
│   │   │   │   │   └── xss
│   │   │   │   ├── wifi
│   │   │   │   │   └── wifi
│   │   │   │   ├── windows auth - ad
│   │   │   │   │   ├── active directory specific
│   │   │   │   │   │   ├── aclight
│   │   │   │   │   │   ├── adenumerator
│   │   │   │   │   │   ├── adrecon
│   │   │   │   │   │   └── group permissions
│   │   │   │   │   ├── domain acl - group trusts
│   │   │   │   │   │   ├── ad-control-paths
│   │   │   │   │   │   │   ├── dump data into csv
│   │   │   │   │   │   │   ├── import csv into graph database
│   │   │   │   │   │   │   ├── install and prerequisites
│   │   │   │   │   │   │   ├── prepare the data
│   │   │   │   │   │   │   ├── query
│   │   │   │   │   │   │   ├── usage
│   │   │   │   │   │   │   └── visualize
│   │   │   │   │   │   ├── angrypuppy
│   │   │   │   │   │   ├── bloodhound
│   │   │   │   │   │   │   ├── acl attack paths
│   │   │   │   │   │   │   ├── cypher
│   │   │   │   │   │   │   ├── dacls
│   │   │   │   │   │   │   ├── extending bloodhound
│   │   │   │   │   │   │   ├── general primer
│   │   │   │   │   │   │   ├── github wiki
│   │   │   │   │   │   │   │   ├── building from source
│   │   │   │   │   │   │   │   │   ├── linux
│   │   │   │   │   │   │   │   │   ├── osx
│   │   │   │   │   │   │   │   │   └── windows
│   │   │   │   │   │   │   │   ├── data collection
│   │   │   │   │   │   │   │   │   ├── csv ingestion
│   │   │   │   │   │   │   │   │   ├── data collector
│   │   │   │   │   │   │   │   │   ├── ingestion through c2
│   │   │   │   │   │   │   │   │   └── intro
│   │   │   │   │   │   │   │   │       ├── who has admin where
│   │   │   │   │   │   │   │   │       ├── whos in what groups
│   │   │   │   │   │   │   │   │       └── whos logged in where
│   │   │   │   │   │   │   │   ├── getting started
│   │   │   │   │   │   │   │   │   ├── linux
│   │   │   │   │   │   │   │   │   ├── osx
│   │   │   │   │   │   │   │   │   └── windows 2
│   │   │   │   │   │   │   │   └── using the interface
│   │   │   │   │   │   │   │       ├── computers
│   │   │   │   │   │   │   │       ├── groups
│   │   │   │   │   │   │   │       ├── intro 2
│   │   │   │   │   │   │   │       │   ├── graph drawing area
│   │   │   │   │   │   │   │       │   ├── menu and search
│   │   │   │   │   │   │   │       │   ├── raw cypher query
│   │   │   │   │   │   │   │       │   ├── settings
│   │   │   │   │   │   │   │       │   └── zoom
│   │   │   │   │   │   │   │       ├── pathfinding
│   │   │   │   │   │   │   │       └── users
│   │   │   │   │   │   │   ├── lay of the land
│   │   │   │   │   │   │   │   ├── apply
│   │   │   │   │   │   │   │   ├── gather
│   │   │   │   │   │   │   │   │   ├── empire
│   │   │   │   │   │   │   │   │   ├── meterpreter
│   │   │   │   │   │   │   │   │   └── powershell
│   │   │   │   │   │   │   │   └── query
│   │   │   │   │   │   │   │       └── cypher
│   │   │   │   │   │   │   ├── links
│   │   │   │   │   │   │   └── mitigations
│   │   │   │   │   │   ├── invoke-aclpwn
│   │   │   │   │   │   │   ├── general primer
│   │   │   │   │   │   │   └── usage
│   │   │   │   │   │   └── invoke-gofetch
│   │   │   │   │   │       └── general primer
│   │   │   │   │   ├── group policy enumeration
│   │   │   │   │   ├── kerberos
│   │   │   │   │   │   ├── get-spn
│   │   │   │   │   │   ├── kekeo
│   │   │   │   │   │   ├── kerberoast
│   │   │   │   │   │   └── rubeus
│   │   │   │   │   │       ├── functions
│   │   │   │   │   │       └── general primer
│   │   │   │   │   ├── ldap
│   │   │   │   │   ├── multi
│   │   │   │   │   │   ├── adape
│   │   │   │   │   │   ├── crackmapexec
│   │   │   │   │   │   │   ├── compile your own
│   │   │   │   │   │   │   ├── general primer
│   │   │   │   │   │   │   ├── modules
│   │   │   │   │   │   │   │   └── send to empire-meterpreter
│   │   │   │   │   │   │   └── smb brute - test
│   │   │   │   │   │   ├── deathstar
│   │   │   │   │   │   │   └── general primer
│   │   │   │   │   │   └── icebreaker
│   │   │   │   │   ├── pass the hash
│   │   │   │   │   │   └── linux tools
│   │   │   │   │   ├── relay - spoofing
│   │   │   │   │   │   ├── icebreaker
│   │   │   │   │   │   │   ├── general primer
│   │   │   │   │   │   │   ├── in-depth how it works
│   │   │   │   │   │   │   └── usage
│   │   │   │   │   │   ├── kerberos
│   │   │   │   │   │   ├── netntlmtosilverticket
│   │   │   │   │   │   │   ├── crack netntlmv1 into ntlm hash
│   │   │   │   │   │   │   ├── create a silver ticket
│   │   │   │   │   │   │   └── obtain netntlmv1 response
│   │   │   │   │   │   ├── ntlmrelayx.py
│   │   │   │   │   │   │   └── install
│   │   │   │   │   │   ├── potato
│   │   │   │   │   │   │   ├── general primer
│   │   │   │   │   │   │   └── using hot potato
│   │   │   │   │   │   ├── printer bug
│   │   │   │   │   │   ├── privexchange
│   │   │   │   │   │   └── responder.py
│   │   │   │   │   │       └── wpad
│   │   │   │   │   ├── smb
│   │   │   │   │   └── token impersonation
│   │   │   │   ├── windows built in
│   │   │   │   │   ├── certutil
│   │   │   │   │   │   ├── encoding
│   │   │   │   │   │   ├── file transfer
│   │   │   │   │   │   └── general primer
│   │   │   │   │   ├── cmd
│   │   │   │   │   │   └── cmd general primer
│   │   │   │   │   ├── diskshadow
│   │   │   │   │   │   ├── cmd exec
│   │   │   │   │   │   ├── diskshadow vs. vshadow
│   │   │   │   │   │   ├── general primer
│   │   │   │   │   │   ├── grab add (ntds.dit)
│   │   │   │   │   │   ├── mitigation
│   │   │   │   │   │   └── persistence
│   │   │   │   │   ├── ghostpack
│   │   │   │   │   │   ├── general primer
│   │   │   │   │   │   ├── safetykatz
│   │   │   │   │   │   ├── seatbelt
│   │   │   │   │   │   ├── sharpdump
│   │   │   │   │   │   ├── sharproast
│   │   │   │   │   │   ├── sharpup
│   │   │   │   │   │   └── sharpwmi
│   │   │   │   │   ├── lolbas
│   │   │   │   │   ├── powershell
│   │   │   │   │   │   ├── aliases
│   │   │   │   │   │   ├── be stealthy!
│   │   │   │   │   │   ├── file version information
│   │   │   │   │   │   ├── low level api calls
│   │   │   │   │   │   ├── powershell defense bypass
│   │   │   │   │   │   │   ├── constrained language mode
│   │   │   │   │   │   │   │   ├── power-less-shell
│   │   │   │   │   │   │   │   └── version 2
│   │   │   │   │   │   │   ├── device guard
│   │   │   │   │   │   │   │   └── hijack digital signature
│   │   │   │   │   │   │   │       └── digitalsignaturehijack_v1.ps1
│   │   │   │   │   │   │   ├── execution policy
│   │   │   │   │   │   │   │   └── execution policy bypass
│   │   │   │   │   │   │   ├── powershell without powershell
│   │   │   │   │   │   │   └── scriptblock logging bypass
│   │   │   │   │   │   │       └── script.ps1
│   │   │   │   │   │   ├── powershell general primer
│   │   │   │   │   │   ├── powershell ping
│   │   │   │   │   │   ├── useful flags
│   │   │   │   │   │   │   └── dont need to be full
│   │   │   │   │   │   └── utilities
│   │   │   │   │   │       ├── archive utils
│   │   │   │   │   │       ├── background
│   │   │   │   │   │       │   └── powershell version 1
│   │   │   │   │   │       ├── base64
│   │   │   │   │   │       ├── certificates
│   │   │   │   │   │       ├── psdrive
│   │   │   │   │   │       ├── runas
│   │   │   │   │   │       │   ├── alt
│   │   │   │   │   │       │   ├── invoke-command
│   │   │   │   │   │       │   ├── invoke-runas
│   │   │   │   │   │       │   ├── runas.exe
│   │   │   │   │   │       │   ├── self elevating scripts
│   │   │   │   │   │       │   ├── start-process
│   │   │   │   │   │       │   └── start-processasuser
│   │   │   │   │   │       ├── secure strings
│   │   │   │   │   │       └── vbs and js in powershell
│   │   │   │   │   ├── subsystem for linux 2
│   │   │   │   │   │   ├── bashware
│   │   │   │   │   │   ├── cli execution
│   │   │   │   │   │   ├── drive access
│   │   │   │   │   │   ├── enabling developer mode
│   │   │   │   │   │   ├── general primer
│   │   │   │   │   │   └── installing uninstalling and distros
│   │   │   │   │   ├── winrm
│   │   │   │   │   │   ├── connecting
│   │   │   │   │   │   ├── general primer
│   │   │   │   │   │   ├── insecure setup
│   │   │   │   │   │   └── running commands
│   │   │   │   │   └── wmic
│   │   │   │   │       ├── man page
│   │   │   │   │       └── script
│   │   │   │   ├── windows local enumeration
│   │   │   │   │   ├── auditing and enumeration
│   │   │   │   │   │   └── info
│   │   │   │   │   └── autoruns
│   │   │   │   ├── windows priv escalation
│   │   │   │   │   ├── auditing and enumeration
│   │   │   │   │   │   ├── dll hijacking related
│   │   │   │   │   │   │   └── siofra
│   │   │   │   │   │   │       ├── github readme
│   │   │   │   │   │   │       ├── link
│   │   │   │   │   │   │       └── paper
│   │   │   │   │   │   └── kernel exploit related
│   │   │   │   │   ├── eternal blue - nsa
│   │   │   │   │   │   └── autoblue
│   │   │   │   │   ├── potatos
│   │   │   │   │   │   ├── general primer
│   │   │   │   │   │   ├── hotpotato
│   │   │   │   │   │   │   ├── general primer
│   │   │   │   │   │   │   └── seimpersonateprivilege
│   │   │   │   │   │   ├── juicypotato
│   │   │   │   │   │   │   ├── clsids
│   │   │   │   │   │   │   │   ├── extracting clsids
│   │   │   │   │   │   │   │   ├── server 2008 r2 enterprise
│   │   │   │   │   │   │   │   ├── server 2012 datacenter
│   │   │   │   │   │   │   │   ├── server 2016 standard
│   │   │   │   │   │   │   │   ├── testing clsids
│   │   │   │   │   │   │   │   │   └── test_clsid.bat
│   │   │   │   │   │   │   │   ├── windows 10 enterprise
│   │   │   │   │   │   │   │   ├── windows 10 professional
│   │   │   │   │   │   │   │   ├── windows 7 enterprise
│   │   │   │   │   │   │   │   └── windows 8.1 enterprise
│   │   │   │   │   │   │   ├── general primer
│   │   │   │   │   │   │   ├── tldr seimpersonate seassignprimarytoken
│   │   │   │   │   │   │   └── usage
│   │   │   │   │   │   ├── lonelypotato
│   │   │   │   │   │   │   └── general primer
│   │   │   │   │   │   ├── potatong
│   │   │   │   │   │   │   └── general primer
│   │   │   │   │   │   ├── rottenpotato
│   │   │   │   │   │   │   ├── general primer
│   │   │   │   │   │   │   └── priv esc through impersonate_token
│   │   │   │   │   │   └── smashedpotato
│   │   │   │   │   │       └── general primer
│   │   │   │   │   ├── pre-compiled exploits
│   │   │   │   │   ├── procdump
│   │   │   │   │   │   └── general
│   │   │   │   │   ├── uac bypass
│   │   │   │   │   └── vshadow
│   │   │   │   │       ├── cmd exec
│   │   │   │   │       ├── general primer
│   │   │   │   │       ├── grab add (ntds.dit)
│   │   │   │   │       └── persistence
│   │   │   │   └── windows xp-old tools
│   │   │   │       └── general primer
│   │   │   ├── training-research-news
│   │   │   │   ├── blogs
│   │   │   │   │   ├── blogs
│   │   │   │   │   ├── blogs 2
│   │   │   │   │   ├── blogs 3
│   │   │   │   │   └── blogs 4
│   │   │   │   ├── devops
│   │   │   │   │   └── general primer
│   │   │   │   ├── forums - magazine - wiki
│   │   │   │   │   ├── forums
│   │   │   │   │   ├── magazines
│   │   │   │   │   └── wiki
│   │   │   │   ├── linux distros
│   │   │   │   │   └── distros
│   │   │   │   ├── oscp guides
│   │   │   │   │   ├── advice - time savers
│   │   │   │   │   ├── book recommendations
│   │   │   │   │   ├── general thoughts
│   │   │   │   │   ├── jollyfrog scripts
│   │   │   │   │   ├── jollyfrogs proof commands
│   │   │   │   │   ├── oscp reviews
│   │   │   │   │   ├── penetration testing with kali linux syll
│   │   │   │   │   ├── popular path to oscp
│   │   │   │   │   ├── pre-requisites
│   │   │   │   │   ├── vm practice
│   │   │   │   │   └── youtube recommendations
│   │   │   │   ├── other misc
│   │   │   │   ├── programming
│   │   │   │   │   ├── bash
│   │   │   │   │   ├── python
│   │   │   │   │   │   ├── file operations
│   │   │   │   │   │   ├── general python primer
│   │   │   │   │   │   ├── python regex
│   │   │   │   │   │   ├── status printing tricks
│   │   │   │   │   │   ├── useful modules - imports
│   │   │   │   │   │   │   ├── pip download offline install
│   │   │   │   │   │   │   ├── py base64
│   │   │   │   │   │   │   ├── py multiprocessing
│   │   │   │   │   │   │   ├── py request
│   │   │   │   │   │   │   ├── py simplehttpserver
│   │   │   │   │   │   │   ├── py socket
│   │   │   │   │   │   │   └── py xml parsing
│   │   │   │   │   │   ├── user interaction
│   │   │   │   │   │   │   └── user environment variables in python
│   │   │   │   │   │   └── web requests
│   │   │   │   │   │       ├── httplib
│   │   │   │   │   │       ├── ignoring ssl  errors
│   │   │   │   │   │       ├── requests
│   │   │   │   │   │       └── urllib2
│   │   │   │   │   ├── ruby
│   │   │   │   │   └── visual basic (vbs)
│   │   │   │   │       ├── arrays
│   │   │   │   │       ├── file operations
│   │   │   │   │       │   ├── dir listing
│   │   │   │   │       │   ├── read file
│   │   │   │   │       │   └── write file
│   │   │   │   │       ├── functions
│   │   │   │   │       │   ├── array
│   │   │   │   │       │   ├── conversion
│   │   │   │   │       │   ├── date time
│   │   │   │   │       │   ├── link
│   │   │   │   │       │   ├── math
│   │   │   │   │       │   ├── new function
│   │   │   │   │       │   ├── new procedure
│   │   │   │   │       │   ├── other
│   │   │   │   │       │   └── string
│   │   │   │   │       ├── if - else
│   │   │   │   │       ├── input box
│   │   │   │   │       ├── loops
│   │   │   │   │       │   ├── do
│   │   │   │   │       │   ├── do until
│   │   │   │   │       │   ├── do while
│   │   │   │   │       │   ├── for
│   │   │   │   │       │   └── for array
│   │   │   │   │       ├── mail
│   │   │   │   │       ├── popular objects
│   │   │   │   │       ├── select case
│   │   │   │   │       └── shell object
│   │   │   │   │           ├── cmd using exec
│   │   │   │   │           ├── ip using exec
│   │   │   │   │           ├── ip using run
│   │   │   │   │           └── run vs exec
│   │   │   │   └── sec-hacking
│   │   │   ├── trash
│   │   │   │   ├── new page
│   │   │   │   └── todo
│   │   │   ├── trending techniques
│   │   │   │   ├── 2017
│   │   │   │   │   ├── iot
│   │   │   │   │   └── web
│   │   │   │   ├── 2018
│   │   │   │   │   └── web
│   │   │   │   ├── 2019
│   │   │   │   └── general primer
│   │   │   ├── tunnel - port forward - networking - piv
│   │   │   │   ├── 3proxy
│   │   │   │   │   ├── general primer
│   │   │   │   │   └── reverse port forwarding
│   │   │   │   ├── cntlm
│   │   │   │   │   └── http proxy
│   │   │   │   ├── dns tunnel
│   │   │   │   │   ├── dnscat2
│   │   │   │   │   └── iodine
│   │   │   │   │       └── quickstart
│   │   │   │   ├── double pivoting
│   │   │   │   ├── fpipe
│   │   │   │   ├── http tunneling
│   │   │   │   │   ├── chisel
│   │   │   │   │   │   ├── local pivot
│   │   │   │   │   │   └── reverse
│   │   │   │   │   └── general primer
│   │   │   │   ├── icmp tunnels
│   │   │   │   │   ├── hans
│   │   │   │   │   └── ptunnel
│   │   │   │   │       ├── how it works
│   │   │   │   │       └── using ptunnel
│   │   │   │   ├── metasploit
│   │   │   │   ├── mitigations
│   │   │   │   ├── nc
│   │   │   │   │   └── netcat relays
│   │   │   │   ├── netsh
│   │   │   │   │   ├── netsh relays
│   │   │   │   │   │   └── enable remote netsh access
│   │   │   │   │   └── sniffer
│   │   │   │   ├── putty - plink
│   │   │   │   │   ├── convert putty key to openssh
│   │   │   │   │   ├── man
│   │   │   │   │   ├── plink dynamic port forward socks
│   │   │   │   │   ├── remote port forward
│   │   │   │   │   └── single port forward
│   │   │   │   ├── reverse tcp vs bind tcp
│   │   │   │   ├── rinetd
│   │   │   │   │   ├── general primer
│   │   │   │   │   ├── usage
│   │   │   │   │   │   └── pivot example
│   │   │   │   │   └── windows
│   │   │   │   ├── rpivot
│   │   │   │   │   └── http proxy
│   │   │   │   ├── ssh
│   │   │   │   │   ├── dropbear ssh - small statically compiled
│   │   │   │   │   ├── gateway ports
│   │   │   │   │   ├── killing connections
│   │   │   │   │   │   └── control socket
│   │   │   │   │   ├── ssh agents
│   │   │   │   │   │   ├── agent forwarding
│   │   │   │   │   │   ├── hijacking ssh agents
│   │   │   │   │   │   └── using ssh agents
│   │   │   │   │   ├── ssh ca
│   │   │   │   │   ├── ssh config forwarding
│   │   │   │   │   ├── ssh dynamic port forward (socks proxy)
│   │   │   │   │   │   └── configure proxychains
│   │   │   │   │   ├── ssh dynamic reverse port forward
│   │   │   │   │   ├── ssh local port forwarding
│   │   │   │   │   │   ├── another simple example
│   │   │   │   │   │   ├── man
│   │   │   │   │   │   ├── pentestmonkey example
│   │   │   │   │   │   ├── personal
│   │   │   │   │   │   └── picture examples
│   │   │   │   │   ├── ssh reverse port forwarding
│   │   │   │   │   │   ├── another simple example
│   │   │   │   │   │   ├── man
│   │   │   │   │   │   ├── pentestmonkey example
│   │   │   │   │   │   ├── personal
│   │   │   │   │   │   └── picture examples
│   │   │   │   │   ├── ssh with dsa
│   │   │   │   │   ├── tunnel through current connection
│   │   │   │   │   ├── udp over ssh
│   │   │   │   │   ├── udp through ssh tunnel
│   │   │   │   │   ├── vpn over ssh
│   │   │   │   │   │   ├── helper script
│   │   │   │   │   │   └── sshuttle
│   │   │   │   │   │       ├── man
│   │   │   │   │   │       └── usage
│   │   │   │   │   └── x11 forwarding
│   │   │   │   ├── technique chart
│   │   │   │   ├── tool compatibility
│   │   │   │   ├── traffic encapsulation - bypass
│   │   │   │   │   └── general primer
│   │   │   │   ├── tunnel - port forward - networking - piv
│   │   │   │   └── vpn
│   │   │   │       └── tap-tun
│   │   │   │           ├── create a tap
│   │   │   │           ├── interface tutorial
│   │   │   │           ├── simpletun.c
│   │   │   │           └── universal tap-tun documentation
│   │   │   ├── unsorted
│   │   │   └── videos
│   │   │       └── videos
│   │   ├── Usefulcommands
│   │   │   ├── cheat sheets
│   │   │   │   ├── file transfer
│   │   │   │   │   ├── debug.exe
│   │   │   │   │   ├── fetch
│   │   │   │   │   │   └── man page
│   │   │   │   │   ├── ftp
│   │   │   │   │   ├── http - internet explorer
│   │   │   │   │   │   ├── curl
│   │   │   │   │   │   └── wget
│   │   │   │   │   ├── inline transfer
│   │   │   │   │   ├── ncat
│   │   │   │   │   ├── openssl
│   │   │   │   │   ├── php
│   │   │   │   │   ├── python
│   │   │   │   │   ├── ruby
│   │   │   │   │   ├── scp
│   │   │   │   │   │   └── man page
│   │   │   │   │   ├── smd
│   │   │   │   │   ├── stunnel
│   │   │   │   │   ├── tftp
│   │   │   │   │   └── vbs
│   │   │   │   ├── injection
│   │   │   │   │   └── sql injection
│   │   │   │   ├── osint
│   │   │   │   │   ├── dns recon
│   │   │   │   │   │   ├── bruteforcing
│   │   │   │   │   │   ├── lookup types
│   │   │   │   │   │   ├── standard lookups
│   │   │   │   │   │   └── zone transfer
│   │   │   │   │   └── google hacking
│   │   │   │   ├── pivoting - networking
│   │   │   │   ├── post exploitation
│   │   │   │   │   ├── linux
│   │   │   │   │   ├── restricted shell - rbash
│   │   │   │   │   │   ├── escaping locally
│   │   │   │   │   │   └── escaping using ssh
│   │   │   │   │   └── windows
│   │   │   │   │       └── windows post exploitation
│   │   │   │   │           ├── blind read-guess files
│   │   │   │   │           ├── commands invasive-altering but useful
│   │   │   │   │           ├── configs
│   │   │   │   │           ├── delete logs
│   │   │   │   │           ├── directories
│   │   │   │   │           ├── files to pull
│   │   │   │   │           ├── finding important files
│   │   │   │   │           ├── general system commands
│   │   │   │   │           ├── meterpreter
│   │   │   │   │           │   ├── modules
│   │   │   │   │           │   ├── scripts
│   │   │   │   │           │   └── techniques
│   │   │   │   │           ├── networking
│   │   │   │   │           ├── os specific
│   │   │   │   │           ├── other
│   │   │   │   │           ├── reg
│   │   │   │   │           ├── remote system access
│   │   │   │   │           └── wmi
│   │   │   │   ├── priv esc
│   │   │   │   │   ├── linux
│   │   │   │   │   │   └── linux priv esc
│   │   │   │   │   │       ├── applications  services
│   │   │   │   │   │       ├── communications  networking
│   │   │   │   │   │       ├── confidential information  users
│   │   │   │   │   │       ├── file systems
│   │   │   │   │   │       ├── mitigations
│   │   │   │   │   │       ├── os
│   │   │   │   │   │       └── preparation  finding exploit code
│   │   │   │   │   └── windows
│   │   │   │   │       └── windows priv esc
│   │   │   │   ├── regex
│   │   │   │   ├── services - ports - description list
│   │   │   │   ├── shellcode
│   │   │   │   ├── shells 2
│   │   │   │   │   ├── bash
│   │   │   │   │   ├── -dev-tcp
│   │   │   │   │   ├── expect
│   │   │   │   │   ├── java
│   │   │   │   │   ├── lists
│   │   │   │   │   │   ├── reverse shell lists
│   │   │   │   │   │   └── web shell lists
│   │   │   │   │   ├── netcat
│   │   │   │   │   │   ├── fifo
│   │   │   │   │   │   └── mknod backpipe
│   │   │   │   │   ├── perl
│   │   │   │   │   │   └── perl-reverse-shell
│   │   │   │   │   ├── php
│   │   │   │   │   │   ├── code exec functions
│   │   │   │   │   │   ├── code injection 2
│   │   │   │   │   │   │   └── cmd param in image
│   │   │   │   │   │   ├── evasion techniques
│   │   │   │   │   │   ├── php interactive console
│   │   │   │   │   │   ├── php-reverse-shells
│   │   │   │   │   │   │   ├── bartblaze
│   │   │   │   │   │   │   ├── basic obfuscated
│   │   │   │   │   │   │   └── pentest monkey
│   │   │   │   │   │   └── upload form
│   │   │   │   │   │       ├── cmd injection one liner
│   │   │   │   │   │       └── simple
│   │   │   │   │   ├── powershell
│   │   │   │   │   ├── python
│   │   │   │   │   │   ├── evasion techniques
│   │   │   │   │   │   ├── paramiko
│   │   │   │   │   │   │   ├── combined example client
│   │   │   │   │   │   │   ├── compile to exe with py2exe
│   │   │   │   │   │   │   ├── examples
│   │   │   │   │   │   │   │   ├── example sftp client
│   │   │   │   │   │   │   │   ├── example sftp server
│   │   │   │   │   │   │   │   └── example ssh client
│   │   │   │   │   │   │   └── example server
│   │   │   │   │   │   ├── python port scan
│   │   │   │   │   │   └── reverse-shell
│   │   │   │   │   │       └── msf payload
│   │   │   │   │   ├── ruby
│   │   │   │   │   ├── ssh w-o tty
│   │   │   │   │   ├── telnet
│   │   │   │   │   │   ├── mknod backpipe
│   │   │   │   │   │   └── wacky
│   │   │   │   │   ├── tty goodies
│   │   │   │   │   │   ├── magic
│   │   │   │   │   │   └── socat
│   │   │   │   │   └── xterm
│   │   │   │   ├── specific commands
│   │   │   │   │   ├── iptables
│   │   │   │   │   ├── ncat
│   │   │   │   │   │   ├── access controls
│   │   │   │   │   │   ├── file transfer with ssl
│   │   │   │   │   │   └── reverse shell
│   │   │   │   │   ├── openssl
│   │   │   │   │   │   ├── convert formats
│   │   │   │   │   │   ├── encrypt and decrypt
│   │   │   │   │   │   ├── examine certs
│   │   │   │   │   │   └── generate certs
│   │   │   │   │   ├── ssh
│   │   │   │   │   │   ├── escape sequences
│   │   │   │   │   │   ├── files
│   │   │   │   │   │   ├── scp - file copy
│   │   │   │   │   │   └── vpn over ssh
│   │   │   │   │   ├── tcpdump
│   │   │   │   │   └── tmux and screen
│   │   │   │   ├── specific tools
│   │   │   │   │   ├── metasploit
│   │   │   │   │   │   └── meterpreter
│   │   │   │   │   │       └── post module enable_rdp - getgui
│   │   │   │   │   ├── msfvenom
│   │   │   │   │   │   ├── help page
│   │   │   │   │   │   └── platforms
│   │   │   │   │   ├── nmap
│   │   │   │   │   │   └── nse docs
│   │   │   │   │   ├── smb - rpcclient - smbclient
│   │   │   │   │   │   ├── links
│   │   │   │   │   │   ├── list of commands
│   │   │   │   │   │   └── notes
│   │   │   │   │   └── wireshark
│   │   │   │   └── xss payloads
│   │   │   ├── global todo
│   │   │   ├── interesting file locations-files
│   │   │   │   ├── linux
│   │   │   │   │   ├── -etc
│   │   │   │   │   │   ├── fingerprinting
│   │   │   │   │   │   ├── httpd
│   │   │   │   │   │   │   └── httpd.conf - php.ini (alt locations)
│   │   │   │   │   │   ├── list
│   │   │   │   │   │   ├── os logs
│   │   │   │   │   │   │   ├── linux
│   │   │   │   │   │   │   ├── mac
│   │   │   │   │   │   │   └── solaris
│   │   │   │   │   │   ├── php session
│   │   │   │   │   │   └── sudoers
│   │   │   │   │   ├── gnupg
│   │   │   │   │   │   └── keys
│   │   │   │   │   ├── interesting to find these files
│   │   │   │   │   ├── -logs
│   │   │   │   │   │   └── list
│   │   │   │   │   ├── -opt
│   │   │   │   │   │   └── list
│   │   │   │   │   ├── proc
│   │   │   │   │   ├── ssh
│   │   │   │   │   │   └── keys
│   │   │   │   │   ├── users home directories
│   │   │   │   │   │   └── hidden files
│   │   │   │   │   ├── -usr
│   │   │   │   │   │   ├── list
│   │   │   │   │   │   └── -usr-bin-env
│   │   │   │   │   │       └── $path
│   │   │   │   │   └── -var
│   │   │   │   │       ├── list
│   │   │   │   │       └── some locations with descriptions
│   │   │   │   └── windows
│   │   │   │       ├── admin
│   │   │   │       ├── apache
│   │   │   │       ├── auto-start
│   │   │   │       ├── c- 2
│   │   │   │       ├── fingerprinting
│   │   │   │       ├── logs
│   │   │   │       ├── mysql
│   │   │   │       ├── net
│   │   │   │       ├── password locations for popular windows a
│   │   │   │       │   ├── browsers
│   │   │   │       │   │   ├── chrome
│   │   │   │       │   │   ├── firefox
│   │   │   │       │   │   ├── ie 4 - 6
│   │   │   │       │   │   └── opera
│   │   │   │       │   ├── dialup-vpn
│   │   │   │       │   ├── mail
│   │   │   │       │   │   ├── live
│   │   │   │       │   │   ├── outlook
│   │   │   │       │   │   └── thunderbird
│   │   │   │       │   ├── network password  credential store
│   │   │   │       │   ├── outlook
│   │   │   │       │   │   ├── exchange server
│   │   │   │       │   │   ├── older
│   │   │   │       │   │   └── users
│   │   │   │       │   └── shared folders
│   │   │   │       ├── php
│   │   │   │       │   └── php session
│   │   │   │       ├── program files
│   │   │   │       ├── vnc
│   │   │   │       ├── web
│   │   │   │       └── windows
│   │   │   ├── links for resources
│   │   │   │   ├── acknowledgements
│   │   │   │   └── links for reading-references-learning
│   │   │   │       ├── av evasion
│   │   │   │       │   ├── backdoor executables
│   │   │   │       │   │   ├── conclusion
│   │   │   │       │   │   ├── finding space
│   │   │   │       │   │   ├── hijack execution flow
│   │   │   │       │   │   ├── inject backdoor code
│   │   │   │       │   │   └── restore execution flow
│   │   │   │       │   └── typical evasions
│   │   │   │       │       ├── common techniques
│   │   │   │       │       ├── decrypt shellcode
│   │   │   │       │       ├── dynamic analysis detection
│   │   │   │       │       └── execute shellcode
│   │   │   │       ├── default directories
│   │   │   │       ├── interesting reading
│   │   │   │       ├── shell code sites
│   │   │   │       ├── tools - personal use
│   │   │   │       └── web
│   │   │   │           ├── attack categories 2
│   │   │   │           │   ├── cors cross origin resource sharing
│   │   │   │           │   ├── file upload
│   │   │   │           │   ├── injection
│   │   │   │           │   ├── local-remote file inclusion
│   │   │   │           │   ├── subdomain takeover-prvention
│   │   │   │           │   └── xss
│   │   │   │           │       ├── cross-frame scripting
│   │   │   │           │       ├── primer common xss payloads
│   │   │   │           │       ├── primer testing for xss
│   │   │   │           │       │   ├── bypassing anti-xss filters
│   │   │   │           │       │   └── useful html tag information
│   │   │   │           │       ├── primer what is xss
│   │   │   │           │       └── xss defense
│   │   │   │           ├── htaccess
│   │   │   │           │   ├── essentials
│   │   │   │           │   │   ├── enable allowoverride
│   │   │   │           │   │   ├── enable basic rewriting
│   │   │   │           │   │   ├── enable symbolic links
│   │   │   │           │   │   ├── htaccess comments
│   │   │   │           │   │   ├── rename the .htaccess file
│   │   │   │           │   │   └── retain httpd.conf rules
│   │   │   │           │   ├── general
│   │   │   │           │   │   ├── htaccess comments
│   │   │   │           │   │   ├── important information
│   │   │   │           │   │   ├── new page
│   │   │   │           │   │   ├── performance issues
│   │   │   │           │   │   ├── redirection header codes
│   │   │   │           │   │   └── regex character definitions
│   │   │   │           │   ├── performance
│   │   │   │           │   │   ├── execute various file types via cgi scrip
│   │   │   │           │   │   ├── new page
│   │   │   │           │   │   ├── new page 10
│   │   │   │           │   │   ├── new page 11
│   │   │   │           │   │   ├── new page 12
│   │   │   │           │   │   ├── new page 2
│   │   │   │           │   │   ├── new page 3
│   │   │   │           │   │   ├── new page 4
│   │   │   │           │   │   ├── new page 5
│   │   │   │           │   │   ├── new page 6
│   │   │   │           │   │   ├── new page 7
│   │   │   │           │   │   ├── new page 8
│   │   │   │           │   │   └── new page 9
│   │   │   │           │   ├── random
│   │   │   │           │   │   ├── disable magic_quotes_gpc for php enabled
│   │   │   │           │   │   ├── grant cgi access in a specific directory
│   │   │   │           │   │   ├── new page
│   │   │   │           │   │   ├── new page 4
│   │   │   │           │   │   └── new page 5
│   │   │   │           │   ├── redirects
│   │   │   │           │   │   ├── important note about redirecting via mod
│   │   │   │           │   │   ├── new page 5
│   │   │   │           │   │   ├── new page 6
│   │   │   │           │   │   ├── new page 7
│   │   │   │           │   │   ├── new page 8
│   │   │   │           │   │   ├── redirect from an old domain to a new dom
│   │   │   │           │   │   ├── redirect from “www” domain to “non-www”
│   │   │   │           │   │   └── redirect string variations to a specific
│   │   │   │           │   ├── resources
│   │   │   │           │   ├── security
│   │   │   │           │   │   ├── block robots, rippers, and offline brows
│   │   │   │           │   │   ├── deny-allow multiple ip addresses on one
│   │   │   │           │   │   ├── miscellaneous rules for blocking-allowin
│   │   │   │           │   │   ├── new page
│   │   │   │           │   │   ├── new page 14
│   │   │   │           │   │   ├── new page 15
│   │   │   │           │   │   ├── new page 16
│   │   │   │           │   │   ├── new page 18
│   │   │   │           │   │   ├── new page 19
│   │   │   │           │   │   ├── new page 2
│   │   │   │           │   │   ├── new page 20
│   │   │   │           │   │   ├── new page 21
│   │   │   │           │   │   ├── new page 22
│   │   │   │           │   │   ├── new page 3
│   │   │   │           │   │   ├── new page 4
│   │   │   │           │   │   ├── new page 5
│   │   │   │           │   │   ├── new page 6
│   │   │   │           │   │   ├── new page 7
│   │   │   │           │   │   ├── new page 8
│   │   │   │           │   │   ├── new page 9
│   │   │   │           │   │   ├── password-protect files, directories, and
│   │   │   │           │   │   └── stop hotlinking, serve alternate content
│   │   │   │           │   ├── usability
│   │   │   │           │   │   ├── new page
│   │   │   │           │   │   ├── new page 2
│   │   │   │           │   │   ├── new page 3
│   │   │   │           │   │   ├── new page 4
│   │   │   │           │   │   ├── new page 5
│   │   │   │           │   │   ├── new page 6
│   │   │   │           │   │   ├── prevent access during specified time per
│   │   │   │           │   │   ├── provide password-prompt during site deve
│   │   │   │           │   │   └── redirect visitors during site developmen
│   │   │   │           │   └── wordpress
│   │   │   │           │       ├── new page
│   │   │   │           │       └── new page 2
│   │   │   │           ├── technology specific
│   │   │   │           │   ├── coldfusion
│   │   │   │           │   ├── databases
│   │   │   │           │   │   ├── db2
│   │   │   │           │   │   │   ├── attacking
│   │   │   │           │   │   │   │   └── default accounts
│   │   │   │           │   │   │   └── ports
│   │   │   │           │   │   ├── microsoft sql (ms-sql)
│   │   │   │           │   │   │   ├── attacking
│   │   │   │           │   │   │   │   ├── default accounts
│   │   │   │           │   │   │   │   └── escalation with xp_cmdshell 2
│   │   │   │           │   │   │   ├── authentication
│   │   │   │           │   │   │   ├── encryption
│   │   │   │           │   │   │   ├── password storage-hashing
│   │   │   │           │   │   │   ├── ports
│   │   │   │           │   │   │   ├── server roles
│   │   │   │           │   │   │   └── syntax reference
│   │   │   │           │   │   ├── mysql
│   │   │   │           │   │   │   ├── attacking
│   │   │   │           │   │   │   │   └── default accounts
│   │   │   │           │   │   │   └── ports
│   │   │   │           │   │   └── oracle
│   │   │   │           │   │       ├── attacking
│   │   │   │           │   │       │   └── default accounts
│   │   │   │           │   │       ├── password storage-hashing
│   │   │   │           │   │       ├── ports
│   │   │   │           │   │       └── syntax reference
│   │   │   │           │   ├── jboss
│   │   │   │           │   ├── lotus
│   │   │   │           │   ├── oracle app servers
│   │   │   │           │   ├── sap
│   │   │   │           │   ├── sharepoint
│   │   │   │           │   └── vmware web
│   │   │   │           └── webshells
│   │   │   ├── __NOTEBOOK__
│   │   │   ├── passwords
│   │   │   │   ├── default password locations
│   │   │   │   │   ├── browsers
│   │   │   │   │   ├── email
│   │   │   │   │   ├── messenger
│   │   │   │   │   ├── ms-sql
│   │   │   │   │   ├── other
│   │   │   │   │   ├── windows
│   │   │   │   │   │   ├── credential store
│   │   │   │   │   │   │   └── password types
│   │   │   │   │   │   │       ├── recover domain network
│   │   │   │   │   │   │       ├── recover domain visible
│   │   │   │   │   │   │       └── recover generic
│   │   │   │   │   │   └── registry
│   │   │   │   │   └── wordpress
│   │   │   │   ├── default passwords
│   │   │   │   ├── generate wordlists
│   │   │   │   │   ├── cewl
│   │   │   │   │   ├── crunch
│   │   │   │   │   ├── cupp
│   │   │   │   │   ├── dymerge
│   │   │   │   │   └── pydictor
│   │   │   │   ├── notes
│   │   │   │   └── technical stuff
│   │   │   │       ├── kerberos
│   │   │   │       │   └── intro
│   │   │   │       ├── lm hash
│   │   │   │       │   ├── creation
│   │   │   │       │   └── intro
│   │   │   │       ├── ntlm hash
│   │   │   │       │   ├── creation
│   │   │   │       │   └── intro
│   │   │   │       ├── ntlmv2
│   │   │   │       │   └── intro
│   │   │   │       └── pass-the-hash
│   │   │   │           └── obtain
│   │   │   │               └── tools
│   │   │   │                   ├── cain  abel
│   │   │   │                   ├── gsecdump
│   │   │   │                   ├── hydra
│   │   │   │                   ├── jomo-kun (jmk)
│   │   │   │                   ├── metasploit
│   │   │   │                   │   ├── hashdump
│   │   │   │                   │   └── metasploit psexec
│   │   │   │                   ├── msvctl
│   │   │   │                   ├── pshtoolkit
│   │   │   │                   ├── pwdump7
│   │   │   │                   └── smbshell
│   │   │   ├── scripts
│   │   │   │   ├── local information enumeration
│   │   │   │   │   ├── linux
│   │   │   │   │   │   └── links
│   │   │   │   │   │       └── todo
│   │   │   │   │   └── windows
│   │   │   │   │       └── links
│   │   │   │   ├── network recon
│   │   │   │   │   └── links
│   │   │   │   │       └── todo
│   │   │   │   └── post escalation
│   │   │   │       ├── links
│   │   │   │       ├── pivoting
│   │   │   │       └── pwnwiki.io
│   │   │   ├── security hardening
│   │   │   │   ├── databases
│   │   │   │   │   ├── ms-sql
│   │   │   │   │   └── oracle
│   │   │   │   ├── links
│   │   │   │   ├── linux
│   │   │   │   │   └── cent os
│   │   │   │   ├── why
│   │   │   │   └── windows
│   │   │   │       └── pass-the-hash
│   │   │   ├── system commands
│   │   │   │   ├── linux
│   │   │   │   │   ├── awk
│   │   │   │   │   │   ├── cat-print file
│   │   │   │   │   │   ├── combine  unique
│   │   │   │   │   │   ├── count of letters in word
│   │   │   │   │   │   ├── parsing apache access logs
│   │   │   │   │   │   │   └── top stats
│   │   │   │   │   │   ├── print columns
│   │   │   │   │   │   └── system cmd exec
│   │   │   │   │   ├── backgrounding processes
│   │   │   │   │   ├── bash-cmd-
│   │   │   │   │   │   ├── for loops
│   │   │   │   │   │   └── if exists
│   │   │   │   │   ├── cat
│   │   │   │   │   ├── chattr  lsattr
│   │   │   │   │   │   ├── attributes
│   │   │   │   │   │   ├── chattr
│   │   │   │   │   │   └── lsattr
│   │   │   │   │   ├── chmod
│   │   │   │   │   │   ├── chmod human readable
│   │   │   │   │   │   └── chmod octal
│   │   │   │   │   ├── command substitution
│   │   │   │   │   ├── compgen
│   │   │   │   │   ├── cron - crontab
│   │   │   │   │   │   └── run every x minutes
│   │   │   │   │   ├── curl
│   │   │   │   │   ├── cut
│   │   │   │   │   ├── disks
│   │   │   │   │   │   ├── cryptsetup
│   │   │   │   │   │   ├── fdisk
│   │   │   │   │   │   ├── lsblk
│   │   │   │   │   │   ├── mkfs
│   │   │   │   │   │   ├── mount
│   │   │   │   │   │   └── parted
│   │   │   │   │   ├── echo
│   │   │   │   │   ├── find
│   │   │   │   │   │   ├── cmd exec
│   │   │   │   │   │   └── printf and columns
│   │   │   │   │   ├── for
│   │   │   │   │   ├── fping
│   │   │   │   │   ├── fuser
│   │   │   │   │   ├── gcc - wine
│   │   │   │   │   ├── gcore
│   │   │   │   │   ├── getent
│   │   │   │   │   ├── git
│   │   │   │   │   ├── grep
│   │   │   │   │   ├── groups
│   │   │   │   │   ├── ip
│   │   │   │   │   ├── last
│   │   │   │   │   ├── link
│   │   │   │   │   ├── ln
│   │   │   │   │   ├── locate
│   │   │   │   │   ├── ls
│   │   │   │   │   ├── lsof
│   │   │   │   │   │   └── port info script
│   │   │   │   │   ├── ltrace
│   │   │   │   │   ├── mount
│   │   │   │   │   │   └── noexec bypass
│   │   │   │   │   │       └── fixelf.c
│   │   │   │   │   ├── nasm
│   │   │   │   │   │   └── basics - references
│   │   │   │   │   ├── netcat
│   │   │   │   │   ├── openssl
│   │   │   │   │   ├── ping
│   │   │   │   │   ├── ps
│   │   │   │   │   ├── rdesktop
│   │   │   │   │   ├── rpcclient
│   │   │   │   │   ├── rpcinfo
│   │   │   │   │   ├── rsync
│   │   │   │   │   ├── screen
│   │   │   │   │   ├── sed
│   │   │   │   │   ├── seq
│   │   │   │   │   ├── smbclient - smbmount
│   │   │   │   │   ├── ssh
│   │   │   │   │   │   ├── create ssh key
│   │   │   │   │   │   ├── notes
│   │   │   │   │   │   ├── ssh access with authorized_keys file
│   │   │   │   │   │   ├── ssh dynamic port forward (socks proxy)
│   │   │   │   │   │   │   └── configure proxychains
│   │   │   │   │   │   ├── ssh local port forwarding
│   │   │   │   │   │   ├── use stolen id_rsa
│   │   │   │   │   │   └── x11 forward over ssh
│   │   │   │   │   ├── std in-out-err
│   │   │   │   │   ├── strace
│   │   │   │   │   ├── systemctl
│   │   │   │   │   ├── timestamps
│   │   │   │   │   ├── tmux
│   │   │   │   │   ├── tr
│   │   │   │   │   ├── useradd  usermod
│   │   │   │   │   │   ├── useradd
│   │   │   │   │   │   └── usermod
│   │   │   │   │   ├── vi
│   │   │   │   │   ├── wget
│   │   │   │   │   ├── xargs
│   │   │   │   │   ├── xclip
│   │   │   │   │   └── xterm
│   │   │   │   │       ├── list of open windows from xserver
│   │   │   │   │       └── not working
│   │   │   │   └── windows
│   │   │   │       ├── accesschk.exe
│   │   │   │       ├── ad command reference
│   │   │   │       │   └── dsquery
│   │   │   │       ├── arp
│   │   │   │       ├── bitsadmin
│   │   │   │       ├── calcs - icalcs
│   │   │   │       │   ├── cacls
│   │   │   │       │   ├── icacls
│   │   │   │       │   └── permissions
│   │   │   │       ├── cmd
│   │   │   │       │   ├── echo blank lines
│   │   │   │       │   ├── escaping specials
│   │   │   │       │   ├── finding writable or more
│   │   │   │       │   └── for
│   │   │   │       ├── delete logs
│   │   │   │       ├── dir
│   │   │   │       ├── diskpart
│   │   │   │       ├── diskshadow
│   │   │   │       ├── event utility
│   │   │   │       ├── findstr
│   │   │   │       ├── fingerprinting
│   │   │   │       ├── ipconfig
│   │   │   │       ├── makecab
│   │   │   │       ├── msiexec
│   │   │   │       ├── nbtstat
│   │   │   │       ├── net - netsh
│   │   │   │       │   ├── accounts
│   │   │   │       │   ├── computer
│   │   │   │       │   ├── config server
│   │   │   │       │   ├── config workstation
│   │   │   │       │   ├── continue
│   │   │   │       │   ├── file
│   │   │   │       │   ├── group
│   │   │   │       │   ├── localgroup
│   │   │   │       │   ├── name
│   │   │   │       │   ├── pause
│   │   │   │       │   ├── print
│   │   │   │       │   ├── send
│   │   │   │       │   ├── session
│   │   │   │       │   ├── share
│   │   │   │       │   ├── start
│   │   │   │       │   ├── statistics
│   │   │   │       │   ├── stop
│   │   │   │       │   ├── time
│   │   │   │       │   ├── use
│   │   │   │       │   ├── user
│   │   │   │       │   └── view
│   │   │   │       ├── netstat
│   │   │   │       ├── networking
│   │   │   │       ├── package manager
│   │   │   │       ├── powershell
│   │   │   │       │   ├── active windows - applications
│   │   │   │       │   │   └── get-activewindow.ps1
│   │   │   │       │   ├── enumerate patching
│   │   │   │       │   ├── folder - file permissions
│   │   │   │       │   ├── format
│   │   │   │       │   ├── get powershell version
│   │   │   │       │   ├── hiding prompts-windows
│   │   │   │       │   ├── including functions from a file
│   │   │   │       │   ├── linux equivalents
│   │   │   │       │   │   ├── cat
│   │   │   │       │   │   ├── cd
│   │   │   │       │   │   ├── cp
│   │   │   │       │   │   ├── find
│   │   │   │       │   │   ├── grep
│   │   │   │       │   │   ├── ls
│   │   │   │       │   │   ├── man
│   │   │   │       │   │   ├── mkdir
│   │   │   │       │   │   ├── netstat
│   │   │   │       │   │   ├── ping equivalent
│   │   │   │       │   │   ├── ps
│   │   │   │       │   │   ├── pwd
│   │   │   │       │   │   ├── rm
│   │   │   │       │   │   ├── tail
│   │   │   │       │   │   ├── touch
│   │   │   │       │   │   └── uname
│   │   │   │       │   ├── psdrive - mount share
│   │   │   │       │   ├── pssession
│   │   │   │       │   ├── query ad
│   │   │   │       │   ├── registry
│   │   │   │       │   ├── running applications
│   │   │   │       │   ├── services
│   │   │   │       │   ├── start-process
│   │   │   │       │   └── stop real-time monitoring anti-virus
│   │   │   │       ├── processes - services
│   │   │   │       │   ├── procdump.exe - processdump
│   │   │   │       │   ├── sc
│   │   │   │       │   │   ├── sc config
│   │   │   │       │   │   ├── sc create
│   │   │   │       │   │   ├── sc qc
│   │   │   │       │   │   ├── sc query
│   │   │   │       │   │   ├── sc sdshow
│   │   │   │       │   │   └── sddl security descriptor language
│   │   │   │       │   │       └── aliases
│   │   │   │       │   └── tasklist - taskkill
│   │   │   │       ├── psexec
│   │   │   │       ├── rdp
│   │   │   │       ├── registry
│   │   │   │       │   ├── reg add
│   │   │   │       │   ├── reg compare
│   │   │   │       │   ├── reg copy
│   │   │   │       │   ├── reg delete
│   │   │   │       │   ├── reg export
│   │   │   │       │   ├── reg import
│   │   │   │       │   └── reg query
│   │   │   │       │       └── manual
│   │   │   │       ├── route
│   │   │   │       ├── runas
│   │   │   │       │   └── no domain kerberos tgt
│   │   │   │       ├── schtasks - at
│   │   │   │       │   ├── at
│   │   │   │       │   └── schtasks
│   │   │   │       │       ├── change
│   │   │   │       │       ├── create
│   │   │   │       │       ├── delete
│   │   │   │       │       ├── end
│   │   │   │       │       ├── query
│   │   │   │       │       └── run
│   │   │   │       ├── set
│   │   │   │       ├── shutdown
│   │   │   │       ├── subinacl.exe
│   │   │   │       ├── systeminfo
│   │   │   │       ├── tree
│   │   │   │       ├── wevtutil and eventcreate
│   │   │   │       │   ├── eventcreate
│   │   │   │       │   └── wevtutil
│   │   │   │       ├── whoami
│   │   │   │       ├── winrm
│   │   │   │       │   ├── general primer
│   │   │   │       │   ├── test other machines
│   │   │   │       │   └── various commands
│   │   │   │       ├── winxp command help
│   │   │   │       │   └── commands
│   │   │   │       ├── wmic
│   │   │   │       │   ├── av detection
│   │   │   │       │   ├── c2
│   │   │   │       │   │   ├── pull attack
│   │   │   │       │   │   └── push attack
│   │   │   │       │   │       └── stealthy push
│   │   │   │       │   ├── code exec - lateral movement
│   │   │   │       │   │   ├── event consumers
│   │   │   │       │   │   └── win32_process create
│   │   │   │       │   ├── command switches
│   │   │   │       │   ├── covert data storage
│   │   │   │       │   ├── events
│   │   │   │       │   │   ├── event consumers
│   │   │   │       │   │   ├── event filters
│   │   │   │       │   │   ├── event type extrinsic
│   │   │   │       │   │   ├── event type intrinsic
│   │   │   │       │   │   └── general primer
│   │   │   │       │   ├── general primer
│   │   │   │       │   │   └── explore wmi with gui
│   │   │   │       │   ├── os patch enumeration
│   │   │   │       │   ├── popular commands
│   │   │   │       │   ├── powershell wmi commands
│   │   │   │       │   ├── providers
│   │   │   │       │   ├── recon
│   │   │   │       │   ├── uninstall products
│   │   │   │       │   └── vm detection
│   │   │   │       └── xcopy
│   │   │   ├── tools
│   │   │   │   ├── interesting projects (mostly github)
│   │   │   │   │   ├── linux oriented
│   │   │   │   │   │   ├── cminer enumerate code caves in pe files
│   │   │   │   │   │   ├── graudit grep rough source code auditing
│   │   │   │   │   │   ├── responder llmnr, mbt-ns,  mdns poisone
│   │   │   │   │   │   ├── staekka extending metasploit, tty shell
│   │   │   │   │   │   └── vulnreport ruby-based pentesting manage
│   │   │   │   │   └── windows oriented
│   │   │   │   │       ├── email password dump recover lost email
│   │   │   │   │       ├── networkpassworddecryptor recover networ
│   │   │   │   │       ├── nishang powershell for pen testing and
│   │   │   │   │       └── uacme defeating windows user account co
│   │   │   │   │           └── target list
│   │   │   │   ├── links for web-based-external tools
│   │   │   │   │   ├── hash cracking
│   │   │   │   │   └── osint
│   │   │   │   │       ├── dns
│   │   │   │   │       ├── infrastructure
│   │   │   │   │       ├── other
│   │   │   │   │       └── people
│   │   │   │   ├── linux oriented
│   │   │   │   │   ├── impacket
│   │   │   │   │   │   ├── home
│   │   │   │   │   │   └── wmiexec
│   │   │   │   │   │       └── attackerkb reference
│   │   │   │   │   ├── osint
│   │   │   │   │   │   ├── dns
│   │   │   │   │   │   │   ├── altdns generates permutations, alterati
│   │   │   │   │   │   │   ├── dnstracer trace a chain of dns servers
│   │   │   │   │   │   │   ├── domain setup script for recon-ng, super
│   │   │   │   │   │   │   ├── knock subdomain scan
│   │   │   │   │   │   │   ├── massdns high-performance dns stub resol
│   │   │   │   │   │   │   ├── potential methodology recommendation
│   │   │   │   │   │   │   ├── subbrute dns meta-query spider enumerat
│   │   │   │   │   │   │   └── sublist3r fast subdomains enumeration t
│   │   │   │   │   │   ├── fingerprint
│   │   │   │   │   │   │   ├── servers
│   │   │   │   │   │   │   │   ├── httprecon web server fingerprinting
│   │   │   │   │   │   │   │   └── httprint web server enabled fingerprint
│   │   │   │   │   │   │   ├── web app firewalls
│   │   │   │   │   │   │   │   └── wafw00f identify and fingerprint waf pr
│   │   │   │   │   │   │   └── web apps
│   │   │   │   │   │   │       ├── blindelephant web app fingerprint
│   │   │   │   │   │   │       ├── wafp web app fingerprinter in ruby
│   │   │   │   │   │   │       └── whatweb web scanner. identify tech stac
│   │   │   │   │   │   ├── metadata
│   │   │   │   │   │   │   ├── exiftool read, write, and edit metadata
│   │   │   │   │   │   │   └── metagoofil extract metadata of public d
│   │   │   │   │   │   └── multi
│   │   │   │   │   │       └── theharvester e-mails, subdomains, and n
│   │   │   │   │   ├── sqlmap
│   │   │   │   │   │   └── help
│   │   │   │   │   └── web oriented
│   │   │   │   │       ├── authforce user-pass auth tester
│   │   │   │   │       ├── auxiliary
│   │   │   │   │       │   ├── adlabs rava, js-recon, shell of the fu
│   │   │   │   │       │   └── amazonbucketfinder check if bucket name
│   │   │   │   │       ├── beef browser exploit framework. focus o
│   │   │   │   │       ├── dirsearch web path scanner
│   │   │   │   │       ├── dotdotpwn directory traversal fuzzer
│   │   │   │   │       ├── fimap find, prep, audit, exploit, lfi b
│   │   │   │   │       ├── lfifreak a unique automated lfi exploit
│   │   │   │   │       ├── pinata csrf tool
│   │   │   │   │       ├── skipfish web security recon tool
│   │   │   │   │       ├── w3af web app attack and audit framework
│   │   │   │   │       ├── wapiti web app vuln scanner
│   │   │   │   │       ├── ws-attacker modular testing framework f
│   │   │   │   │       └── xsser automatic -framework- to detect,
│   │   │   │   └── windows oriented
│   │   │   │       ├── mimikatz
│   │   │   │       │   ├── extract passwords from hiberfil.sys
│   │   │   │       │   ├── golden ticket
│   │   │   │       │   │   ├── attackerkb reference
│   │   │   │       │   │   ├── beneaththewaves walkthrough
│   │   │   │       │   │   └── rycon.hu walkthrough
│   │   │   │       │   ├── invoke
│   │   │   │       │   ├── links
│   │   │   │       │   └── mimikatz on xp
│   │   │   │       ├── osint
│   │   │   │       │   └── multi
│   │   │   │       │       └── foca find metadata and hidden informati
│   │   │   │       ├── powershell 2
│   │   │   │       │   ├── powershell empire
│   │   │   │       │   │   ├── attackerkb reference
│   │   │   │       │   │   └── home
│   │   │   │       │   ├── powershell-suite
│   │   │   │       │   │   └── home musings with powershell
│   │   │   │       │   ├── powershell tips-notes
│   │   │   │       │   │   └── notes
│   │   │   │       │   │       └── execution bypass
│   │   │   │       │   └── powersploit
│   │   │   │       │       └── home
│   │   │   │       └── softperfect network scanner
│   │   │   │           └── network scanner scanner with range of o
│   │   │   └── trash
│   │   └── Vuln_Report_Template_DO NOT EDIT
│   │       ├── apendix
│   │       │   └── scripts
│   │       ├── global loot
│   │       │   ├── network targets
│   │       │   └── user pass
│   │       ├── inital discovery
│   │       │   ├── netdiscover
│   │       │   └── nmap ping
│   │       ├── machines
│   │       │   └── ip
│   │       │       ├── active recon
│   │       │       │   ├── database
│   │       │       │   │   ├── additional scripts
│   │       │       │   │   ├── attempt credential access
│   │       │       │   │   ├── attempt exploit
│   │       │       │   │   ├── banner
│   │       │       │   │   ├── version
│   │       │       │   │   └── vulnerability search
│   │       │       │   │       ├── getsploit
│   │       │       │   │       ├── other
│   │       │       │   │       └── searchsploit
│   │       │       │   ├── ftp
│   │       │       │   │   ├── additional scripts
│   │       │       │   │   ├── attempt credential access
│   │       │       │   │   ├── attempt exploit
│   │       │       │   │   ├── banner
│   │       │       │   │   ├── version
│   │       │       │   │   └── vulnerability search
│   │       │       │   │       ├── getsploit
│   │       │       │   │       ├── other
│   │       │       │   │       └── searchsploit
│   │       │       │   ├── host information
│   │       │       │   ├── ldap
│   │       │       │   │   ├── additional scripts
│   │       │       │   │   ├── attempt credential access
│   │       │       │   │   ├── attempt exploit
│   │       │       │   │   ├── banner
│   │       │       │   │   ├── version
│   │       │       │   │   └── vulnerability search
│   │       │       │   │       ├── getsploit
│   │       │       │   │       ├── other
│   │       │       │   │       └── searchsploit
│   │       │       │   ├── nfs
│   │       │       │   │   ├── additional scripts
│   │       │       │   │   ├── attempt credential access
│   │       │       │   │   ├── attempt exploit
│   │       │       │   │   ├── banner
│   │       │       │   │   ├── version
│   │       │       │   │   └── vulnerability search
│   │       │       │   │       ├── getsploit
│   │       │       │   │       ├── other
│   │       │       │   │       └── searchsploit
│   │       │       │   ├── nmap full
│   │       │       │   │   ├── tcp
│   │       │       │   │   └── udp all
│   │       │       │   ├── rdp
│   │       │       │   │   ├── additional scripts
│   │       │       │   │   ├── attempt credential access
│   │       │       │   │   ├── attempt exploit
│   │       │       │   │   ├── banner
│   │       │       │   │   ├── version
│   │       │       │   │   └── vulnerability search
│   │       │       │   │       ├── getsploit
│   │       │       │   │       ├── other
│   │       │       │   │       └── searchsploit
│   │       │       │   ├── rpc
│   │       │       │   │   ├── additional scripts
│   │       │       │   │   ├── attempt credential access
│   │       │       │   │   ├── attempt exploit
│   │       │       │   │   ├── banner
│   │       │       │   │   ├── version
│   │       │       │   │   └── vulnerability search
│   │       │       │   │       ├── getsploit
│   │       │       │   │       ├── other
│   │       │       │   │       └── searchsploit
│   │       │       │   ├── smb
│   │       │       │   │   ├── additional scripts
│   │       │       │   │   ├── attempt credential access
│   │       │       │   │   ├── attempt exploit
│   │       │       │   │   ├── banner
│   │       │       │   │   ├── version
│   │       │       │   │   └── vulnerability search
│   │       │       │   │       ├── getsploit
│   │       │       │   │       ├── other
│   │       │       │   │       └── searchsploit
│   │       │       │   ├── smtp
│   │       │       │   │   ├── additional scripts
│   │       │       │   │   ├── attempt credential access
│   │       │       │   │   ├── attempt exploit
│   │       │       │   │   ├── banner
│   │       │       │   │   ├── version
│   │       │       │   │   └── vulnerability search
│   │       │       │   │       ├── getsploit
│   │       │       │   │       ├── other
│   │       │       │   │       └── searchsploit
│   │       │       │   ├── snmp
│   │       │       │   │   ├── additional scripts
│   │       │       │   │   ├── attempt credential access
│   │       │       │   │   ├── attempt exploit
│   │       │       │   │   ├── banner
│   │       │       │   │   ├── version
│   │       │       │   │   └── vulnerability search
│   │       │       │   │       ├── getsploit
│   │       │       │   │       ├── other
│   │       │       │   │       └── searchsploit
│   │       │       │   ├── ssh
│   │       │       │   │   ├── additional scripts
│   │       │       │   │   ├── attempt credential access
│   │       │       │   │   ├── attempt exploit
│   │       │       │   │   ├── banner
│   │       │       │   │   ├── ssl
│   │       │       │   │   ├── version
│   │       │       │   │   └── vulnerability search
│   │       │       │   │       ├── getsploit
│   │       │       │   │       ├── other
│   │       │       │   │       └── searchsploit
│   │       │       │   ├── telnet
│   │       │       │   │   ├── additional scripts
│   │       │       │   │   ├── attempt credential access
│   │       │       │   │   ├── attempt exploit
│   │       │       │   │   ├── banner
│   │       │       │   │   ├── version
│   │       │       │   │   └── vulnerability search
│   │       │       │   │       ├── getsploit
│   │       │       │   │       ├── other
│   │       │       │   │       └── searchsploit
│   │       │       │   ├── tftp
│   │       │       │   │   ├── additional scripts
│   │       │       │   │   ├── attempt credential access
│   │       │       │   │   ├── attempt exploit
│   │       │       │   │   ├── banner
│   │       │       │   │   ├── version
│   │       │       │   │   └── vulnerability search
│   │       │       │   │       ├── getsploit
│   │       │       │   │       ├── other
│   │       │       │   │       └── searchsploit
│   │       │       │   ├── time log
│   │       │       │   └── website
│   │       │       │       ├── 443
│   │       │       │       ├── 80
│   │       │       │       └── ssl
│   │       │       ├── high priv
│   │       │       │   └── gathered info
│   │       │       │       └── new page
│   │       │       ├── low priv
│   │       │       │   └── gathered info
│   │       │       │       └── new page
│   │       │       ├── passive recon
│   │       │       │   ├── broadcast
│   │       │       │   ├── dns
│   │       │       │   └── sniffing
│   │       │       ├── persistence
│   │       │       │   ├── system
│   │       │       │   └── userland
│   │       │       ├── prime loot
│   │       │       │   ├── flag
│   │       │       │   └── local
│   │       │       └── priv escalation
│   │       │           ├── not success
│   │       │           └── success
│   │       ├── __NOTEBOOK__
│   │       └── trash
│   ├── lists
│   │   ├── Password
│   │   │   └── Password Rulesets
│   │   │       ├── hashcat
│   │   │       └── john
│   │   ├── Personal
│   │   │   ├── CMD Inject
│   │   │   ├── Database
│   │   │   │   └── Creds
│   │   │   ├── DirTrav
│   │   │   ├── DNS
│   │   │   ├── SNMP
│   │   │   └── UserAgents
│   │   └── Web
│   │       ├── AllWebLists
│   │       │   ├── large_lists
│   │       │   ├── processed
│   │       │   │   └── extensions
│   │       │   └── separate
│   │       ├── Dirb-Lists
│   │       │   ├── others
│   │       │   ├── stress
│   │       │   └── vulns
│   │       ├── DirBuster-Lists
│   │       └── Snallygaster
│   ├── Local Info Enum
│   │   ├── Archives
│   │   │   └── Linux
│   │   ├── Linux
│   │   └── Windows
│   ├── PDFs&Documents
│   │   ├── Conferences
│   │   │   ├── ASLR
│   │   │   ├── Database
│   │   │   ├── Other
│   │   │   └── XSS
│   │   ├── Kali_&_Metasploit
│   │   ├── Oracle MiddleWare
│   │   ├── OWASP
│   │   ├── Programming Languages
│   │   │   ├── Python
│   │   │   └── Ruby
│   │   ├── Recommended Books
│   │   └── Web Attack Resources
│   ├── Priv Esc Checks
│   │   ├── Linux
│   │   └── Windows
│   ├── Process&Methodology
│   ├── Reporting
│   ├── Scanning&Recon
│   ├── scripts
│   │   ├── random
│   │   │   └── Sparta
│   │   └── recon_enum
│   │       ├── auxiliary
│   │       ├── ftp
│   │       ├── mssql
│   │       ├── mysql
│   │       ├── rdp
│   │       ├── results
│   │       │   └── exam
│   │       └── telnet
│   └── Tools
│       ├── DefCon_JtrMakeConfig
│       │   └── supportFiles
│       ├── getGithubStars
│       ├── JohnTheRipper-bleeding-jumbo
│       │   ├── DefCon_JtrMakeConfig
│       │   │   └── supportFiles
│       │   ├── doc
│       │   ├── run
│       │   │   ├── kerberom
│       │   │   │   ├── bin
│       │   │   │   └── modules
│       │   │   │       └── rom
│       │   │   │           └── _crypto
│       │   │   ├── lib
│       │   │   └── ztex
│       │   └── src
│       │       ├── aes
│       │       │   ├── aesni
│       │       │   │   └── asm
│       │       │   │       ├── x64
│       │       │   │       └── x86
│       │       │   └── openssl
│       │       ├── cygwin
│       │       ├── escrypt
│       │       ├── lzma
│       │       ├── m4
│       │       ├── opencl
│       │       ├── secp256k1
│       │       ├── unused
│       │       └── ztex
│       │           ├── ez-usb
│       │           ├── fpga-bcrypt
│       │           │   ├── bcrypt
│       │           │   │   └── bcrypt_core
│       │           │   ├── pkt_comm
│       │           │   ├── util
│       │           │   └── ztex_inouttraffic
│       │           ├── fpga-descrypt
│       │           │   ├── descrypt
│       │           │   │   └── descrypt_core
│       │           │   ├── pkt_comm
│       │           │   ├── pkt_test
│       │           │   ├── util
│       │           │   └── ztex_inouttraffic
│       │           └── pkt_comm
│       └── WebLogicPasswordDecryptor
├── PayloadsAllTheThings
│   ├── AWS Amazon Bucket S3
│   ├── Command Injection
│   │   └── Intruder
│   ├── CRLF Injection
│   ├── CSRF Injection
│   │   └── Images
│   ├── CSV Injection
│   ├── CVE Exploits
│   ├── Directory Traversal
│   │   └── Intruder
│   ├── File Inclusion
│   │   └── Intruders
│   ├── GraphQL Injection
│   ├── Insecure Deserialization
│   │   └── Files
│   ├── Insecure Direct Object References
│   │   └── Images
│   ├── Insecure Management Interface
│   │   └── Intruder
│   ├── Insecure Source Code Management
│   ├── JSON Web Token
│   ├── LaTeX Injection
│   ├── LDAP Injection
│   │   └── Intruder
│   ├── Methodology and Resources
│   ├── NoSQL Injection
│   │   └── Intruder
│   ├── OAuth
│   ├── Open Redirect
│   │   └── Intruder
│   ├── SAML Injection
│   │   └── Images
│   ├── Server Side Request Forgery
│   │   ├── Files
│   │   └── Images
│   ├── Server Side Template Injection
│   │   ├── Files
│   │   ├── Images
│   │   └── Intruder
│   ├── SQL Injection
│   │   ├── Images
│   │   └── Intruder
│   ├── _template_vuln
│   ├── Type Juggling
│   ├── Upload Insecure Files
│   │   ├── Configuration Apache .htaccess
│   │   ├── Configuration Busybox httpd.conf
│   │   ├── Configuration IIS web.config
│   │   ├── Configuration Python __init__.py
│   │   ├── CVE Ffmpeg HLS
│   │   ├── CVE Image Tragik
│   │   ├── CVE ZIP Symbolic Link
│   │   ├── EICAR
│   │   ├── Extension Flash
│   │   ├── Extension HTML
│   │   ├── Extension PDF JS
│   │   ├── Extension PHP
│   │   ├── Picture Metadata
│   │   ├── Picture Resize
│   │   └── Server Side Include
│   ├── Web Cache Deception
│   │   └── Intruders
│   ├── Web Sockets
│   │   ├── Files
│   │   └── Images
│   ├── XPATH Injection
│   ├── XSS Injection
│   │   ├── Files
│   │   ├── Images
│   │   └── Intruders
│   └── XXE Injection
│       ├── Files
│       └── Intruders
├── penbook
│   ├── assets
│   ├── physical_access_to_machine
│   ├── styles
│   └── writeups
│       └── vulnhub
├── pentestbook
│   ├── assets
│   ├── physical_access_to_machine
│   ├── styles
│   └── writeups
│       └── vulnhub
├── pentest_compilation
├── Powershell-Cheatsheet
├── pronotes
├── python-pty-shells-master
├── Red-Team-Infrastructure-Wiki
│   └── images
├── resource-threat-hunting
├── SCADA PLC ICS Pentest PDFs
│   └── awesome-industrial-control-system-security
│       └── source
├── SecLists
│   ├── Discovery
│   │   ├── DNS
│   │   ├── Infrastructure
│   │   ├── SNMP
│   │   └── Web-Content
│   │       ├── CMS
│   │       ├── SVNDigger
│   │       │   ├── cat
│   │       │   │   ├── Conf
│   │       │   │   ├── Database
│   │       │   │   ├── Language
│   │       │   │   └── Project
│   │       │   └── context
│   │       ├── URLs
│   │       └── Web-Services
│   ├── Fuzzing
│   │   └── Polyglots
│   ├── IOCs
│   ├── Miscellaneous
│   ├── Passwords
│   │   ├── Common-Credentials
│   │   ├── Cracked-Hashes
│   │   ├── Default-Credentials
│   │   ├── Honeypot-Captures
│   │   ├── Leaked-Databases
│   │   ├── Malware
│   │   ├── Permutations
│   │   ├── Software
│   │   └── WiFi-WPA
│   ├── Pattern-Matching
│   ├── Payloads
│   │   ├── Anti-Virus
│   │   ├── File-Names
│   │   ├── Images
│   │   ├── PHPInfo
│   │   └── Zip-Bombs
│   ├── Usernames
│   │   ├── Honeypot-Captures
│   │   └── Names
│   └── Web-Shells
│       ├── FuzzDB
│       ├── JSP
│       ├── laudanum-0.8
│       │   ├── asp
│       │   ├── aspx
│       │   ├── cfm
│       │   ├── jsp
│       │   │   └── warfiles
│       │   │       ├── META-INF
│       │   │       └── WEB-INF
│       │   └── php
│       ├── PHP
│       └── WordPress
├── security-cheatsheets
├── Web-CTF-Cheatsheet
│   └── scripts
│       ├── backdoor
│       ├── others
│       ├── sqlinj
│       ├── windows
│       └── xss
├── Windows-Privilege-Escalation
└── xapax.github.io
    ├── css
    ├── img
    │   └── project
    ├── js
    └── reveng
'''
