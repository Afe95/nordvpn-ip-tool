#!/bin/bash -l

CHAINNAME="nordvpn"
IP_FILE="ips.tmp"

cd "$(dirname "$0")"

rm $IP_FILE

CMD=$(cat lists/avail-country-list.txt)
for COUNTRY in $CMD; do
   ./nordvpn-blacklist-gen.sh $COUNTRY 0 3000 > $IP_FILE
done

wc -l $IP_FILE

CMD=$(cat $IP_FILE)
for IP in $CMD; do
   ipset -exist add $CHAINNAME $IP timeout 1209600
done

netfilter-persistent save
