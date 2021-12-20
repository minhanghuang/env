FROM ubuntu:demo

COPY sources.list /etc/apt/sources.list
COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh

#RUN apt-get update \
#    && apt install -y \
#    libgsl-dev cmake make g++ git pkg-config autoconf automake build-essential htop glances vim \
#    curl unzip openssh-server ntpdate chrony  python-pip python3-pip supervisor libpcap-dev libtool \
#    && rm -rf /var/lib/apt/lists/*

#RUN  apt-get update \
#    && apt install -y sudo \
#    && useradd --create-home --no-log-init --shell /bin/bash trunk \
#    && adduser trunk sudo && echo "trunk:123" | chpasswd && echo "root:123" | chpasswd \
#    && usermod -u 1000 trunk && usermod -G 1000 trunk \
#    && sudo chmod 777 /usr/local/bin/docker-entrypoint.sh
#
#USER trunk
#WORKDIR /home/trunk/

#ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]

WORKDIR /usr/local
CMD ["ls"]
CMD ["ls","-al"]


