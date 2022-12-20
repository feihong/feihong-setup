# Mac OS X

## Command Line

Copy SSH keys

    mdkir ~/.ssh
    cd ~/.ssh
    mv ~/Downloads/id_rsa .
    mv ~/Downloads/id_rsa.pub .
    chmod 600 id_rsa
    ssh-add  # add ~/.ssh/id_rsa to ssh agent

Download this project

    mkdir ~/work
    cd ~/work
    git clone git@github.com:feihong/feihong-setup

Homebrew

    xcode-select --install
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

Git

    git config --global user.email "name@example.com"
    git config --global user.name "Feihong Hsu"

Kitty

    curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin

[Asdf](https://asdf-vm.com/guide/getting-started.html#_2-download-asdf)

    git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.10.2

[Python](https://github.com/asdf-community/asdf-python#use)

    brew install openssl readline sqlite3 xz zlib tcl-tk
    asdf plugin add python
    asdf install python latest
    asdf global python latest

## UI Installation

App Store

- Slack
- WireGuard

Individually download and install

- [Chrome](https://www.google.com/chrome/)
- [Disk Inventory X](http://www.derlien.com/downloads/index.html)
- [Dropbox](https://www.dropbox.com/downloading?os=mac)
- [Firefox](https://www.mozilla.org/en-US/firefox/new/)
- [Hubstaff](https://app.hubstaff.com/download)
- [iTerm2](https://iterm2.com/downloads.html)
- [KeePassXC](https://keepassxc.org/)
- [SageMath](https://github.com/3-manifolds/Sage_macOS/releases)
- [SpiderOak One](https://crossclave.com/opendownload/)
- [Sublime Text](https://www.sublimetext.com/download)
- [Visual Studio Code](https://code.visualstudio.com/download)
- [VLC](https://www.videolan.org/vlc/download-macosx.html)

## Configuration

Set system voice

- Go to System Settings > Accessibility > Spoken Content
- Set System speech language to Chinese
- Set System Voice to Lili (or some other voice that doesn't use more than 10MB)

## Miscellaneous Commands

    echo 'export PATH="/Applications/Sublime Text.app/Contents/SharedSupport/bin:$PATH"' >> ~/.zprofile
