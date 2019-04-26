Manually Testing SSL/TLS Weaknesses | Context Information Security
https://www.contextis.com/
30-38 minutes

While SSL has historically been the dominant protocol for securing the Internet, a rash of attacks in recent years has prompted a migration to its successor, TLS. This alone is not enough to guarantee a secure connection, however. TLS has also been found to have weaknesses and careful configuration is needed to avoid exposing communications to compromise from a network-based attacker. SSL/TLS flaws are widespread; SSL Pulse estimates that over three-quarters of the SSL/TLS deployments currently in use by the top one million websites are inadequately configured.

This post presents a review of the main SSL/TLS (mis)configurations and simple ways to test your system's susceptibility. The following configurations and attacks are considered:

    SSLv2 Support
    SSLv3 Support
    Cipher Suites
    SSL Certificates
    Renegotiation
    Compression
    Implementation Issues

SSLv2 Support

SSLv2 was released twenty years ago and soon after discovered to have significant weaknesses which could allow an attacker to decrypt and modify communications. It was superseded a year later by SSLv3 which addressed these issues, but despite its age and short lifespan SSLv2 support is still surprisingly common.

To check whether SSLv2 is enabled on the remote host, the following command can be used: 

openssl s_client –ssl2 -connect example.com:443

If SSLv2 is supported, the handshake will complete and server certificate information will be returned, as shown in the following response:

openssl s_client -ssl2 -connect 10.0.0.1:443

CONNECTED(00000003)
depth=0 /C=AU/ST=/L=/O=Context/OU=context/CN=sslserver
verify error:num=18:self signed certificate
verify return:1
depth=0 /C=AU/ST=/L=/O=Context/OU=context/CN=sslserver
verify return:1
---
Server certificate
-----BEGIN CERTIFICATE-----
MIICnjCCAgugAwIBAgIJAPB2liVH7xRsMA0GCSqGSIb3DQEBBQUAMGwxCzAJBgNV
BAYTAkFVMREwDwYDVQQIDAhWaWN0b3JpYTESMBAGA1UEBwwJTWVsYm91cm5lMRAw
DgYDVQQKDAdDb250ZXh0MRAwDgYDVQQLDAdQbGF5cGVuMRIwEAYDVQQDDAlzc2xz
ZXJ2ZXIwHhcNMTQwMTE3MDMwNjAxWhcNMTcxMDEzMDMwNjAxWjBsMQswCQYDVQQG
EwJBVTERMA8GA1UECAwIVmljdG9yaWExEjAQBgNVBAcMCU1lbGJvdXJuZTEQMA4G
A1UECgwHQ29udGV4dDEQMA4GA1UECwwHUGxheXBlbjESMBAGA1UEAwwJc3Nsc2Vy
dmVyMIGbMA0GCSqGSIb3DQEBAQUAA4GJADCBhQJ+AJdlQF95PWaFnmN0hQd5BYUf
SALBHBDO+JkNIPj5evYEAoPql3Am6Uphv3Pxyd+scDowb7UrReH8dBltxfz0Id4V
3wpSJRdwo4Gx8xx27tLjDqbTaPKfSRWGpr0s2S2KJerr3XJvTDtWoiHN3zsx5kLU
qvKTm+3LNHp7DgwNAgMBAAGjUDBOMB0GA1UdDgQWBBS5W+orwrw8K5LuFRykGg9w
1DCanzAfBgNVHSMEGDAWgBS5W+orwrw8K5LuFRykGg9w1DCanzAMBgNVHRMEBTAD
AQH/MA0GCSqGSIb3DQEBBQUAA34AegQVwKLQseAu7krFdsrfL117Sfpk7BuucJXJ
nNbg9WRKFk5raikmp1nc5zLRZ4c6waDSX/rrT2g06IXSAJXmv5d2NYU+5YECJnY5
ApexOlQJvsunKXZdJvBC6FijyLGi8G9zbA5S++JQkXWtiiICPGF2afYI5ahBgGO2
hgE=
-----END CERTIFICATE-----
subject=/C=AU/ST=/L=/O=Context/OU=context/CN=sslserver
issuer=/C=AU/ST=/L=/O=Context/OU=context/CN=sslserver
---
No client certificate CA names sent
---
Ciphers common between both SSL endpoints:
RC4-MD5         EXP-RC4-MD5     RC2-CBC-MD5    
EXP-RC2-CBC-MD5 DES-CBC-MD5     DES-CBC3-MD5
---
SSL handshake has read 807 bytes and written 233 bytes
---
New, SSLv2, Cipher is DES-CBC3-MD5
Server public key is 1000 bit
Secure Renegotiation IS NOT supported
Compression: NONE
Expansion: NONE
SSL-Session:
    Protocol  : SSLv2
    Cipher    : DES-CBC3-MD5
    Session-ID: 3BD641677102DBE9BDADF9B990D2D716
    Session-ID-ctx: 
    Master-Key: D2AAB3751263EB53BAD83453D26A09DA1F700059FD16B510
    Key-Arg   : DB92A6A80BF4CA4A
    Start Time: 1390178607
    Timeout   : 300 (sec)
    Verify return code: 18 (self signed certificate)

