# Migration from Mac OS X to Ubuntu

On T480, run

    sudo apt-get install ssh
    sudo service ssh start

Create a file called `folders.txt` in this directory.

Print out how much data needs to be copied over:

    make size

Initiate the transfer using rsync:

    SERVER=192.168.1.123 make transfer

On T480, run

    sudo service ssh stop
