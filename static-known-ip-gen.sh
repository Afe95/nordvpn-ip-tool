#!/bin/bash
# This is for static IP addresses that NordVPN owns
#  All CIDR ranges should be added to nordvpn-cidr.txt once discovered.
#
# For now, they are static:
# 185.229.59.0/24:
for oct in $(seq 0 255)
  do 
    echo 185.229.59.$oct 
  done
# New Range:
