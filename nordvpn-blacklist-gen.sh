#!/bin/bash
# Gather ALL US NordVPN IP Addresses for Blacklisting Purposes
# 2019 Douglas Berdeaux
# WeakNetLabs
# Pass to me the country code, beginning number and end number
#  from: https://nordvpn.com/servers/
# 
init=$1
begin=$2
end=$3 # added to enable scan resuming
if [[ "$3" == "" ]] # if argument three is missing:
 then
  printf "Usage: ./nordvpn-blacklist-gen.sh (COUNTRY INITIALS) (COUNT)\n"
  exit 1 # return 1 to shell
fi
# E.g: "./nordvpn-blacklist-gen.sh us 2990 3000" 
#  will scan us2990.nordvpn.com to us3000.nordvpn.com
for num in $(seq $begin $end)
 do host=$(nslookup ${init}${num}.nordvpn.com 2>/dev/null | grep 'Address' | grep -v '#'| sed -re 's/[^0-9\.]//g')
  if [[ "$host" != "" ]] # something was returned
   then printf "$host\n" # will ultimately generate a CSV
  fi
done
