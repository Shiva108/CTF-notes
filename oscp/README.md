# oscp

## Reconscan.py

This script is based on the script by [Mike Czumak](http://www.securitysift.com/offsec-pwb-oscp/). But it is heavily rewritten, some things have been added, other stuff has been removed. The script is written as a preparation for the OSCP exam. It was never meant to be a general script. So if you want to use it you have to make sure to fix all the hardcoded paths. The script is multithreaded and can be run against several hosts at once.

The script is invoked like this:

```
python reconscan.py 192.168.1.101 192.168.1.102 192.168.1.103
```

One important thing to note is that I removed the scan for all ports. Because it would sometimes just take to long to run. So make sure you either add that scan or run it afterwards. So you don't miss any ports.

Please note that the script includes dirb and nikto-scans that are very invasive. The script also includes several nmap-scripts that check for vulnerabilities. So yeah, this script would be pretty illegal and bad to run against a machine you don't have permission to attack.

## Templates

I created two templates that I used as a guide for every machine I attacked. One template is for Linux machines and the other for windows. There are some differences between them. The templates became kind of my checklists. They are divided into three sections: **recon**, **privilege escalation** and **loot**.  

The templates are written in markdown. But I never actually rendered them, so I don't really know how they look like rendered. They are probably pretty messy. I also used them together with markdown syntax-highlightning in my editor, so it became easy to navigate the files.

The templates have a few keywords in the, like **INSERTIPADDRESS**. These are hooks that are read by reconscan.py, and it insert the target machine IP-address automatically. Some other stuff are also inserted automatically, like the a basic nmap-scan. And nikto-scan.

Wherever there are references to a book. This is the book: https://bobloblaw.gitbooks.io/security/content/
