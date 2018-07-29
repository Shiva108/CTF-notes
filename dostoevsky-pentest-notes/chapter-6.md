# Chapter 6 - Exploit Development

> _Security risks at the application level are among the most significant, pervasive categories of security problems impacting organizations today. But traditional IT security focuses on network and perimeter-based protection, not on the application code itself.And while most development teams test their applications for functionality, performance, and integration, the lack of security testing early in the development process can have serious consequences. Failure to address security throughout the application lifecycle can result in embarrassment—or catastrophic damages like the loss of intellectual property, money, or data._
>
> _**— **_**Buffer Overflow Attacks: Detect, Exploit, Prevent, page 403**

## Resources

##### Understanding programs in memory

[Anatomy of a program in memory](http://duartes.org/gustavo/blog/post/anatomy-of-a-program-in-memory/)

[Journey to the stack](http://duartes.org/gustavo/blog/post/journey-to-the-stack/)

[Epilogue: Canaries and Buffer Overflows](http://duartes.org/gustavo/blog/post/epilogues-canaries-buffer-overflows/)

##### Intro to Assembly

[Writing ARM Assembly Part 1](https://azeria-labs.com/writing-arm-assembly-part-1/)

[Assembly - SkullSecurity](https://wiki.skullsecurity.org/index.php?title=Fundamentals)

[x86 Assembly Crash Course](https://www.youtube.com/watch?v=75gBFiFtAb8)

[Assembly Language MegaPrimer for Linux](http://www.securitytube.net/groups?operation=view&groupId=5)

##### Intro to Buffer Overflows

[Intro to Buffer Overflows - Computerphile](https://www.youtube.com/watch?v=1S0aBV-Waeo)

[Getting cozy with Exploit Development](https://blog.mallardlabs.com/getting-cozy-with-exploit-development/)

##### Courses

[Course materials for Modern Binary Exploitation by RPISEC](https://github.com/RPISEC/MBE)

##### Resources

[From Buffer Overflows to “Weird Machines” and Theory of Computation](http://langsec.org/papers/Bratus.pdf)

[Breaking the x86 Instruction Set](https://www.youtube.com/watch?v=KrksBdWcZgQ)

[LiveOverflow's YouTube Channel](https://www.youtube.com/channel/UClcE-kVhqyiHCcjYwcpfj9w)

[radare2 as an alternative to gdb-peda](https://monosource.github.io/2016/10/radare2-peda)

[Trampolines in x64](http://www.ragestorm.net/blogs/?p=107)

[Exploit Mitigation Kill Chain](http://0xdabbad00.com/wp-content/uploads/2013/04/exploit_mitigation_kill_chain.pdf)

[Stack Smashing Protector](http://wiki.osdev.org/Stack_Smashing_Protector)

[Unusual Bugs](https://www.youtube.com/watch?v=qj79Qdmw0Pk)

[Exploit tips & techniques](https://www.youtube.com/watch?v=FEXnJKXYoLM)

[Differential Slicing: Identifying Casual Execution Differences](http://bitblaze.cs.berkeley.edu/papers/diffslicing_oakland11.pdf)

[Shellcoding for Linux & Windows Tutorial](http://www.vividmachines.com/shellcode/shellcode.html)

[Writing Shellcode by Hand](https://www.exploit-db.com/docs/17065.pdf)

[Understanding JIT Spraying](http://blog.cdleary.com/2011/08/understanding-jit-spray/)

[Interpreter Exploitation: Pointer inference and JIT spraying](http://www.semantiscope.com/research/BHDC2010/BHDC-2010-Paper.pdf)

[Writing JIT-Spray Shellcode for fun and profit](https://dl.packetstormsecurity.net/papers/shellcode/Writing-JIT-Spray-Shellcode.pdf)

[Bypassing memory protections: the future of exploitation](https://www.usenix.org/legacy/events/sec09/tech/slides/sotirov.pdf)

##### Intel

> ###### Registers

```
EAX - Accumulator
    Holds return value usually
EBX - Accumulator
    Base Calculations (Arrays, Pointers into Arrays of objects)
ECX - Count / Accumulator
EDX - Data I/O Pointer
ESI - Source index
    for source of string / array operands
EDI - Destination index
    for dest of string / array opperands
EIP - Instruction Pointer
    Points to next instruction
ESP - Stack Pointer
    Points to the top of the stack
EBP - Stack Base Pointer
    Points to the base of the stack
```

> ###### Instructions

```
mov - define
jmp - jump to address
call - jump to address and push exec address to stack
ret - pop the first value off stack and jumps to it
push - decrements stack pointer and saves new operand
pop - sets the operand to the value of the stack, then increments
```

## Buffer Overflows

##### Setup & Information

> ###### Check ASLR/DEP

###### Linux

```
Kali> checksec filename
```

###### Windows

```
C:\> Get-PESecurity -file "filename"
```

[PowerSploit](https://github.com/PowerShellMafia/PowerSploit)

> ###### Disable/Enable ASLR/DEP

###### Linux

```
Kali> echo 0 > /proc/sys/kernel/randomize_va_space
Kali> echo 2 > /proc/sys/kernel/randomize_va_space
```

###### Windows

[The Enhanced Mitigation Experience Toolkit](https://support.microsoft.com/en-us/help/2458544/the-enhanced-mitigation-experience-toolkit)

[Disable ASLR](http://icompile.eladkarako.com/disable-aslr/)

> ###### See what shared libs a program uses

###### Linux

```
Kali> ldd filename
```

> ###### Find hex addresses of functions/libs within a program

###### Linux

```
Kali> readelf -s /lib/i386-linux-gnu/libc.so.6 | grep system
Kali> strings -a -t x /lib/i386-linux-gnu/libc.so.6 | grep /bin/sh
```

##### Attack Vectors

> ###### Integer-based

[Socket Programming in Python and Integer Overflow](https://www.youtube.com/watch?v=d6BU8DWxb3c)

> ###### Stack-based

Overflow input to overwrite EIP with return address that leads to payload

[Intro to Buffer Overflows - ch3rn0byl](http://ch3rn0byl.com/intro-to-buffer-overflows/)

[Beginning Stack Based Buffer Overflows - The Grey Corner](http://www.thegreycorner.com/2010/01/beginning-stack-based-buffer-overflow.html)

[Exploit Writing Tutorial Part 1 Stack Based Overflows](https://www.corelan.be/index.php/2009/07/19/exploit-writing-tutorial-part-1-stack-based-overflows/)

[Smash Stack Revived](https://avicoder.me/2016/02/01/smashsatck-revived/)

[Smashing the Stack for Fun & Profit : Revived](https://avicoder.me/papers/pdf/smashthestack.pdf)

[Are Buffer Overflows on a modern system impossible?](https://www.youtube.com/watch?v=4HxUmbOcN6Y)

[Identifying another exploit mitigation and finding a bypass](https://www.youtube.com/watch?v=MMm0I2Dj51A)

[Brute-force 32bit stack cookie](https://www.youtube.com/watch?v=KGzHcqJV-QM)

[Exploiting SLMail](http://www.whitelist1.com/2016/11/xstack-overflow-1-exploiting-slmail.html)

[Introduction to Exploit Development - FuzzySecurity](http://www.fuzzysecurity.com/tutorials/expDev/1.html)

[Introduction to Linux Exploit Development - FuzzySecurity](http://www.fuzzysecurity.com/tutorials/expDev/9.html)

[Windows Buffer Overflow Tutorial: Dealing with Character Translation - The Grey Corner](http://www.thegreycorner.com/2010/01/windows-buffer-overflow-tutorial.html)

> ###### SEH-based

Overflow input to overwrite SEH -&gt; next SEH -&gt; Pop pop ret

[SEH Stack based buffer overflows - The Grey Corner](http://www.thegreycorner.com/2010/01/seh-stack-based-windows-buffer-overflow.html)

[Stacks & Handlers & Python, oh my! - ch3rn0byl](http://ch3rn0byl.com/stacks-and-handlers-and-python/)

[Exploit Tutorial: Buffer Overflow – SEH Bypass](http://www.primalsecurity.net/0x3-exploit-tutorial-buffer-overflow-seh-bypass/)

> ###### Heap-based

Overflow input to overwrite heap with dummy data, 2nd chunk overwrite forward link with destination and backwards link with value

[Heap Exploitation](https://heap-exploitation.dhavalkapil.com/introduction.html)

[Heap Exploitation - GitHub](https://github.com/DhavalKapil/heap-exploitation)

[Heap Spraying Exploit Tutorial](http://www.thegreycorner.com/2010/01/heap-spray-exploit-tutorial-internet.html)

[Exploit Writing Tutorial Heap Spraying Demystified - corelan](https://www.corelan.be/index.php/2011/12/31/exploit-writing-tutorial-part-11-heap-spraying-demystified/)

[Walking the heap using pydbg](http://www.debasish.in/2015/02/walking-heap-using-pydbg.html)

[Tracking down heap overflows with RR](https://sean.heelan.io/2016/05/31/tracking-down-heap-overflows-with-rr/)

[The Heap: What does malloc\(\) do?](https://www.youtube.com/watch?v=HPDBOhiKaD8)

[The Heap: How to exploit a Heap Overflow](https://www.youtube.com/watch?v=TfJrU95q1J4)

[how2heap - GitHub](https://github.com/shellphish/how2heap)

[Heap Overflows for Humans 101](http://www.fuzzysecurity.com/tutorials/mr_me/2.html)

> ###### Double-free

Memory freed twice. corrupts heap memory manager.

1\) chunk must be isolated \( no freed adjacent chunks \)

2\) destination free list bin must be empty

Forward/Backward pointers both point to base of heap, and the heap points back to the node \(self referential\) infinite loop. \(unlink fails\)

deprecated but still works with some creativity

If heap falls into this state you may be able to use after free or another buffer overflow.

[The Heap: How do use-after-free exploits work?](https://www.youtube.com/watch?v=ZHghwsTRyzQ)

[The Heap: Once upon a free\(\)](https://www.youtube.com/watch?v=gL45bjQvZSU)

[The Heap: dlmalloc unlink\(\) exploit](https://www.youtube.com/watch?v=HWhzH--89UQ)

[Exploring pwnable with ltrace and gdbinit script - Exploitation part 1/2](https://www.youtube.com/watch?v=sJPhsE_XeKI)

[Use-after-free and overwrite entry in GOT - Exploitation part 2/2](https://www.youtube.com/watch?v=ANIoQXAoyr0)

> ###### Memory Corruption

Using memory corruption to leak sensitive data Fuzz the inputs and observe all possible changes in the program Note any oddities and changes \(Especially a dump of bytes! ;\)\)

[Blind Buffer Overflow exploitation to leak secret data](https://www.youtube.com/watch?v=SstD1O4_kwc)

> ###### Return to libc

[libc database - GitHub](https://github.com/niklasb/libc-database)

[Return-to-libc](https://www.exploit-db.com/docs/28553.pdf)

[Doing ret2libc with a Buffer Overflow because of restricted return pointer](https://www.youtube.com/watch?v=m17mV24TgwY)

[BUFFER OVERFLOW PRIMER PART 8 \(RETURN TO LIBC THEORY\)](http://www.securitytube.net/video/257)

[The Geometry of Innocent Flesh on the Bone: Return-into-libc without Function Calls \(on the x86\)](http://hovav.net/dist/geometry.pdf)

[Understanding glibc malloc](https://sploitfun.wordpress.com/2015/02/10/understanding-glibc-malloc/)

[Cheating the ELF](http://www.cs.dartmouth.edu/~sergey/cs108/2010/subversiveld.pdf)

[PLT and GOT - the key to code sharing and dynamic libraries](https://www.technovelty.org/linux/plt-and-got-the-key-to-code-sharing-and-dynamic-libraries.html)

> ###### Bitflip

[Rowhammer Attacks: An Extended Walkthrough Guide](https://gruss.cc/files/sba.pdf)

[Exploiting the DRAM rowhammer bug to gain kernel privileges](https://googleprojectzero.blogspot.com/2015/03/exploiting-dram-rowhammer-bug-to-gain.html)

[flipfloyd - GitHub](https://github.com/IAIK/flipfloyd)

> ###### SIGRETURN Oriented Programming

[Sigreturn Oriented Programming is a real Threat](https://subs.emis.de/LNI/Proceedings/Proceedings259/2077.pdf)

> ###### Jump Oriented Programming

[Jump-Oriented Programming: A New Class of Code-Reuse Attack](https://www.comp.nus.edu.sg/~liangzk/papers/asiaccs11.pdf)

> ###### Return Oriented Programming

[64-bit Linux Return-Oriented Programming](https://crypto.stanford.edu/~blynn/rop/)

[Return Oriented Exploitation \(ROP\)](https://www.youtube.com/watch?v=5FJxC59hMRY)

[An introduction to the Return Oriented Programming and ROP chain generation](http://shell-storm.org/talks/ROP_course_lecture_jonathan_salwan_2014.pdf)

[Return-Oriented-Programming \(ROP FTW\)](https://www.exploit-db.com/docs/28479.pdf)

[DEP & ROP: Modern Binary Exploitation](http://security.cs.rpi.edu/courses/binexp-spring2015/lectures/11/07_lecture.pdf)

[ROP is Still Dangerous: Breaking Modern Defenses](http://nicholas.carlini.com/papers/2014_usenix_ropattacks.pdf)

[Return oriented programming - Wikipedia](https://en.wikipedia.org/wiki/Return-oriented_programming)

[Introduction to return oriented programming \(ROP\)](https://www.youtube.com/watch?v=yS9pGmY_xuo)

[The need for a POP POP RET instruction sequence](https://dkalemis.wordpress.com/2010/10/27/the-need-for-a-pop-pop-ret-instruction-sequence/)

[Intro to ROP: ROP Emporium — Split](https://medium.com/@iseethieves/intro-to-rop-rop-emporium-split-9b2ec6d4db08)

[ROP Emporium](https://ropemporium.com)

[OptiROP: hunting for ROP gadgets in style](https://www.youtube.com/watch?v=_3uBybBpq48)

[Introduction to return oriented programming \(ROP\)](http://codearcana.com/posts/2013/05/28/introduction-to-return-oriented-programming-rop.html)

[SROP \| Signals, you say?](https://0x00sec.org/t/srop-signals-you-say/2890)

[Return-Oriented Programming without Returns](https://www.cs.uic.edu/~s/papers/noret_ccs2010/noret_ccs2010.pdf)

[Blind Return Oriented Programming \(BROP\)](http://www.scs.stanford.edu/~sorbo/brop/)

> ###### EggHunting

The art of searching memory

[EggHunting Sorcery - ch3rn0byl](http://ch3rn0byl.com/egghunting-sorcery/)

[Windows Buffer Overflow Tutorial: An Egghunter and a Conditional Jump](http://www.thegreycorner.com/2010/02/windows-buffer-overflow-tutorial.html)

[HackSysTeam - EggHunter](https://www.exploit-db.com/docs/18482.pdf)

##### Security Mechanisms

> ###### Stack Canaries/Cookies

[Buffer Overflow Protections \(Canaries\) - Wikipedia](https://en.wikipedia.org/wiki/Buffer_overflow_protection#Canaries)

[Mitigating Buffer Overflow Attacks with Stack Cookies](https://www.rapid7.com/resources/mitigating-buffer-overflow-attacks-with-stack-cookies/)

[Exploit writing tutorial part 6 : Bypassing Stack Cookies, SafeSeh, SEHOP, HW DEP and ASLR](https://www.corelan.be/index.php/2009/09/21/exploit-writing-tutorial-part-6-bypassing-stack-cookies-safeseh-hw-dep-and-aslr/)

[Linux GLibC Stack Canary Values](https://xorl.wordpress.com/2010/10/14/linux-glibc-stack-canary-values/)

[PLAYING WITH CANARIES](https://www.elttam.com.au/blog/playing-with-canaries/)

> ###### NX/DEP

[Executable Space Protection - Wikipedia](https://en.wikipedia.org/wiki/Executable_space_protection)

[Can MPROTECT set the stack itself as executable? - StackExchange](https://reverseengineering.stackexchange.com/questions/9336/can-mprotect-set-the-stack-itself-as-executable)

> ###### ASLR

[ASLR - Wikipedia](https://en.wikipedia.org/wiki/Address_space_layout_randomization)

[Exploit Dev 101: Bypassing ASLR on Windows](http://www.abatchy.com/2017/06/exploit-dev-101-bypassing-aslr-on.html)

[Simple ASLR/NX bypass on a Linux 32 bit binary - Decoder's Blog](https://decoder.cloud/2017/06/15/simple-aslrnx-bypass-on-a-linux-32-bit-binary/)

[Linux ASLR integer overflow: Reducing stack entropy by four](http://hmarco.org/bugs/linux-ASLR-integer-overflow.html)

[Bypassing ASLR by predicting a process’ randomization](https://www.blackhat.com/presentations/bh-europe-09/Fritsch/Blackhat-Europe-2009-Fritsch-Bypassing-aslr-whitepaper.pdf)

## Information Disclosure

##### Format Strings

> ###### Resources

```
%d, %i - signed decimal
%u - unsigned decimal
%o - unsigned octal
%x - unsigned hexadecimal int
%X - unsigned hexadecimal int (UPPERCASE)
%f - decimal float
%e - scientific notation
%a - hexadecimal floating point
%c - char
%s - string
%p - pointer address
%n - writes bytes to memory address

will pop off stack until all are satisfied or segfault

# printf
prints values on the stack in hex
printed in human friendly in little-endian
view arbitrary memory locations
move argument pointer far enough forward to point within the string (%x chain)
printf("\xd3\x4d\xb3\x3f%x%x%x%x%s")
dereferences so you get string form

printf("hello%n\n", (int *)&i); // write 5 to i
printf("\xd3\x4d\xb3\x3f%x%x%x%150x%n"); // write 150 to it
```

[Remote format string exploit in syslog\(\)](https://www.youtube.com/watch?v=MBz5C9Wa6KM)

[Format String to dump binary and gain RCE](https://www.youtube.com/watch?v=XuzuFUGuQv0)

[Format String Exploit and overwrite the Global Offset Table](https://www.youtube.com/watch?v=t1LH9D5cuK4)

[Format string exploit on an arduino](https://www.youtube.com/watch?v=fRgNtGXDMlY)

[A simple Format String exploit example](https://www.youtube.com/watch?v=0WvrSfcdq1I)

[From Format String Vulnerability to Remote Code Execution](https://barrebas.github.io/blog/2015/02/22/maximum-overkill-two-from-format-string-vulnerability-to-remote-code-execution/)

[Format String Exploitation-Tutorial](https://www.exploit-db.com/docs/28476.pdf)

[Fun with Info-Leaks](https://rh0dev.github.io/blog/2015/fun-with-info-leaks/)

## Deserialization

##### PHP

> ###### Resources

[Exploiting PHP7 unserialize](https://www.youtube.com/watch?v=_Zj0B4D4TYc)

[Remote code execution via PHP \[Unserialize\]](https://www.notsosecure.com/remote-code-execution-via-php-unserialize/)

##### Java

> ###### Resources

[2017 - Practical Serialization Attacks by Nicky Bloor](https://www.youtube.com/watch?v=v78bAn1-vqA)

##### nodejs

> ###### Resources

[Exploiting Node.js deserialization bug for Remote Code Execution](https://opsecx.com/index.php/2017/02/08/exploiting-node-js-deserialization-bug-for-remote-code-execution/)

## 



