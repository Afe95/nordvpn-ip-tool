# NordVPN IP Tool
Gathering all IP addresses for Blacklists.
NordVPN is used regularly by scammers to commit fraud to our systems. To create a blacklist of all NordVPNs IP addresses, I wrote the following scripts.

* List of USA Servers: https://nordvpn.com/servers/
* Tool from NordVPN for subdomain format: https://nordvpn.com/servers/tools/

## Example
Albania (first on NordVPN list (alphabetical))

![Albania Screenshot](images/al.png)

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
