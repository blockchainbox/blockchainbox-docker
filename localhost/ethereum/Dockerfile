FROM kunstmaan/ethereum-geth
MAINTAINER Phyrex Tsai 

ADD ./genesis.json /root/genesis.json
ADD ./static-nodes.json /root/.ethereum/static-nodes.json

ADD ./testnet.sh /root/testnet.sh
RUN chmod +x /root/testnet.sh

CMD /root/testnet.sh