If the server does not support SSLv2 the response will be a handshake failure error similar to the following:

CONNECTED(00000003)
458:error:1407F0E5:SSL routines:SSL2_WRITE:ssl handshake failure:s2_pkt.c:428:

SSLv3 Support

Despite some issues, SSLv3 was considered secure (at least when configured correctly) until last year when the Google Security Team introduced their Padding Oracle On Downgraded Legacy Encryption (POODLE) attack. POODLE demonstrated that, under certain conditions, it is possible to conduct a "padding oracle" attack against ciphers using cipher-block chaining (CBC) mode. This may allow decryption of communications and disclosure of session cookies. As the only non-CBC cipher supported in SSLv3, RC4, is also known to be cryptographically weak, the conclusion is that SSLv3 should not be used for communications. The Google Security Team further showed that an attacker can force the client and server to downgrade to SSLv3 even if they would normally use TLS, meaning that it is important to ensure that SSLv3 is disabled completely.

To test whether a system supports SSLv3, the following OpenSSL command can be used:

openssl s_client -ssl3 -connect google.com:443


CONNECTED(00000003)
depth=2 /C=US/O=GeoTrust Inc./CN=GeoTrust Global CA
verify error:num=20:unable to get local issuer certificate
verify return:0
---
Certificate chain

--- Certificate details removed for brevity ---
---
New, TLSv1/SSLv3, Cipher is RC4-SHA
Server public key is 2048 bit
Secure Renegotiation IS supported
Compression: NONE
Expansion: NONE
SSL-Session:
    Protocol  : SSLv3
    Cipher    : RC4-SHA
    Session-ID: 6E461AEAD8C1516F9D8950A9B5E735F9882BFC6EA0838D81CFD41C01A3799A41
    Session-ID-ctx:
    Master-Key: 7E7680640BB7E2C83CBE87342727E0D09AC10EEEB095A8C0A2501EAE80FA1C20D3F3FE4346B1234057D6D506420273FA
    Key-Arg   : None
    Start Time: 1421296281
    Timeout   : 7200 (sec)
    Verify return code: 0 (ok)
---

A handshake failure error would indicate that SSLv3 is not supported and the server is not vulnerable to POODLE.
Cipher Suites

One of the main functions of the SSL/TLS protocols is to allow the client and server to negotiate a mutually acceptable "cipher suite" to use for the connection. The cipher suite chosen specifies a set of algorithms which the client and server will use to perform key exchange, encryption, and message authentication.

A cipher suite is typically described in a format similar to this:

TLS_RSA_WITH_AES_128_CBC_SHA

where RSA is the key exchange algorithm, AES_128_CBC is the encryption cipher (AES using a 128-bit key operating in Cipher-Block Chaining mode), and SHA is the Message Authentication Code (MAC) algorithm.

