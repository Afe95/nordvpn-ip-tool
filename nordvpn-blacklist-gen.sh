#!/bin/bash
# Gather ALL US NordVPN IP Addresses for Blacklisting Purposes
# 2019 Douglas Berdeaux
# WeakNetLabs
# Pass to me the server count for the country and country initials,
#  from: https://nordvpn.com/servers/
# 
init=$1
count=$2
if [[ "$2" == "" ]]
 then
  printf "Usage: ./nordvpn-blacklist-gen.sh (COUNTRY INITIALS) (COUNT)\n"
  exit 1
fi
# E.g: ./nordvpn-blacklist-gen.sh us 3000
for num in $(seq 0 $count)
 do host=$(nslookup ${init}${num}.nordvpn.com| grep 'Address' | grep -v '#')
  if [[ "$host" != "" ]]
   then printf "${init}${num}.nordvpn.com:$host\n"
  fi
 done
