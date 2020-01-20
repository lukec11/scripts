#echo " IP-info: " `curl -s ipinfo.io/ip`

echo " OpenDNS: " `dig +short myip.opendns.com @resolver1.opendns.com`

echo "   NoVPN: " `dig +short myip.opendns.com` 

echo " ifconfg: " `curl -s ifconfig.me; echo`

echo " LocalIP: " `ifconfig enp9s0 | sed -En 's/127.0.0.1//;s/.*inet (addr:)?(([0-9]*\.){3}[0-9]*).*/\2/p'`

echo " Gateway: " `ip route show | grep -i 'default via'| awk '{print $3 }'`

echo "     DNS: " ` nslookup google.com | grep "Address: 1" | cut -d' ' -f2-`

echo " OVPN-IP: " `ifconfig tun0 | sed -En 's/127.0.0.1//;s/.*inet (addr:)?(([0-9]*\.){3}[0-9]*).*/\2/p'`

echo "Hostname: " `hostname`

