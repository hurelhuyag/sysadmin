ip address add address=124.158.79.7/26 interface=ether1
ip address add address=192.168.0.1/24 interface=ether2

ip firewall nat add chain=srcnat action=masquerade out-interface=ether1
ip firewall nat add chain=dstnat dst-address=10.5.8.200 action=dst-nat to-addresses=192.168.0.49 
ip firewall nat add chain=srcnat src-address=192.168.0.49 action=src-nat to-addresses=124.158.79.7

## http://wiki.mikrotik.com/wiki/Basic_Installation_of_RouterOS
ip route add gateway=124.158.79.1
ip firewall nat add chain=srcnat action=masquerade out-interface=ether1

ip dhcp-server setup
pool: 192.168.0.100-192.168.0.254
dns: 124.158.127.11,124.158.127.12


ip firewall filter add chain=forward connection-state=established comment="allow established connections"  
ip firewall filter add chain=forward connection-state=related comment="allow related connections"
ip firewall filter add chain=forward connection-state=invalid action=drop comment="drop invalid connections" 

ip firewall filter add chain=forward action=accept protocol=tcp dst-port=80 comment="Allow HTTP" 
ip firewall filter add chain=forward action=accept protocol=tcp dst-port=25 comment="Allow SMTP" 
ip firewall filter add chain=forward protocol=tcp comment="allow TCP"
ip firewall filter add chain=forward protocol=icmp comment="allow ping"
ip firewall filter add chain=forward protocol=udp comment="allow udp"
ip firewall filter add chain=forward action=drop comment="drop everything else"
