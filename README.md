# blockchainbox-docker
Docker images for blockchainbox

## Run Docker

Run commands below

```
git clone https://github.com/blockchainbox/blockchainbox-docker
cd blockchainbox-docker/localhost
docker-compose build
docker-compose up
```

## Docker containers

- Ethereum & Web3.js
    - https://github.com/Kunstmaan/docker-ethereum/tree/master/geth-testnet
- PostgreSQL
    - https://github.com/docker-library/postgres/tree/master/9.4/alpine

## Docker settings

Before running docker, need to setup several environments in `localhost/docker-compose.yml`
```
AWS_ACCESS_KEY_ID=
AWS_SECRET_ACCESS_KEY=
AWS_REGION=
AWS_CONTRACT_QUEUE_URL=
AWS_TRANSACTION_QUEUE_URL=
AWS_TRANSACTION_RECEIPT_QUEUE_URL=
AWS_EVENT_QUEUE_URL=
```

Option settings, if you use AWS RDS hosting database
```
AWS_RDS_USER=
AWS_RDS_PASSWORD=
AWS_RDS_DATABASE=
AWS_RDS_HOST=
AWS_RDS_PORT=
```