The cipher suites a server is configured to support should be dictated by its security requirements. The following guidelines are generally recommended as a baseline:

    The key exchange algorithm should be restricted to those which provide "perfect forward secrecy", such as Ephemeral Diffie-Hellman (DHE) or Ephemeral Elliptic Curve Diffie-Hellman (ECDHE).
    The cipher should not suffer from known cryptanalytic flaws. This rules out RC4 which has been known to have flaws for many years and in the past few years has been shown to be significantly weaker than originally thought.
    The cipher should use at least a 128 bit key (which rules out DES and Triple-DES).
    Cipher-Block Chaining (CBC) mode is prone to padding oracle attacks and should ideally be avoided altogether, but specifically it should not be used in conjunction with SSLv3 or TLSv1.0 as this can lead to vulnerability to the BEAST attack. An alternative is Galois Counter Mode (GCM) which is not affected by these problems and offers authenticated encryption.
    The message authentication algorithm should ideally be SHA256. MD5 is known to be cryptographically weak and should be avoided, and SHA1 (just denoted SHA in the cipher suite specifications) has its own weaknesses which place attacks within the realm of possibility.
    For all three algorithms, the NULL / anon setting should be avoided as these provide no security at all. "Export" algorithms should also be disabled as their short key lengths make them susceptible to brute-force attacks and other attacks such as the FREAK attack.

Nmap's "ssl-enum-ciphers" script can be used to produce a list of the supported cipher suites in the following way:

nmap --script ssl-enum-ciphers -p 443 example.com

Example

nmap --script ssl-enum-ciphers -p 443 10.0.0.1

Nmap scan report for 10.0.0.1
PORT    STATE SERVICE REASON
443/tcp open  https   syn-ack
| ssl-enum-ciphers:
|   SSLv3
|     Ciphers (6)
|       TLS_DHE_RSA_WITH_3DES_EDE_CBC_SHA - unknown strength
|       TLS_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA - weak
|       TLS_DH_anon_EXPORT_WITH_RC4_40_MD5 - broken
|       TLS_DHE_RSA_WITH_AES_128_CBC_SHA - strong
|       TLS_DHE_RSA_WITH_AES_256_CBC_SHA - unknown strength
|       TLS_RSA_WITH_3DES_EDE_CBC_SHA - strong
|       TLS_RSA_WITH_AES_128_CBC_SHA - strong
|       TLS_RSA_WITH_AES_256_CBC_SHA - unknown strength
|     Compressors (1)
|       uncompressed
|   TLSv1.0
|     Ciphers (6)
|       TLS_DHE_RSA_WITH_3DES_EDE_CBC_SHA - unknown strength
|       TLS_DHE_RSA_WITH_AES_128_CBC_SHA - strong
|       TLS_DHE_RSA_WITH_AES_256_CBC_SHA - unknown strength
|       TLS_RSA_WITH_3DES_EDE_CBC_SHA - strong
|       TLS_RSA_WITH_AES_128_CBC_SHA - strong
|       TLS_RSA_WITH_AES_256_CBC_SHA - unknown strength
|     Compressors (1)
|       uncompressed
|_

While nmap will give a strength rating for each supported cipher suite, the fast pace of change SSL/TLS security means that these ratings should be manually reviewed.
SSL Certificates

SSL/TLS supports the use of authentication via X.509 certificates, which are often termed "SSL certificates" when used in this context. Server certificates enable the client to verify that it is connecting to the correct host. Though not usually used for HTTPS, SSL/TLS can also support mutual authentication in which the client proves its own identity through the provision of its own certificate.

