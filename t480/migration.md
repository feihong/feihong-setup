# Migration from Mac OS X to Ubuntu

On T480, run

    sudo apt-get install ssh
    sudo service ssh start

Create a file called `secret.py` in this directory and fill in 'folders' and 'server'.

Print out how much data needs to be copied over:

    make size

Initiate the transfer using rsync:

    make transfer
