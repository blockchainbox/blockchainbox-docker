ln -s /usr/bin/nodejs /usr/bin/node

git clone https://github.com/blockchainbox/blockchainbox-core.git /root/blockchainbox

# run blockchainbox service
cd ~/blockchainbox
git checkout develop
npm install