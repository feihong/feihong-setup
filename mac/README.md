# Mac OS X

## Quickstart

- Sign in to [Dropbox](https://www.dropbox.com/downloading?os=mac)
- Open [KeePassXC](https://keepassxc.org/download/#macos) to get your SSH key
- Open a [terminal](https://ghostty.org/download)
- Run `xcode-select --install`, switch to modal, and click `Install`
- Clone this repo by running `mkdir ~/work && cd ~/work && git clone git@github.com:feihong/feihong-setup`

## Command Line

```bash
cp mac/.zprofile ~/.zprofile

# Copy SSH keys
mdkir ~/.ssh
cd ~/.ssh
mv ~/Downloads/id_rsa .
mv ~/Downloads/id_rsa.pub .
chmod 600 id_rsa
ssh-add  # add ~/.ssh/id_rsa to ssh agent

# Configure Git
git config --global user.email "name@example.com"
git config --global user.name "First Last"

# Create /usr/local/bin for third-party commands
sudo mkdir -p -m 775 /usr/local/bin

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install asdf and uv
brew install asdf uv

# Install command line shortcuts for editors
sudo ln -fs "/Applications/Visual Studio Code.app/Contents/Resources/app/bin/code" /usr/local/bin/
sudo ln -fs "/Applications/Zed.app/Contents/MacOS/cli" /usr/local/bin/zed
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
- ~~[iTerm2](https://iterm2.com/downloads.html)~~
- [KeePassXC](https://keepassxc.org/download/#macos)
- [SpiderOak One](https://crossclave.com/opendownload/)
- [Steam](https://store.steampowered.com/about/download)
- ~~[Sublime Text](https://www.sublimetext.com/download)~~
- [Visual Studio Code](https://code.visualstudio.com/download)
- [VLC](https://www.videolan.org/vlc/download-macosx.html)
- [Zed](https://zed.dev/download)

## Configuration

System Settings

- Accessibility > Read & Speak
  - Set `System speech language` to Mandarin
  - Set `System Voice` to Lilian (Premium) by clicking ℹ️
- Trackpad
  - Enable Tap to click
- Desktop & Dock
  - Enable Automatically hide and show Dock
- Menu Bar
  - Battery > Battery Options... > Enable Show Percentage

Uninstall desktop widgets

- Fn+F11 to show the desktop
- Right-click on desktop and click Edit Widgets...
- Click the - icon on each widget to uninstall it
- Click Done

Music

- Preferences
  - General
    - Disable Apple Music
    - Disable iTunes Store
  - Files
    - Disable Keep Media folder organized
    - Disable Copy files to Media folder when adding to library

~~Configure iTerm2~~

- Preferences > Profiles
  - Set `Working Directory` to `Reuse previous session's directory`

## Notes

While [pytunes](https://github.com/hile/pytunes) did seem promising, parts of it are broken and it ultimately doesn't have the API that I'm looking for, which is to add existing tracks to playlists. 
