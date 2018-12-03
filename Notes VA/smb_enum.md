### SMB ENUM Commands

#### Net Range
python ./sharesniffer.py --hosts 10.6.32.1/24 -s -a -v
nmap -sS -Pn -vv --open 10.6.32.1/24 24 -p 139 -oA frsund_nmap_p139_DClan
nbtscan 10.6.32.1/24 -v | tee frsund_nbtscan_dclan

#### IP List
smbmap --host-file /home/e/sharesniffer/frsund_smb_ip_lst
nbtscan -f frsund_smb_ip.lst -v
nmap --script smb-* --script-args=unsafe=1 -iL frsund_smb_ip.lst -oA smb_nmap_scripts -vv
nmap -iL frsund_smb_ip_lst --script smb-vuln-* --script-args=unsafe=1 -p 445 -oA smb_nmap_scripts -vv

#### Specific IP
enum4linux -a -l -v -i -m 10.38.32.177
smbclient -L //10.38.32.177
nmblookup -A 10.38.32.177 -M -R -S
smbclient -L //F-NAVI01 -I 10.38.32.177 -N
smbclient //FROLIC/share -I 10.38.32.177 -N

#### SMB metasploit enum
setg rhosts 10.10.10.10, 10.10.10.11
setg threads 16
use auxiliary/scanner/smb/smb_lookupsid
use auxiliary/scanner/smb/pipe_auditor
use auxiliary/scanner/smb/pipe_dcerpc_auditor
use auxiliary/scanner/smb/smb2
use auxiliary/scanner/smb/smb_enumshares
use auxiliary/scanner/smb/smb_lookupsid
use auxiliary/scanner/smb/smb_version
