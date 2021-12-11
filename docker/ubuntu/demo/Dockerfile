FROM ubuntu:16.04

VOLUME /data
COPY sources.list /etc/apt/sources.list

#RUN apt-get update \
#    && apt install -y \
#    libgsl-dev cmake make g++ git pkg-config autoconf automake build-essential htop glances vim \
#    curl unzip openssh-server ntpdate chrony  python-pip python3-pip supervisor libpcap-dev libtool \
#    && rm -rf /var/lib/apt/lists/*

RUN  apt-get update \
    && apt install -y sudo \
    && useradd --create-home --no-log-init --shell /bin/bash trunk \
    && adduser trunk sudo && echo "trunk:123" | chpasswd

USER trunk
WORKDIR /home/trunk



