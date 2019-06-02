## NSM hack challenge

[https://challenge.i18.no/about](https://challenge.i18.no/about)

sdf

1 kjører sha256sum 'string' og får ut svaret

2 prøvd tekst opp ned, prøvd å sjekke header, ingen håp enda. kanskje sjekke burp. burp funker ikke?  
curl -I [https://challenge.i18.no/level/fbmserjd3dwtvrspnk8ektmxsvdenwvp](https://challenge.i18.no/level/fbmserjd3dwtvrspnk8ektmxsvdenwvp) gir x-answer :D

3 prøvd å crack hash med hashcat og diverse online verktøy. ser at det er en unix hash md5, men får ikke noe svar  
hashcat64.exe -m 500 h.txt norsk2.txt -r rules/best64.rule --debug-mode=1 --debug-file=matched.rule

4 inspiserte fil med file og binwalk, ser at det er en tcpdump, men også at den inneholder en png. bruker wireshark til å hente ut image.png. prøver reverse search på google og tineye uten resultat. sjekker exiftool og finner gps-koordinatene. får ut eidsvoll, kryptert til sha256 og fått svar.

5 ollygdb, pAss0rd1337 er feil men dukker opp i strings  
inspisere graph view med IDA eller gollydb

6 databasestuff. dht?

7 skrevet i C. se etter firkantparantes og sorter i stigende rekkefølge

8 logo.jpg. ingenting i file eller binwalk. hmmmm. bølgelengde? kanskje nedre fargen vil avsløre noe? prøv ps. fant ingenting av å endre fargen

sjekke strings! fant lame99.3 som betyr at det er mp3-fil her.  
rename til .mp3 og spille av. morsekode, dra inn i audacity og sakke ned og analysere.  
79bcdc81211c8cefd8b12de6bd83c8a9d9555dc222d2641774ea3330223fffc5

9 et bilde til, må undersøke. finner ingenting i file, binwalk eller exiftool.  
fant robåter = robots.txt  
d482a0cf4d51a9cf04f8a1a80898f73bc2f0dc3e9691da6d3ecbc79617accd46

10 POST /level/s3erf5dlm4kxacpnsjo2phombpzgq16t/execute HTTP/1.1  
Host: challenge.i18.no  
Content-Length: 12  
Content-Type: application/x-www-form-urlencoded  
Signature: ecb9695d5cd9e363b1661eb23f99dab5e1f4489896fc09895593b2acffdcd125

command=help

endre på post header i burp eller via curl kanskje?

curl -id ecb9695d5cd9e363b1661eb23f99dab5e1f4489896fc09895593b2acffdcd12 [https://challenge.i18.no/level/zh0gbke293ur78vzvcwfueuy71opfutf/](https://challenge.i18.no/level/zh0gbke293ur78vzvcwfueuy71opfutf/)

signature\(key, message\) = sha256\(key \|\| message\)  
key er 256 byte, message er POST-data.

curl -id ab689d8efff93a5796493b1bf186ff8923acfbfbf2b11dcdc2c8af96aba4c1d6 [https://challenge.i18.no/level/zh0gbke293ur78vzvcwfueuy71opfutf/answer](https://challenge.i18.no/level/zh0gbke293ur78vzvcwfueuy71opfutf/answer)

curl -id ab689d8efff93a5796493b1bf186ff8923acfbfbf2b11dcdc2c8af96aba4c1d6 [https://challenge.i18.no/level/s3erf5dlm4kxacpnsjo2phombpzgq16t/exe](https://challenge.i18.no/level/s3erf5dlm4kxacpnsjo2phombpzgq16t/exe)

length extension attack is a type of attack where an attacker can use Hash\(message1\) and the length of message1 to calculate Hash\(message1 ∥ message2\) for an attacker-controlled message2

11 Vi forsøkte å implementere en utbredt, XOR-basert obfuskeringsmetode. La oss prøve å skjule passordet vårt:

5e e0 63 1b ff ff b5 8b cf d5 7a 13 ee 37 23 d2 bc dd ea a3 b9 1f 7d 89  
Oops, det ser ut til at implementasjonen vår ikke er helt god. Den lekker nøkkelmateriale!

12 Jeg genererte et Windows-passord med pwgen -s 14. Da er det vel tilnærmet umulig å knekke?

adm:0:e198a6cdf23d9b501942c8782da64a2c:766facca41f0b2262daceb68c2e7620a

orphcrack med enkel tabell.

