# Ubuntu

## Setup

1. Create bootable USB drive
   1. In Rufus, you may need to select "Show USB hard drives"
1. Reboot
1. Interrupt normal system startup by pressing Enter
1. Choose USB hard drive as first boot item
1. Reboot to start Ubuntu from USB drive
1. Use GParted to delete recovery partitions and reduce the size of Windows partition to about 350 GB
1. Quit
1. Choose 'Install Ubuntu'
1. Choose 'minimal installation'

Install and start ssh server:

    sudo apt-get install ssh
    sudo service ssh start
    sudo update-rc.d ssh disable  # prevent ssh server from starting automatically

Copy `id_rsa` and `id_rsa.pub` files into `~/.ssh` folder.

    chmod 600 id_rsa
    chmod 644 id_rsa.pub
    cat id_rsa.pub > authorized_keys
    chmod 644 authorized_keys

Add to `~/.ssh/config`:

```
Host *
  AddKeysToAgent yes
  IdentityFile ~/.ssh/id_rsa
```

## Configuration

## Applications

- [tarsnap](https://www.tarsnap.com/pkg-deb.html)

## UI Applications

Install using snap:

    sudo snap install brave code keepassxc slack vlc wireguard-ammp

Install via Ubuntu Software

- FileZilla
- Dropbox

Install manually

- Chrome
- Zoom

## Configuration

- Startup applications
  - Terminal
  - Firefox
  - Chrome
  - Slack
  - Wireguard
- Add Chinese input
  - Language support > Install/remove languages... > Chinese (simplified)
  - Region & language > Input sources > Chinese (Intelligent Pinyin)

## Questions

- Is it worth installing LivePatch?

## Links

- [Create a bootable USB stick on Windows](https://ubuntu.com/tutorials/create-a-usb-stick-on-windows)
- [Install Ubuntu desktop](https://ubuntu.com/tutorials/install-ubuntu-desktop)
- [Ubuntu 20 Chinese input support](https://sourceexample.com/article/en/30fff033c90c212e9a7f17543cdc4df5/)