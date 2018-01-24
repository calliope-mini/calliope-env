#!/bin/sh

apt-get install -y \
  git \
  cmake \
  build-essential \
  python-dev \
  python-setuptools \
  ninja-build \
  libffi-dev \
  libssl-dev \
  srecord \
  gcc-arm-none-eabi

easy_install pip

pip install -U --no-deps yotta
pip install yotta
pip install cryptography -U

# pip install yotta
# pip install -U yotta


mkdir -p /usr/local/lib/yotta_modules
chown vagrant /usr/local/lib/yotta_modules
chmod 755 /usr/local/lib/yotta_modules

git clone https://github.com/calliope-mini/calliope-demo.git
chown -R vagrant:vagrant calliope-demo/

# cd calliope-demo
# yotta update
# yotta build

exit 0
