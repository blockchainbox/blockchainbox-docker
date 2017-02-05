FROM kunstmaan/ethereum-geth
MAINTAINER Phyrex Tsai 

RUN apt-get update && apt-get -y upgrade

RUN apt-get install -y build-essential checkinstall curl libssl-dev vim git

RUN rm /bin/sh && ln -s /bin/bash /bin/sh

ENV NVM_DIR /root/.nvm
ENV NODE_VERSION 6.9.1

RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.32.0/install.sh | bash \
    && source $NVM_DIR/nvm.sh \
    && nvm install $NODE_VERSION \
    && nvm alias default $NODE_VERSION \
    && nvm use default

ADD ./scripts/node.sh /root/node.sh
RUN chmod +x /root/node.sh
RUN /root/node.sh

RUN apt-get install -y npm

RUN npm install npm pm2 -g

RUN echo fs.inotify.max_user_watches=524288 | tee -a /etc/sysctl.conf && sysctl -p

### 需要增加 git clone blockchainbox
### 需要增加 ADD .settings
### 需要增加 source .settings

ADD ./genesis.json /root/genesis.json
ADD ./static-nodes.json /root/.ethereum/static-nodes.json

ADD ./testnet.sh /root/testnet.sh
RUN chmod +x /root/testnet.sh

### 這邊要改成 RUN
CMD /root/testnet.sh

### 需要增加 CMD /root/blockchainbox.sh, 這邊要啟動 ~/blockchainbox/start.sh