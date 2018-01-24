#!/bin/sh

apt-get update
apt-get install software-properties-common
add-apt-repository ppa:certbot/certbot
apt-get update
apt-get -y -V dist-upgrade

# dpkg -P language-pack-gnome-en language-pack-gnome-en-base
# dpkg -P libntfs-3g871 ntfs-3g nfs-common
# dpkg -P eject hdparm dosfstools ubuntu-standard ubuntu-minimal
# dpkg -P cpp dkms gcc cpp-6 gcc-6
# dpkg -P command-not-found command-not-found-data python3-commandnotfound
# dpkg -P open-iscsi
# dpkg -P snapd
# dpkg -P open-vm-tools
# dpkg -P accountsservice language-selector-common libaccountsservice0

exit 0

# apt-get install python-certbot-nginx
# server_name
# certbot --nginx -d example.com -d www.example.com
# certbot renew --dry-run


dpkg -P cryptsetup overlayroot
dpkg -P ethtool
dpkg -P git-man
dpkg -P krb5-locales
dpkg -P libgolang-1.7-std1 libgolang-github-gorilla-context1 libgolang-github-gorilla-mux1 libgolang-github-gorilla-websocket1  libgolang-github-gosexy-gettext1 libgolang-github-mattn-go-colorable1 libgolang-github-mattn-go-sqlite3-1  libgolang-github-olekukonko-tablewriter1 libgolang-github-pborman-uuid1 libgolang-gocapability1 libgolang-golang-x-crypto1  libgolang-golang-x-net1 libgolang-golang-x-text1 libgolang-gopkg-flosch-pongo2.v3-1 libgolang-gopkg-inconshreveable-log15.v2-1  libgolang-gopkg-lxc-go-lxc.v2-1 libgolang-gopkg-tomb.v2-1 libgolang-gopkg-yaml.v2-1 libgolang-goprotobuf1 libgolang-petname1 lxd  lxd-client
dpkg -P apparmor liblxc1 lxc-common snapd
dpkg -P fonts-ubuntu-font-family-console

apt-get install localepurge

apt-get install aptitude
apt-get purge $(aptitude search '~i!~M!~prequired!~pimportant!~R~prequired!~R~R~prequired!~R~pimportant!~R~R~pimportant!busybox!grub!initramfs-tools' | awk '{print $2}')
apt-get purge aptitude

