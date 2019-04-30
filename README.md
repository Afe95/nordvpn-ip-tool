# NordVPN IP Tool
Gathering all IP addresses for Blacklists.
NordVPN is used regularly by scammers to commit fraud to our systems. To create a blacklist of all NordVPNs IP addresses, I wrote the following scripts.

* List of USA Servers: https://nordvpn.com/servers/
* Tool from NordVPN for subdomain format: https://nordvpn.com/servers/tools/

## Example
Albania (first on NordVPN list (alphabetical)). According to NordVPN's site, they have 6 servers so I entered 100 to be safe and we found 1 extra that was not listed on their site:

![Albania Screenshot](images/al.png)

Run the script by passing the country code (initials) and server count number. 

*Notice that the subdomain name numbers may lie outside of the count number. For instance, USA (at the time of writing this) has 1798 servers - but a server number of 2971 exists (us2971.nordvpn.com). So, the range should be adjusted until the total results from the script yeilds the count listed (or higher) on the NordVPN site.*
```
root@demon:~$ ./nordvpn-blacklist-gen.sh al 100
al7.nordvpn.com:Address: 80.246.28.33
al8.nordvpn.com:Address: 80.246.28.35
al9.nordvpn.com:Address: 31.171.152.19
al10.nordvpn.com:Address: 31.171.152.11
al11.nordvpn.com:Address: 31.171.152.115
al12.nordvpn.com:Address: 31.171.152.235
al13.nordvpn.com:Address: 31.171.152.243
root@demon:~$ 
```
