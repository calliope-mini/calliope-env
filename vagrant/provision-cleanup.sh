#!/bin/sh

# rm -rf /usr/share/man/??
# rm -rf /usr/share/man/??_*

apt-get autoremove --purge
apt-get clean

exit 0