Some of the main security properties which should be considered when setting up a certificate, include:

    "Not Before" - This gives the start date of the certificate and should be a date in the past.
    "Not After" - This gives the expiry date of the certificate after which is should not be trusted. It is therefore important to ensure that this is a date in the future. As the expiry date approaches, a new certificate should be issued to replace it.
    "Signature Algorithm" - This is the algorithm used to ensure the certificate's integrity. MD5 has been shown to be inadequate for this, with collision attacks allowing fake, but valid, certificates to be generated. SHA1 is in the process of being phased out due to known weaknesses, with SHA2 hash functions being the preferred alternative.
    "Public-Key" - The public key should be long enough to ensure that attacks are computationally infeasible. In the case of RSA, 2048 bit public keys are now considered a sensible minimum to protect against factoring attacks.
    "Issuer" - This is the entity which has issued the certificate and should be a trusted party recognised by both the client and server. The issuer is typically a third-party certificate authority (such as DigiCert in the example above), though larger organisations often operate their own certificate authority to sign certificates for internal use. While it is possible to generate so-called "self-signed" certificates, these prevent the client from authenticating the server and open up the possibility of man-in-the-middle attacks in which an attacker dupes the client and/or server into communicating with the attacker rather than each other.
    "Subject" and "Subject Alternative Name" - These should contain the DNS information necessary to tie the IP of the server running the SSL/TLS service. If these values are not valid domain names (or wildcard domains), then the client will be unable to determine whether or not the certificate is associated with the server in question and cannot therefore use it to authenticate the server.

To view the details of a server's certificate, the following command can be used:

openssl s_client -connect example.com:443 | openssl x509 -noout -text

