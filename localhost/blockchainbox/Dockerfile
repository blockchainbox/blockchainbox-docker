FROM node:6-alpine
MAINTAINER Phyrex Tsai 

RUN apk update && apk upgrade && \
    apk add --no-cache bash git openssh

RUN npm install pm2 -g

ADD ./blockchainbox.sh /root/blockchainbox.sh
RUN chmod +x /root/blockchainbox.sh
RUN /root/blockchainbox.sh

WORKDIR /root/blockchainbox

# Start blockchainbox-core.yml
CMD ["pm2-docker", "start", "blockchainbox-core.yml"]
