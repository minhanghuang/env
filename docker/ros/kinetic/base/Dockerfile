FROM ros:kinetic-ros-base

COPY sources.list /etc/apt/sources.list
COPY oh-my-zsh-install.sh /opt/dockerfile/oh-my-zsh-install.sh
COPY oh-my-zsh-plugin-install.sh /opt/dockerfile/oh-my-zsh-plugin-install.sh
COPY cmake/cmake-3.18.0-Linux-x86_64.tar.gz /opt/dockerfile/cmake/

ARG user=trunk

RUN apt-get update \
    && apt install -y \
        libgsl-dev cmake make g++ pkg-config autoconf automake iputils-ping net-tools \
        build-essential supervisor htop ntpdate chrony libtool \
        python-pip python3-pip curl unzip wget \
        zsh git vim sudo \
        openssh-server \
    && tar -xzvf /opt/dockerfile/cmake/cmake-3.18.0-Linux-x86_64.tar.gz \
    && mv cmake-3.18.0-Linux-x86_64 /opt/cmake-3.18.0 \
    && ln -sf /opt/cmake-3.18.0/bin/*  /usr/bin/ \
    && rm -rf /var/lib/apt/lists/* /opt/dockerfile/cmake \
    && useradd --create-home --no-log-init --shell /bin/zsh ${user} \
    && adduser ${user} sudo && echo "${user}:123" | chpasswd && echo "root:123" | chpasswd \
    && su - ${user} -c "sh /opt/dockerfile/oh-my-zsh-install.sh" \
    && su - ${user} -c "sh /opt/dockerfile/oh-my-zsh-plugin-install.sh"

EXPOSE 22

COPY base-entrypoint.sh /opt/dockerfile/base-entrypoint.sh
COPY sshd_config /etc/ssh/sshd_config
COPY pip.conf /home/trunk/.pip/pip.conf

ENTRYPOINT ["sh","/opt/dockerfile/base-entrypoint.sh"]

CMD ["/bin/bash"]
