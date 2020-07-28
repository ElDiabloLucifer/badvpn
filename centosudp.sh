#!/bin/bash
# Created by Mei 2020
# Modified by IDTunnel

#debian Bad UDP centos

# install badvpn
cd
wget -O /bin/badvpn-udpgw "https://www.dropbox.com/s/tgkxdwb03r7w59r/badvpn-udpgw"
wget -O /usr/bin/badvpn-udpgw "https://www.dropbox.com/s/tgkxdwb03r7w59r/badvpn-udpgw"

#port BadVPN 7300
sed -i '$ i\screen -AmdS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7300 --max-clients 100 --max-connections-for-client 10
' /etc/rc.local
sed -i '$ i\screen -AmdS badvpn badvpn-udpgw--listen-addr 127.0.0.1:7300 --max-clients 100 --max-connections-for-client 10
' /etc/rc.d/rc.local


#permission
chmod +x /usr/bin/badvpn-udpgw
chmod +x /bin/badvpn-udpgw
chmod +x /etc/rc.local
chmod +x /etc/rc.d/rc.local

#coba jalankan badvpn 7300
screen -AmdS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7300 --max-clients 1000 --max-connections-for-client 10

#hapus
rm -rf cenbadvpn.sh

#reboot
reboot
