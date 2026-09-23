# Mac OS X

## Command Line

```bash
# Copy SSH keys
mdkir ~/.ssh
cd ~/.ssh
mv ~/Downloads/id_rsa .
mv ~/Downloads/id_rsa.pub .
chmod 600 id_rsa
ssh-add  # add ~/.ssh/id_rsa to ssh agent

# Install dev tools (opens a modal that you need to manually switch to)
xcode-select --install

# Download this project
mkdir ~/work
cd ~/work
git clone git@github.com:feihong/feihong-setup

# Configure Git
git config --global user.email "name@example.com"
git config --global user.name "First Last"

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install asdf
brew install asdf

# Install Python
#brew install openssl readline sqlite3 xz zlib tcl-tk
asdf plugin add python
asdf install python latest
asdf global python latest
asdf set -u python latest
```

## UI Installation

App Store

- Simple Comic
- Slack
- WireGuard

Individually download and install

- [Brave](https://brave.com/download/)
- [Chrome](https://www.google.com/chrome/)
- [DB Browser for SQLite](https://sqlitebrowser.org/dl/)
- ~~[Disk Inventory X](http://www.derlien.com/downloads/index.html)~~
- [Dropbox](https://www.dropbox.com/downloading?os=mac)
- [FileZilla](https://filezilla-project.org/download.php?type=client)
- [Firefox](https://www.mozilla.org/en-US/firefox/new/)
- [Ghostty](https://ghostty.org/download)
- [iTerm2](https://iterm2.com/downloads.html)
- [KeePassXC](https://keepassxc.org/download/#macos)
- [SpiderOak One](https://crossclave.com/opendownload/)
- ~~[Sublime Text](https://www.sublimetext.com/download)~~
- [Visual Studio Code](https://code.visualstudio.com/download)
- [VLC](https://www.videolan.org/vlc/download-macosx.html)
- [Zed](https://zed.dev/download)

## Configuration

Set system voice to Chinese

- System Settings > Accessibility > Spoken Content
- Set `System speech language` to Chinese
- Set `System Voice` to Lili (or some other voice that doesn't use more than 10MB)

Configure iTerm2

- iTerm2 > Preferences > Profiles
- Set `Working Directory` to `Reuse previous session's directory`

Configure Music

- Music > Preferences > General
  - Uncheck `Apple Music and iTunes Store`
- Music > Preferences > Files
  - Uncheck `Keep Music Media folder organized` and `Copy files to Music Media folder when adding to library`


## Miscellaneous Commands

    echo 'export PATH="/Applications/Sublime Text.app/Contents/SharedSupport/bin:$PATH"' >> ~/.zprofile

## Notes

While [pytunes](https://github.com/hile/pytunes) did seem promising, parts of it are broken and it ultimately doesn't have the API that I'm looking for, which is to add existing tracks to playlists. 
