#!/bin/bash
# Gather ALL US NordVPN IP Addresses for Blacklisting Purposes
# 2019 Douglas Berdeaux
# WeakNetLabs
# Pass to me the server count for the country and country initials,
#  from: https://nordvpn.com/servers/
# 
init=$1
begin=$2
end=$3
if [[ "$2" == "" ]]
 then
  printf "Usage: ./nordvpn-blacklist-gen.sh (COUNTRY INITIALS) (COUNT)\n"
  exit 1
fi
# E.g: ./nordvpn-blacklist-gen.sh us 3000
for num in $(seq $begin $end)
 do host=$(nslookup ${init}${num}.nordvpn.com| grep 'Address' | grep -v '#'| sed -re 's/[^0-9\.]//g')
  if [[ "$host" != "" ]]
   then printf "${init}${num}.nordvpn.com,$host\n"
  fi
 done
