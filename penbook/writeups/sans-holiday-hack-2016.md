## SANS Holiday Hack 2016 - chris
1) bugbounty
2) the apk file
3) guest busyreindeer78
4) discombobulatedaudio1.mp3
5) yummycookies
6) 
first door) part1) santasli part2) ttlehelper - brukte sudo -u itchy strings /out.pcap, passordet ligger øverst i filen
second door) open_sesame - print alle directories rekursivt så man ser hvor man skal. bruk så cd med \ for å finne fram
third door)	WUMPUS IS MISUNDERSTOOD - skyt pil inn i rommet når man lukter wumpusen
fourth) 24fb3e89ce2aa0ea422c3d511d40dd84 - bruk less i help-siden til å kjøre ls og finne passordet i kodefilene
fourth door (Sants office)) spill ihht dialogen fra filmen war games
siste dør i gangen) passordet fra lydfilene

7)
analytics.northpolewonderland.com
104.198.252.157
brukernavn og pass er guest / busyreindeer87 fra apk
hentet ut audio2 fra nettside ved bruk av query
del2
admin skal visst gi tilgang til noe mer? last ned .git repo og se på changelog i refs/heads/master.
bruk git log til å se på commit messages, fant administrator med passord der. bruk edit funksjonen til å manipulere databasen for å hente ut audio. lag et query, edit det, se på kommandoen som lekker ut, se i edit.php og query.php at man kan skrive inn query i adressefeltet for å manipulere databasen. (sql injection ish)
 https://analytics.northpolewonderland.com/edit.php?id=61f9ec9b-6192-463b-aee5-5a0983362dff&name=Name_Field&description=Description_Field&query=show tables;, for å vise tabellen
select * from audio;
select filename, to_base64(mp3) from audio;
kjørte base64 gjennom en online converter for å få ut mp3

ads.northpolewonderland.com
104.198.221.240
https://pen-testing.sans.org/blog/2016/12/06/mining-meteor
mine javascript med meteor-scriptet til man finner noe audio-relatert
trykk routes admin/quotes
homequotes hadde en hidden array object med "audio"

dev.northpolewonderland.com
35.184.63.245
https://ncsa.github.io/sans-holiday-hack-2016/#org6a9d097
kjøre en curl for å få json-reponsen
curl -s -H "Content-Type: application/json" \
-d '{"date": "20170101010101-0800", "udid": "11111111", "debug": "com.northpolewonderland.santagram.EditProfile, \
     EditProfile", "freemem": "10200", "verbose": true}' \
http://dev.northpolewonderland.com/index.php | python -mjson.tool | grep mp3

dungeon.northpolewonderland.com
35.184.47.139
online game - netcat ip port for å spille
skal være et hemmelig rom med en elf
kan bruke ltrace til å inspisere hva som skjer
last ned cdungeon.decode.c og en versjon av dtextc.dat. dekompiler disse filene og kjør diff for å se på forskjellen. fant linje 1024 som jeg kjørte i GDT> DT, entry: 1024 og fik kda ut en epost som ga meg lydfilen.

ex.northpolewonderland.com
104.154.196.33
må skrive og lese crashdumps via php og base64 encode filter.
tror man skal skrive noen form for exploit som returnerer noe nyttig.
masse hint i apken
curl -X POST -H "Content-Type:application/json" -d '{"operation":"ReadCrashDump","data":{"crashdump":"crashdump-joO6X2"}}' http://ex.northpolewonderland.com/exception.php?page=php://filter/base64-encode/resource=exception
kanskje man kan skrive print exception og få ut fil

curl -X POST -H "Content-Type:applicadCrashDump","data":{"crashdump":"php://filter/convert.base64-encode/resource=exception"}}' http://ex.northpolewonderland.com/exception.php | base64 -d
works


9) dr who
10) he wanted to prevent star wars