#! /bin/bash

## Definitions 
#define port 
port=20000

get_ip () {
# Get server primary IPv4 address
ipaddress=$(curl ipinfo.io/ip)
}

spe_set_mn () {
# Let Write the masternode information to the spectrum config 
echo "masternode=1
masternodeaddr=${ipaddress}:${port}
masternodeprivkey=${masternodegenkey}
" >> ~/.vestx/vestx.conf
}

# lets install and get the Spectrum daemon
wget https://github.com/validsyntax1012/VestxStuff/raw/master/vestxd
wget https://github.com/validsyntax1012/VestxStuff/raw/master/vestx-cli
chmod +x vestxd
chmod +x vestx-cli
mv vestxd /usr/local/bin
mv vestx-cli /usr/local/bin
vestxd -daemon
sleep 10

masternodegenkey=$(vestx-cli masternode genkey)


vestx-cli stop
sleep 10 
pkill -f vestxd 
sleep 10 


get_ip

spe_set_mn
sleep 10 
vestxd -daemon
sleep 10 


stty -echo
echo 
echo
echo "continue in controller wallet"
echo "1. send 15m VESTX to your controller wallet address and wait for confirmations"
echo "2. use in debug window masternode outputs command to see TrxID and TrxNbr"
echo "3.Write masternode.conf with line:" 
echo
echo MyMN ${ipaddress}:${port} ${masternodegenkey} TrxID TrxNbr
echo



stty echo

