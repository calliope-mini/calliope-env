FROM ubuntu:artful

RUN apt-get -y update \
  && apt-get install -y --no-install-recommends \
    software-properties-common

RUN add-apt-repository ppa:certbot/certbot \
  && apt-get -y update

RUN apt-get install -y --no-install-recommends \
    procps \
    git \
    cmake \
    build-essential \
    python-dev \
    python-setuptools \
    ninja-build \
    libffi-dev \
    libssl-dev \
    srecord \
    gcc-arm-none-eabi \
    libnewlib-arm-none-eabi \
    libstdc++-arm-none-eabi-newlib \
  && apt-get -y -V dist-upgrade \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN easy_install pip \
  && pip install -U --no-deps yotta \
  && pip install yotta \
  && pip install cryptography -U

RUN mkdir -p /usr/local/lib/yotta_modules \
  && chmod 755 /usr/local/lib/yotta_modules

WORKDIR /project
VOLUME [ "/project" ]
CMD [ "/bin/bash" ]
