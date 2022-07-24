FROM ubuntu:18.04

COPY sources.list /etc/apt/sources.list
COPY oh-my-zsh-install.sh /opt/dockerfile/oh-my-zsh-install.sh
COPY oh-my-zsh-plugin-install.sh /opt/dockerfile/oh-my-zsh-plugin-install.sh
COPY requirements.txt /opt/dockerfile/requirements.txt

ARG user=trunk

RUN apt-get update \
    && apt install -y \
        libgsl-dev cmake make g++ pkg-config autoconf automake iputils-ping net-tools \
        build-essential supervisor htop ntpdate chrony libtool clang clang-format llvm tig tree libunwind-dev \
        python-pip python3-pip curl unzip wget \
        zsh git vim sudo \
        openssh-server \
    && rm -rf /var/lib/apt/lists/* \
    && useradd --create-home --no-log-init --shell /bin/zsh ${user} \
    && adduser ${user} sudo && echo "${user}:123" | chpasswd && echo "root:123" | chpasswd \
    && su - ${user} -c "pip3 install -i https://pypi.tuna.tsinghua.edu.cn/simple -r /opt/dockerfile/requirements.txt" \
    && su - ${user} -c "sh /opt/dockerfile/oh-my-zsh-install.sh" \
    && su - ${user} -c "sh /opt/dockerfile/oh-my-zsh-plugin-install.sh"


EXPOSE 22

COPY base-entrypoint.sh /opt/dockerfile/base-entrypoint.sh
COPY sshd_config /etc/ssh/sshd_config
COPY pip.conf /home/trunk/.pip/pip.conf

ENTRYPOINT ["sh","/opt/dockerfile/base-entrypoint.sh"]

CMD ["/bin/bash"]
