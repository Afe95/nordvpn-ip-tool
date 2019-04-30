 # Gather ALL US NordVPN IP Addresses for Blacklisting Purposes
 # 2019 Douglas Berdeaux
 # WeakNetLabs
 #
 for num in $(seq 0 10000); 
  do host=$(nslookup us$num.nordvpn.com| grep 'Address' | grep -v '#'); 
    if [[ "$host" != "" ]]; 
      then echo us${num}.nordvpn.com: $host; 
    fi; 
  done
