# blockchainbox-docker
Docker images for blockchainbox

## Run Docker

Run commands below

```
git clone https://github.com/blockchainbox/blockchainbox-docker
cd blockchainbox-docker
docker-compose build
docker-compose up
```

## Tech Stack

- Ethereum & Web3.js
    - https://github.com/Kunstmaan/docker-ethereum/tree/master/geth-testnet
- PostgreSQL
    - https://github.com/docker-library/postgres/tree/master/9.4/alpine
    
## Memo

Modify `Dockerfile` to build a new image

```
-- rebuild docker image
docker build - < Dockerfile

-- start docker 
docker run {hash}
```