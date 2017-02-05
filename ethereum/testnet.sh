#!/bin/bash -x

geth init ~/genesis.json

# Generate and store a wallet password
if [ ! -f ~/.accountpassword ]; then
    echo `date +%s | sha256sum | base64 | head -c 32` > ~/.accountpassword
fi

if [ ! -f ~/.primaryaccount ]; then
    geth --password ~/.accountpassword account new > ~/.primaryaccount
fi
#geth --testnet --password ~/accountpassword --datadir ~/primaryaccount account import ~/.primaryaccount

#geth --rpc --rpcaddr "0.0.0.0" --rpccorsdomain "*" --testnet --password ~/.accountpassword --mine --minerthreads 1 --extradata "Kunstmaan"
geth --networkid 16888 --port 30303 --nodiscover --maxpeers 25 --nat "any" --rpc --rpccorsdomain "*" --rpcapi "eth,net,web3,personal,debug" --mine --minerthreads 1 --autodag
