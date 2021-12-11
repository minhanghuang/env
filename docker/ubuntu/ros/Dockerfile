FROM ros:kinetic

VOLUME /data
COPY sources.list /etc/apt/sources.list

RUN apt-get update \
    && apt install -y \
    libgsl-dev cmake make g++ git pkg-config autoconf automake build-essential htop glances vim sudo \
    curl unzip openssh-server ntpdate chrony  python-pip python3-pip supervisor libpcap-dev libtool \
    && rm -rf /var/lib/apt/lists/* \
    && useradd --create-home --no-log-init --shell /bin/bash trunk \
    && adduser trunk sudo && echo "trunk:123" | chpasswd \
    && pip3 install requests PyYAML==6.0 rospkg==1.2.8 catkin-tools==0.6.1 protobuf==3.13.0 tornado==5.1.1

USER trunk
WORKDIR /home/trunk

COPY pip.conf /home/trunk/.pip/pip.conf


