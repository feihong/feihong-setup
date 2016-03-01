# Mac OS X

## Manual Installation

App Store:

- XCode
- Slack

Individually download and install: 

- [iTerm2](https://www.iterm2.com/downloads.html)
- [Atom](https://atom.io/download/mac)
- [GitHub](https://desktop.github.com/)
- [Dropbox](https://www.dropbox.com/downloading?os=mac)
- [VirtualBox 5.x](https://www.virtualbox.org/wiki/Downloads)
- [Docker Toolbox](https://www.docker.com/products/docker-toolbox)
- [Disk Inventory X](http://www.derlien.com/)

## Copy SSH Keys

First, enable Remote Login. Then, from a computer that already has your keys, run:

```
scp ~/.ssh/id_rsa user@computer:/Users/user/.ssh/id_rsa
scp ~/.ssh/id_rsa.pub user@computer:/Users/user/.ssh/id_rsa.pub
```

## Commands

```bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install git python3 node nvm
mkdir work
cd work
git clone git@github.com/feihong/feihong-setup
cp ~/work/feihong-setup/.bash_custom.sh ~
```
