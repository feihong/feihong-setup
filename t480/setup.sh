sudo apt-get update

# Utilities
sudo apt-get install curl alacarte

# Git
sudo apt-get install git
git config --global user.name "John Doe"
git config --global user.email johndoe@example.com

# Python
sudo apt-get install make build-essential libssl-dev zlib1g-dev \
libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm \
libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev

curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash

# Update ~/.profile and ~/.bashrc according to instructions, then logout/login

pyenv install 3.9.7
pyenv global 3.9.7

pip install --user bpython mitmproxy youtube-dl beets

# Node
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash

source ~/.bashrc

nvm install 14
