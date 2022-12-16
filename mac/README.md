# Mac OS X

## Manual Installation

Homebrew:

    xcode-select --install
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    
App Store:

- Slack

Individually download and install: 

- [Firefox](https://www.mozilla.org/en-US/firefox/new/)
- [Chrome](https://www.google.com/chrome/)
- [KeePassXC](https://keepassxc.org/)
- [Sublime Text 2](https://www.sublimetext.com/2)
- [Visual Studio Code](https://code.visualstudio.com/download)
- [Dropbox](https://www.dropbox.com/downloading?os=mac)
- [VLC](https://www.videolan.org/vlc/download-macosx.html)
- [Disk Inventory X](http://www.derlien.com/downloads/index.html)

## Copy SSH Keys


```
cd ~/.ssh
nano id_rsa
chmod 600 id_rsa
nano id_rsa.pub
```

## Commands

```bash
mkdir work
cd work
git clone git@github.com/feihong/feihong-setup
cp ~/work/feihong-setup/mac/.bash_custom.sh ~
```
