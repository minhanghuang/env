FROM ros:kinetic

#VOLUME /data
COPY sources.list /etc/apt/sources.list
COPY sshd_config /etc/ssh/sshd_config
COPY zsh_install.sh /opt/dockerfile/zsh_install.sh
COPY plugins_install.sh /opt/dockerfile/plugins_install.sh
COPY pip.conf /opt/dockerfile/pip.conf
COPY docker-entrypoint.sh /opt/dockerfile/docker-entrypoint.sh


RUN apt-get update \
    && apt install -y \
        libgsl-dev cmake make g++ pkg-config autoconf automake iputils-ping\
        build-essential supervisor htop glances ntpdate chrony libtool \
        python-pip python3-pip curl unzip \
        zsh git vim sudo openssh-server \
    && rm -rf /var/lib/apt/lists/* \
    && useradd --create-home --no-log-init --shell /bin/zsh trunk \
    && adduser trunk sudo && echo "trunk:123" | chpasswd && echo "root:123" | chpasswd \
    && sudo chmod 777 /opt/dockerfile/docker-entrypoint.sh \
    && su - trunk -c "sh /opt/dockerfile/zsh_install.sh" \
    && su - trunk -c "sh /opt/dockerfile/plugins_install.sh" \
    && pip3 install requests PyYAML==6.0 rospkg==1.2.8 catkin-tools==0.6.1 protobuf==3.13.0 tornado==5.1.1

USER trunk
WORKDIR /home/trunk/

ENTRYPOINT ["/opt/dockerfile/docker-entrypoint.sh"]



