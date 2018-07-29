# Chapter 2 - Recon & Enumeration

---

> _It is imperative that a scout should know the history, tradition, religion, social customs, and superstitions of whatever country or people he is called on to work in or among. This is almost as necessary as to know the physical character of the country, its climate and products. Certain people will do certain things almost without fail. Certain other things, perfectly feasible, they will not do. There is no danger of knowing too much of the mental habits of an enemy. One should neither underestimate the enemy nor credit him with superhuman powers. Fear and courage are latent in every human being, though roused into activity by very diverse means._
>
> _**— **_**Frederick Russell Burnham**

This is what I refer to as first-pass enumeration, or enumeration from the outside. We take the time to identify all running services and open ports and identify what they are, what they do and how we can communicate with them

## Information Gathering

##### Resources

[Recon-ng Tutorial](https://warroom.securestate.com/recon-ng-tutorial/)

##### Basic Information

```
Kali> whois domain.com
Kali> dig {a|txt|ns|mx} domain.com
Kali> dig {a|txt|ns|mx} domain.com @ns1.domain.com
```

##### Email

```
Kali> simplyemail.py -all -e domain.com
```

## Initial Discovery

##### Resources

[NMAP: A Practical Guide](https://www.exploit-db.com/papers/35425)

[NMAP: Scanning the Internet](https://www.youtube.com/watch?v=Hk-21p2m8YY)

[Massively Scaling your Scans](https://pen-testing.sans.org/blog/2017/10/25/massively-scaling-your-scanning)

##### Finger Printing

> ###### Banner Grabbing

```
Kali> nc -v $TARGET 80
Kali> telnet $TARGET 80
Kali> amap -bqv1 1-65535 $TARGET
```

> ###### TTL Fingerprinting

| Operating System | TTL |
| :--- | :--- |
| Windows | 128 |
| Solaris | 225 |
| Cisco | 225 |

##### Probing Neighbors

```
# IPV4/IPV6
Kali> netdiscover -i eth0

# IPV6
Kali> ping6 ff02::1%eth0
```

##### Network Scan

```
Kali> nmap -sn 192.168.1.0/24
Kali> nmap -sP 192.168.1.0/2
Kali> for ip in $(cat targets.txt);do nmap -A -T4 -oN scans/nmap.$ip.txt $ip;done
```

##### UDP Scan

> ###### UDP-Protocol-Scanner

```
# Port Scan
udp-protocol-scanner.pl -f ips.txt

# Protocol specific scan
udp-protocol-scanner -p ntp -f ips.txt
```

> ###### Netcat

```
# UDP (ICMP Error -> Port Closed)
Kali> nc -nv -u -z -w 1 host 160-162
```

> ###### NMAP

```
Kali> sudo nmap -sU -A -T3 --top-ports 100 10.10.10.24
```

##### TCP Scan

> ###### Netcat

```
Kali> nc -nvv -w 1 -z host 1000-2000
```

> ###### NMAP

```
Kali> nmap -p 1-65535 -sV -sS -T4 $TARGET
Kali> nmap -v -sS -A -T4 $TARGET
Kali> nmap -v -sV -O -sS -T4 $TARGET
```

##### Masscan

[A Masscan Tutorial and Primer](https://danielmiessler.com/study/masscan/)

## Enumeration

##### HTTP

Stop what you're doing and go check the source code, yes all of it.

> ###### CMSHunter

[CMS-Hunter - GitHub](https://github.com/SecWiki/CMS-Hunter)

> ###### Directory Fuzzing

```
Kali> dirb http://$TARGET /usr/share/wordlists/dirb/big.txt -o dirb.txt
Kali> gobuster -u http://$TARGET -w /usr/share/wordlists/dirb/big.txt -t 100

# A little for loop so you can go do other stuff
Kali> for wordlist in $(ls);do gobuster -u http://$TARGET -w $wordlist -t 100;done

# dirsearch is fairly good
Kali> dirsearch -u http://$TARGET -e php
```

> ###### cURL

```
# Robots can give us a clue as to where to look next you may have to send a user agent
Kali> curl -s http://$TARGET/robots.txt

# Check all the methods
Kali> curl -vX OPTIONS $TARGET
```

> ###### Nikto

```
Kali> nikto -h http://$TARGET
```

> ###### BurpSuite

I don't care who you are or what you're doing but it's time to go poke the website with burp. Play with all the things, get params, post params, cookies, user agents, referrers in fact all the headers, change get requests to posts, take note of all error codes, fuzz parameter values, and names, etc.

> ###### SSL

```
Kali> ./testssl.sh -e -E -f -p -y -Y -S -P -c -H -U $TARGET
```

##### DNS

> ###### Zone Transfer

```
Kali> host -l megacorpon.com ns1.megacorpone.com
Kali> dnsrecon -d domain.com -t axfr @ns1.domain.com
Kali> dnsenum domain.com
Kali> nslookup -> set type=any -> ls -d domain.com
```

> ###### Enumerate Subdomains

```
Kali> for sub in $(cat subdomains.txt);do host $sub.domain.com|grep "has.address";done
Kali> dnsrecon -d $TARGET -D wordlist.txt -t std --xml output.xml
```

##### DATABASES

> **MSSQL**

```
Kali> nmap -sU --script=ms-sql-info $TARGET
```

##### LDAP

> **Resources**

[Understanding the LDAP](https://n0where.net/understanding-the-ldap/)

##### RPC

> **Examples**

```
Kali> Rpcinfo -p $TARGET
```

##### RDP

```
Kali> rdesktop -u admin -p password $TARGET
```

##### NETBIOS

> **Resources**

[NBTScan Cheatsheet](https://highon.coffee/blog/nbtscan-cheat-sheet/)

[TechNet NBTStat Reference](https://technet.microsoft.com/en-us/library/cc940106.aspx?f=255&MSPPError=-2147217396)

> **Examples**

```
# Sometimes shows logged in users/addresses
Kali> nbtscan $TARGET -R 54
```

##### SAMBA

> **Resources**

[Plundering Windows accounts through authenticated SMB sessions](https://pen-testing.sans.org/blog/2013/07/24/plundering-windows-account-info-via-authenticated-smb-sessions)

[Hacking windows shares through Samba with Linux](http://www.madirish.net/59)

> **Examples**

```
# Fingerprint version
Kali> smbclient -L //$TARGET

# TODO
Kali> nmblookup -A $TARGET

# null Session
Kali> rpcclient -v "" $TARGET
Kali> smbclient -L //$TARGET

# Minimal Scan
Kali> enum4linux $TARGET

# Scan Everything
Kali> enum4linux -a $TARGET

# discover windows/samba on subnet find macs and netbios name/domain
Kali> nbtscan 192.168.1.0/24

# Find open shares
Kali> nmap -T4 -v -oA shares --script smb-enum-shares --script-args smbuser=username,smbpass=password -p445 192.168.1.0/24   
Kali> Showmount -e $TARGET/<port>

# Investigate share
Kali> smblookup -A $TARGET smbclient //MOUNT/share -I $TARGET -N

# Enumerate users
Kali> nmap -sU -sS --script=smb-enum-users -p U:137,T:139 192.168.11.0/24
Kali> python /usr/share/doc/python-impacket-doc/examples/samrdump.py $TARGET

# RID Cycling (500 = admin, 501 = Guest)
Kali> ridenum.py $TARGET 500 50000 /path/to/wordlist.txt

# NBTScan-Unixwiz
Kali> nbtscan-unixwiz -f $TARGET

# Mount Linux/Windows
Kali> mount $TARGET:/vol/share /mnt/nfs
Kali> Mount -t cifs //<server ip>/<share> <local dir> -o username=”guest”,password=””
C:\>net use Z: \\win-server\share password /user:domain\janedoe /savecred /p:no
```

##### SMTP

```
VRFY username (verifies if username exists – enumeration of accounts)
EXPN username (verifies if username is valid – enumeration of accounts)
```

##### SNMP

> **Resources**

[What is SNMP?](https://technet.microsoft.com/en-us/library/cc776379%28v=ws.10%29.aspx)

[How to get IPv6 Address through SNMP](http://docwiki.cisco.com/wiki/How_to_get_IPv6_address_via_SNMP)

[SNMPv3Enum](https://raw.githubusercontent.com/raesene/TestingScripts/master/snmpv3enum.rb)

[SNMP Enumeration](http://carnal0wnage.attackresearch.com/2007/07/over-in-lso-chat-we-were-talking-about.html)

> **Examples**

```
# Overview
Default Community Names:
public, private, cisco, manager

Enumerate MIB:
1.3.6.1.2.1.25.1.6.0 System Processes
1.3.6.1.2.1.25.4.2.1.2 Running Programs
1.3.6.1.2.1.25.4.2.1.4 Processes Path
1.3.6.1.2.1.25.2.3.1.4 Storage Units
1.3.6.1.2.1.25.6.3.1.2 Software Name
1.3.6.1.4.1.77.1.2.25 User Accounts
1.3.6.1.2.1.6.13.1.3 TCP Local Ports

# Enmerate users from SNMP
Kali> snmpwalk public -v1 192.168.X.XXX 1 | grep 77.1.2.25 | cut -d” “ -f4
Kali> python /usr/share/doc/python-impacket-doc/examples/samrdump.py SNMP $TARGET

# Search SNMP with nmap
Kali> nmap -sT -p 161 192.168.1.0/24 -oG snmp_results.txt

# Examples
Kali> snmpwalk -c public -v1 $TARGET 1.3.6.1.2.1.25.4.2.1.2
Kali> onesixtyone -c community -I $TARGET
Kali> snmpcheck -t $TARGET
Kali> snmpenum -t $TARGET

# Version3
Kali> nmap -sV -p 161 --script=snmp-info 192.168.1.0/24

# Wordlists
/usr/share/metasploit-framework/data/wordlists/snmp_default_pass.txt
```



