# Mac OS X

## Manual Installation

App Store:

- XCode
- Slack

Individually download and install: 

- [Firefox](https://www.mozilla.org/en-US/firefox/new/)
- [Chrome](https://www.google.com/chrome/)
- [KeePassX](https://www.keepassx.org/downloads)
- [iTerm2](https://www.iterm2.com/downloads.html)
- [Sublime Text 2](https://www.sublimetext.com/2)
- [Atom](https://atom.io/download/mac)
- [Visual Studio Code](https://code.visualstudio.com/download)
- [GitHub Desktop](https://desktop.github.com/)
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
ln -s /Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl ~/bin/subl
brew install python3 node
mkdir work
cd work
git clone git@github.com/feihong/feihong-setup
cp ~/work/feihong-setup/mac/.bash_custom.sh ~
```
