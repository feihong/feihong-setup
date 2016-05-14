Ubuntu setup
============

[If necessary, set up your SSH keys](https://help.github.com/articles/generating-ssh-keys/)

Command line
------------

```
scp USERNAME@COMPUTER_IP:/Users/USERNAME/.ssh/id_rsa* ~/.ssh
sudo apt install git git-cola
mkdir work
cd work
git clone git@github.com:feihong/feihong-setup.git
cd feihong-setup/ubuntu
./setup.sh
```

Install via Software Center
---------------------------

- Dropbox

Manual install
--------------

- [Atom](https://atom.io/)
- [Chrome](https://www.google.com/chrome/#eula)
- Firefox extensions:
  - [uBlock Origin](https://addons.mozilla.org/en-US/firefox/addon/ublock-origin/)
  - [Greasemonkey](https://addons.mozilla.org/en-us/firefox/addon/greasemonkey/)
  - [Download Youtube Videos as MP4](https://addons.mozilla.org/en-us/firefox/addon/download-youtube/)
  - [Video DownloadHelper](https://addons.mozilla.org/en-US/firefox/addon/video-downloadhelper/?src=ss)
  - [Cache Download](https://addons.mozilla.org/en-us/firefox/addon/cachedownload/)

Manual configuration
--------------------

- [Install Chinese support](http://www.pinyinjoe.com/linux/ubuntu-12-chinese-setup.htm)
- [mp3gain](https://pkgs.org/ubuntu-14.04/ubuntu-universe-amd64/mp3gain_1.5.2-r2-6_amd64.deb.html)
- [aacgain](https://launchpad.net/~stefanobalocco/+archive/ubuntu/ppa/+packages)
