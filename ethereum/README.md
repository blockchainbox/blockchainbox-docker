# Ethereum testnet

### Unlock account

get account and password from `init.js`
```
nodejs /usr/local/src/init.js
```

geth attach to ipc mode
```
geth attach ipc:/root/.ethereum/testnet/geth.ipc
```

unlock by address and password
```
personal.unlockAccount('7c20badacd20f09f972013008b5e5dae82670c8d', 'OGRiMDdmNmU1YmUwNGUzODA0ODQ4MTc2');
```

check account balance "ether"
```
web3.fromWei(eth.getBalance(eth.coinbase), "ether")
```

### Send transactions


### Smart contract

### Node install
Reference: http://yoember.com/nodejs/the-best-way-to-install-node-js/
