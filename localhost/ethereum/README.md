# Ethereum testnet

### Start single ethereum docker

```
-- build docker
docker build .

-- run ethereum docker with port expose
docker run -p 3000:3000 -p 30303:30303 {image}
```

### Geth

- Attach to geth ipc mode
```
geth attach ipc:/root/.ethereum/testnet/geth.ipc
```

- Unlock by address and password
```
personal.unlockAccount('7c20badacd20f09f972013008b5e5dae82670c8d', 'OGRiMDdmNmU1YmUwNGUzODA0ODQ4MTc2' 60000);
```

### Other

- Node install
    - Reference: http://yoember.com/nodejs/the-best-way-to-install-node-js/