This will produce output similar to the following (here PayPal's certificate is shown):

Certificate:
    Data:
        Version: 3 (0x2)
        Serial Number:
            0e:65:41:91:6c:e8:cf:b2:9b:7b:52:71:01:05:ba:c4
    Signature Algorithm: sha256WithRSAEncryption
        Issuer: C=US, O=DigiCert Inc, OU=www.digicert.com, CN=DigiCert SHA2 High Assurance Server CA
        Validity
            Not Before: Dec 12 00:00:00 2014 GMT
            Not After : Dec 16 12:00:00 2016 GMT
        Subject: C=US, ST=California, L=San Jose, O=PayPal, Inc., OU=PayPal Production, CN=paypal.com
        Subject Public Key Info:
            Public Key Algorithm: rsaEncryption
                Public-Key: (2048 bit)
                Modulus:
                    00:d5:c8:b2:65:07:ff:fb:71:0a:cf:a8:77:97:fc:
                    e1:a4:87:5d:79:29:03:e0:1a:5f:c2:f8:71:c9:ac:
                    bc:d3:16:e0:9c:2e:bb:d9:1c:5b:cc:90:7d:e3:54:
                    ab:53:79:50:37:63:b1:cb:68:56:ee:6a:5b:d2:10:
                    38:1a:35:f7:37:12:83:d9:72:51:9e:b7:f9:9c:1d:
                    b8:a9:e6:f3:27:bb:5b:8b:b9:be:fa:39:19:83:d9:
                    cd:66:69:1d:cc:8a:cb:59:b5:53:3e:ca:41:f6:ac:
                    89:4d:58:06:04:a5:e2:c9:94:05:26:6c:24:a6:81:
                    ca:4a:01:11:4c:a2:8d:83:7a:9a:2a:7d:16:93:ca:
                    a0:df:59:b8:e1:38:18:b2:bd:eb:77:6b:57:fb:7f:
                    d6:70:e1:2d:70:dd:cc:af:43:f0:de:a0:fc:2f:8e:
                    94:74:3c:4f:ae:ca:f6:f2:ab:09:7f:63:71:b6:27:
                    78:4d:f8:e1:e0:86:3a:81:9f:d4:55:45:27:ff:4d:
                    53:2f:99:43:28:ad:fa:c9:63:6f:64:28:36:d7:ea:
                    c3:00:50:88:86:a3:d0:83:ae:be:99:18:25:b2:44:
                    05:c6:e8:36:4a:fb:4d:ab:df:6d:0f:50:3f:80:fc:
                    38:ba:4c:53:c1:6d:48:22:68:7a:ed:6e:05:e4:9d:
                    58:ef
                Exponent: 65537 (0x10001)
        X509v3 extensions:
            X509v3 Authority Key Identifier:
                keyid:51:68:FF:90:AF:02:07:75:3C:CC:D9:65:64:62:A2:12:B8:59:72:3B
            X509v3 Subject Key Identifier:
                1F:54:C7:2D:0E:D3:6C:C4:63:FE:66:1C:EA:8C:50:75:3A:01:8F:DE
            X509v3 Subject Alternative Name:
                DNS:paypal.com, DNS:www.paypal.com
            X509v3 Key Usage: critical
                Digital Signature, Key Encipherment
            X509v3 Extended Key Usage:
                TLS Web Server Authentication, TLS Web Client Authentication
            X509v3 CRL Distribution Points:

                Full Name:
                  URI:http://crl3.digicert.com/sha2-ha-server-g3.crl

                Full Name:
                  URI:http://crl4.digicert.com/sha2-ha-server-g3.crl

            X509v3 Certificate Policies:
                Policy: 2.16.840.1.114412.1.1
                  CPS: https://www.digicert.com/CPS

            Authority Information Access:
                OCSP - URI:http://ocsp.digicert.com
                CA Issuers - URI:http://cacerts.digicert.com/DigiCertSHA2HighAssuranceServerCA.crt

            X509v3 Basic Constraints: critical
                CA:FALSE
    Signature Algorithm: sha256WithRSAEncryption
         3d:79:69:48:5d:f6:bc:4b:5f:81:f3:97:9d:61:e5:9c:46:b9:
         73:00:66:09:f1:8a:06:89:14:a3:25:ea:ba:a2:5d:ac:77:3a:
         8f:6a:8a:11:9b:c3:35:67:99:9f:9d:c2:c0:ac:9f:eb:24:58:
         c8:4a:be:07:31:30:8c:69:07:bc:ff:c0:5a:d1:17:c6:05:f7:
         75:ca:fe:cd:98:78:43:41:ac:14:75:f7:c9:10:f4:07:38:58:
         73:6a:84:58:1f:a9:31:7d:28:47:70:98:de:3f:d7:00:82:a6:
         5c:2e:5d:31:96:4a:06:82:a2:a0:02:95:fd:6f:ef:66:4a:57:
         50:c3:1a:84:48:26:47:73:6e:c8:d7:30:fb:75:11:d6:ee:67:
         7e:d4:15:b2:44:15:ef:ee:ab:ba:81:c2:f5:05:04:d1:f3:70:
         bb:96:41:03:eb:d1:e0:e4:3d:57:41:8d:3d:7a:df:f0:c1:68:
         6f:43:68:e1:8d:1e:19:7e:57:aa:49:43:28:2a:f1:8c:f7:0d:
         a4:6a:8c:18:75:6b:a4:cc:a7:2f:e5:21:d1:81:8c:d4:bc:f4:
         00:4c:f6:37:03:a3:61:33:b2:ea:15:34:48:53:83:48:57:6c:
         33:f2:b7:fb:f3:fc:ea:df:0d:d0:e2:49:01:b4:23:c9:3d:7a:
         f4:42:4f:98

Renegotiation

The SSL/TLS protocols allow the client and server to renegotiate new encryption keys during a session. A vulnerability was discovered in 2009 whereby an attacker could exploit a flaw in the renegotiation process and inject content into the start of the session, compromising the integrity of the session.

This is only possible if two conditions are met, namely that the server does not support secure renegotiation but does honour client-initiated renegotiations. These conditions can be checked for as described below:
Secure Renegotiation

The following demonstrates how to verify if a system supports secure renegotiation.

openssl s_client -connect example.com:443

A system that does not support secure renegotiation will return the following when a connection is established.

CONNECTED(00000003)
139677333890704:error:1407F0E5:SSL routines:SSL2_WRITE:ssl handshake failure:s2_pkt.c:429:
---
no peer certificate available
---
No client certificate CA names sent
---
SSL handshake has read 0 bytes and written 36 bytes
---
New, (NONE), Cipher is (NONE)
Secure Renegotiation IS NOT supported
Compression: NONE
Expansion: NONE
SSL-Session:
    Protocol  : SSLv2
    Cipher    : 0000
    Session-ID: 
    Session-ID-ctx: 
    Master-Key: 
    Key-Arg   : None
    PSK identity: None
    PSK identity hint: None
    SRP username: None
    Start Time: 1428910482
    Timeout   : 300 (sec)
    Verify return code: 0 (ok)
---

Client Initiated Renegotiation

The following demonstrates how to check if client initiated renegotiation is supported.

openssl s_client -connect example.com:443

Once the connection is established, the server will wait for us to type the next command. We can write the following two lines in order to initiate a renegotiation by specifying R in the second line, followed by enter or return.

openssl s_client -connect host:port
HEAD / HTTP/1.0
R
<Enter or Return key>

A system that does not support client initiated renegotiation will return an error and end the connection, or the connection will time out.

RENEGOTIATING
write:errno=104

A system that supports client initiated renegotiation will keep the connection active, and respond to further commands. 
Compression

The use of compression has been linked to two side channel attacks: CRIME and BREACH.
CRIME

The Compression Ratio Info-leak Made Easy (CRIME) attack is a side-channel attack against TLS compression. To carry out the attack, the attacker needs to exert partial control over the content of requests made by the client (e.g. by using a Cross-Site Scripting vulnerability to force the user's browser to issue requests). The attacker can then observe the compressed size of these requests on the network and from that infer the contents of the remainder of the request (e.g. session cookies) based on the level of compression achieved.

To test whether a server supports TLS compression, and is vulnerable to CRIME, the following method can be used: 

openssl s_client -connect example.com:443

On the servers supporting compression, a response similar to the one below will be received, containing details about the compression. The lines "Compression: zlib compression" and "Compression: 1 (zlib compression)" indicate that the remote server is vulnerable to the CRIME attack. 

---
New, TLSv1/SSLv3, Cipher is DHE-RSA-AES256-SHA
Server public key is 2048 bit
Secure Renegotiation IS supported
Compression: zlib compression
Expansion: zlib compression
SSL-Session:
    Protocol  : TLSv1.1
    Cipher    : DHE-RSA-AES256-SHA
    Session-ID: 50791A02E03E42F8983344B25C8ED4598620518D5C917A3388239AAACE991858
    Session-ID-ctx: 
    Master-Key: 9FEDB91F439775B49A5C49342FF53C3DD7384E4AFC33F9C6AFB64EA3D639CA57253AD7D059BA54E01581AD3A73306342
    Key-Arg   : None
    PSK identity: None
    PSK identity hint: None
    SRP username: None
    TLS session ticket lifetime hint: 300 (seconds)
    TLS session ticket:
    0000 - 34 38 24 70 35 88 4a 68-0c 80 e6 c5 76 a1 0e ee   48$p5.Jh....v...
    0010 - 14 2e fb ef fa 42 f0 c1-58 ee 70 02 90 45 f4 8c   .....B..X.p..E..
    0020 - 7d 0b 2e 1e 71 70 b0 a2-cc 27 1b 13 29 cc f5 ee   }...qp...'..)...
    0030 - 84 43 98 fa b1 ae 83 dc-ff 6d aa 07 9f 7a 95 4f   .C.......m...z.O
    0040 - 44 68 63 21 72 d7 b9 18-97 d8 8e d7 61 7d 71 6f   Dhc!r.......a}qo
    0050 - a7 16 85 79 f9 a2 80 2a-b4 bc f9 47 78 6a b7 08   ...y...*...Gxj..
    0060 - f6 4f 09 96 7b e8 d4 9b-26 2d 1a fd 55 fe 6a ab   .O..{...&-..U.j.
    0070 - fc 8d 6d 87 7a 13 e1 a9-0a 05 09 d9 ce ea fe 70   ..m.z..........p
    0080 - 09 c9 5f 33 3c 5f 28 4e-20 3b 3a 10 75 c4 86 45   .._3<_(N ;:.u..E
    0090 - 1d 8b c8 a5 21 89 a1 12-59 b6 0f 55 e3 48 8f 91   ....!...Y..U.H..
    00a0 - 01 af 53 b6                                       ..S.

    Compression: 1 (zlib compression)
    Start Time: 1348073759
    Timeout   : 300 (sec)
    Verify return code: 20 (unable to get local issuer certificate)
---

For servers that have TLS compression disabled, the response will be similar to the following. The "Compression: NONE" shows that this server rejects usage of TLS-level compression.

---
New, TLSv1/SSLv3, Cipher is ECDHE-RSA-AES128-GCM-SHA256
Server public key is 2048 bit
Secure Renegotiation IS supported
Compression: NONE
Expansion: NONE
SSL-Session:
    Protocol  : TLSv1.2
    Cipher    : ECDHE-RSA-AES128-GCM-SHA256
    Session-ID: 7E49EA6457B200B441A26C05F1AE9634AAF97284AC7A12EC58F69CEF5470B052
    Session-ID-ctx: 
    Master-Key: E035F082F5545424373A546A1F76D77673E8AEE018B3F0A3AFD7A3545746013664C18E6BB69F08BFAECA6C7FB3010C9C
    Key-Arg   : None
    PSK identity: None
    PSK identity hint: None
    SRP username: None
    TLS session ticket lifetime hint: 100800 (seconds)
    TLS session ticket:
    0000 - 66 72 6f 6e 74 70 61 67-65 61 61 61 61 61 61 61   frontpageaaaaaaa
    0010 - 89 55 c6 6a 92 c3 28 85-86 b0 ff c3 08 12 5a a8   .U.j..(.......Z.
    0020 - f2 ec f8 56 6d d3 29 99-7b 98 90 ef 57 fd c6 15   ...Vm.).{...W...
    0030 - ee a2 53 4b 43 ef 19 ee-41 25 1f 76 28 37 68 b6   ..SKC...A%.v(7h.
    0040 - 64 ca e7 3f 71 01 70 30-35 91 ef bc d8 19 20 4f   d..?q.p05..... O
    0050 - 9d 9e 2c ab 3f 35 5c 3f-65 f8 c6 9a a9 90 fa 60   ..,.?5\?e......`
    0060 - 4d 53 a1 b8 49 8c e7 61-e4 6c e1 51 8e 83 b5 25   MS..I..a.l.Q...%
    0070 - bc 9a 32 d8 fa be 16 a1-ae 3d 8c 0b e3 9e e4 78   ..2......=.....x
    0080 - 77 d7 91 6b a9 a0 01 2b-e1 98 33 d4 2c eb b3 84   w..k...+..3.,...
    0090 - f9 da 0f fa 77 df ac d6-08 b6 34 97 07 d9 b2 58   ....w.....4....X

    Start Time: 1428988675
    Timeout   : 300 (sec)
    Verify return code: 20 (unable to get local issuer certificate)
---

BREACH

The BREACH attack is analogous to the CRIME attack, but this time exploits the use of HTTP compression to again infer the contents of attacker-influenced requests.

To test whether a server supports deflate or compression, the following steps can be performed: 

openssl s_client -connect example.com:443

Submitting the following will allow us to see if HTTP compression is supported by the server.

GET / HTTP/1.1
Host: example.com
Accept-Encoding: compress, gzip

If the response contains encoded data, similar to the following response, it indicates that HTTP compression is supported; therefore the remote host is vulnerable.

HTTP/1.1 200 OK
Server: nginx/1.1.19
Date: Sun, 19 Mar 2015 20:48:31 GMT
Content-Type: text/html
Last-Modified: Thu, 19 Mar 2015 23:34:28 GMT
Transfer-Encoding: chunked
Connection: keep-alive
Content-Encoding: gzip
 
¬ =�A
�0
   �}E�� �/�փg�
�� oP��
��u4��22��,f&4Y��Į9 .�R�oKc�]�`|�o�r
0

A system which does not support deflate or compression will ignore the compress header request and respond with uncompressed data, indicating that it is not vulnerable.
Implementation Issues

SSL/TLS is only as secure as its implementation and a number of flaws have surfaced in TLS software in recent years. This has included TLS (not SSLv3) implementations which are vulnerable to POODLE, and timing attacks such as the Lucky-13 attack. We highlight two notable implementation vulnerabilities here, but more important than their details is the message that keeping SSL/TLS software patched and up-to-date is an essential piece of the security puzzle.
Heartbleed

The Heartbleed bug is a result of a weakness in OpenSSL. It can be exploited to retrieve memory contents of a server/host running a vulnerable version of OpenSSL.

The following versions of OpenSSL are vulnerable:

•    OpenSSL 1.0.1 through 1.0.1f (inclusive)

The following versions of OpenSSL are not vulnerable:

•    OpenSSL 1.0.1g 

•    OpenSSL 1.0.0 branch 

•    OpenSSL 0.9.8 branch 

There are many scripts publicly available that can be used to test whether a system is affected by this vulnerability. 

Servers accessible from the internet can be tested using the Heartbleed test websites like https://filippo.io/Heartbleed/, which is run by Filippo Valsorda.

Alternatively, Nmap (v6.46 and above) can be used to test this bug by using the ‘ssl-heartbleed.nse’ script.

nmap -p 443 --script ssl-heartbleed --script-args vulns.showall example.com

The output will be similar to the following:

PORT    STATE SERVICE
443/tcp open  https
| ssl-heartbleed:
|   VULNERABLE:
|   The Heartbleed Bug is a serious vulnerability in the popular OpenSSL cryptographic software library. It allows for stealing information intended to be protected by SSL/TLS encryption.
|     State: VULNERABLE
|     Risk factor: High
|     Description:
|       OpenSSL versions 1.0.1 and 1.0.2-beta releases (including 1.0.1f and 1.0.2-beta1) of OpenSSL are affected by the Heartbleed bug. The bug allows for reading memory of systems protected by the vulnerable OpenSSL versions and could allow for disclosure of otherwise encrypted confidential information as well as the encryption keys themselves.
|
|     References:
|       https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2014-0160
|       http://www.openssl.org/news/secadv_20140407.txt
|_      http://cvedetails.com/cve/2014-0160/

Change Cipher Spec Injection

A weakness exists in some versions of OpenSSL which can be exploited by intermediary third parties in order to retrieve sensitive information from encrypted communication.

Affected Versions:

•    OpenSSL 1.0.1 through 1.0.1g

•    OpenSSL 1.0.0 through 1.0.0l

•    all versions before OpenSSL 0.9.8y

Testing requires using publicly available tools, such as the the ‘ssl-ccs-injection’ nmap script by Claudiu Perta, which can be used to test for this vulnerability. This script can be downloaded from https://nmap.org/nsedoc/scripts/ssl-ccs-injection.html.

nmap -p 443 --script ssl-ccs-injection example.com

Sample Output

PORT    STATE SERVICE
443/tcp open  https
| ssl-ccs-injection:
|   VULNERABLE:
|   SSL/TLS MITM vulnerability (CCS Injection)
|     State: VULNERABLE
|     Risk factor: High
|     Description:
|       OpenSSL before 0.9.8za, 1.0.0 before 1.0.0m, and 1.0.1 before
|       1.0.1h does not properly restrict processing of ChangeCipherSpec
|       messages, which allows man-in-the-middle attackers to trigger use
|       of a zero-length master key in certain OpenSSL-to-OpenSSL
|       communications, and consequently hijack sessions or obtain
|       sensitive information, via a crafted TLS handshake, aka the
|       "CCS Injection" vulnerability.
|
|     References:
|       https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2014-0224
|       http://www.cvedetails.com/cve/2014-0224
|_      http://www.openssl.org/news/secadv_20140605.txt

Conclusion

This post has presented some of the common attacks and misconfigurations which can undermine the security of SSL/TLS connections. Addressing these should be considered a minimum for anyone configuring SSL/TLS. It should be noted that  other attacks exist which are not covered here, which may require additional work to adequately defend against. Furthermore, a secure SSL/TLS configuration is a moving target and additional or better attacks may be discovered in the future.
