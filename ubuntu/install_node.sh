# http://www.hostingadvice.com/how-to/install-nodejs-ubuntu-14-04/

cd ~/Downloads

wget -O nodejs.tar.xz https://nodejs.org/dist/v6.1.0/node-v6.1.0-linux-x64.tar.xz
sudo tar -C /usr/local --strip-components 1 -xJf nodejs.tar.xz

# https://github.com/creationix/nvm

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.1/install.sh | bash
