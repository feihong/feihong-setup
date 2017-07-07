# Mac OS X

## Manual Installation

App Store:

- XCode
- Slack

Individually download and install: 

- [KeePassX](https://www.keepassx.org/downloads)
- [iTerm2](https://www.iterm2.com/downloads.html)
- [Atom](https://atom.io/download/mac)
- [Visual Studio Code](https://code.visualstudio.com/download)
- [GitHub Desktop](https://desktop.github.com/)
- [Dropbox](https://www.dropbox.com/downloading?os=mac)
- [Disk Inventory X](http://www.derlien.com/downloads/index.html)

## Copy SSH Keys

First, enable Remote Login. Then, from a computer that already has your keys, run:

```
scp ~/.ssh/id_rsa user@computer:/Users/user/.ssh/id_rsa
scp ~/.ssh/id_rsa.pub user@computer:/Users/user/.ssh/id_rsa.pub
```

## Development tools

- [Install node via npm](https://github.com/feihong/node-quickstart#mac--linux)
- [Install Haskell](https://github.com/feihong/haskell-quickstart#installation)

## Commands

```bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install python3
mkdir work
cd work
git clone git@github.com/feihong/feihong-setup
cp ~/work/feihong-setup/mac/.bash_custom.sh ~
```
