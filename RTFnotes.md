# Red Team Fundamentals

## AD Searches

# all protected AD objects
Get-ADObject -filter "admincount -eq 1"

#members of the Domain Admins group
Get-ADGroup "Domain Admins" | Get-ADGroupMember

#members of the Enterprise Admins group
Get-ADGroup "Enterprise Admins" -server caesar-dc.caesar.pvt | Get-ADGroupMember

#all members of the BA group
Get-ADGroup administrators | Get-ADGroupMember

#all members of the BA group, including nested groups
Get-ADGroup administrators | Get-ADGroupMember -Recursive | Get-ADUser

#find other groups that grant privileged access of some kind
Get-ADGroup -Filter 'GroupCategory -eq "Security" -and Name -like "*admin*"’

#find the members of all those groups
Get-ADGroup -Filter 'GroupCategory -eq "Security" -and Name -like "*admin*"’ |  Get-ADGroupMember

#find all active user accounts
Get-ADUser -filter 'enabled -eq $true' | select samaccountname | export-csv –NoTypeInformation AllUsers.csv

#find all active computer accounts
$OldPwdDate = (get-date).AddDays(-31); Get-ADComputer -Filter {PasswordLastSet -gt $OldPwdDate} –properties OperatingSystem

#Kerberos enabled applications
Get-ADObject -LDAPFilter '(ServicePrincipalName=*)' -properties ServicePrincipalName | select -ExpandProperty ServicePrincipalName | where {$_ -notmatch "HOST|TERMSRV|WSMAN"} | sort

#AD site information
Get-ADReplicationSite -filter * | select name, Description

#registered networks by site
Get-ADReplicationSubnet -Filter * | select name, site
