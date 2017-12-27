https://www.rebootuser.com/?p=2189

Revision 1.0 (January 2017)

Registered IP’s:
Resource
	Result
http://dev.maxmind.com/geoip/legacy/geolite 	A nice resource serving files containing Autonomous System Numbers (ASN’s)
https://mxtoolbox.com/asn.aspx 	Online resource to locate ASN’s and associated IP ranges

 

DNS Enumeration:
Command 	Result
dig <domain_name> 	Perform a basic forward lookup
nslookup <domain_name> 	As above
host <domain_name> 	As Above
dig @<server> <domain_name> 	Use a specific name server to perform query
nslookup <domain_name> <server> 	As above
dig @<server> version.bind chaos txt 	BIND version details
dig @<server> <domain_name> axfr 	Attempt zone transfer
nslookup
server <server>
set type=any
ls -d <domain_name> > output
exit 	As above
fierce -dnsserver <server> -dns <domain_name> 	Basic Fierce scan (also attempts zone transfer – as above)
dig @<server> <domain_name> A
dig @<server> <domain_name> MX
dig @<server> <domain_name> NS
dig @<server> <domain_name> SOA 	View specific record type  (examples)
nslookup -type=A <domain_name> <server>
nslookup -type=MX <domain_name> <server>
nslookup -type=NS <domain_name> <server>
nslookup -type=SOA <domain_name> <server> 	As above
dig @<server> <domain_name> A <domain_name> AAAA +short 	Get IPv4 and IPv6 addresses for target host names (limit output)
dig @<server> <domain_name> $record_type +short 	View just domain and/or IP details (limit output)
dig @<server> <domain_name> any 	View all record types
nslookup -type=any <domain_name> 	As above
dig -x <IP> +short 	Simplified reverse lookup (limit output)
dig -f <domains.txt> 	Read names from a file and query each
fierce -range 192.168.0.0-255 -dnsserver <server> 	Use Fierce to brute-force a target range of IP’s i.e. 192.168.0.0-255
for i in {0..255}; do fierce -range 192.168.$i.0-255 -dnsserver <server>; done 	Run Fierce within a for loop to help enumerate multiple ranges
fierce -dnsserver <server> -wordlist <hostname_wordlist> -dns <domain_name> -traverse 255 	Fierce scan with traverse set to 255 hosts instead of the default 5 up and 5 down. A nice feature that performs reverse lookups on IP addresses surrounding a valid record. For example if www.rebootuser.com is found on 192.168.0.110, reverse lookups will be performed on 192.168.105-115 with matches for *.rebootuser.com flagged. It’s worth noting that if valid records are found, this process begins again.

If you have a very sparsely populated network this large value (255) may be acceptable, otherwise you may chose to lower this.
dnsenum --file <wordlist> -dnsserver <server> -v <domain_name> 	An nice alternative to Fierce, although lacking the traverse ability there is some extra functionality available

 

Basic Host Discovery / OSINT:
Command / Resource
	Result
https://www.google.com/transparencyreport/https/ct/ 	Google’s certificate transparency report – “…Look up all certificates present in public Certificate Transparency logs that have been issued for a given hostname…”. Can also include subdomains (very useful)
www.google.com
site:<domain_name> -www 	Basic Google Dork to retrieve results for specific site excluding the hostname “www” – useful in identifying other hosts
www.bing.com
IP:<IP_address> 	Using Bing to view content on a specific IP address – useful to determine if a target has more than one application hosted on the same IP that could be targeted


