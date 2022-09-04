FROM ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Asia/Shanghai

RUN apt update && apt install -y --reinstall ca-certificates 

COPY sources.list /etc/apt/sources.list
COPY requirements.txt /opt/dockerfile/requirements.txt

ARG user=trunk

RUN apt update \
    && apt install -y \
        libgsl-dev cmake make g++ pkg-config autoconf automake iputils-ping net-tools python2.7-dev \
        build-essential supervisor htop ntpdate chrony libtool gdb cgdb clang clang-format llvm tig tree libunwind-dev curl unzip wget \
        zsh git vim sudo python3-pip \
        openssh-server \
    && rm -rf /var/lib/apt/lists/* \
    && useradd --create-home --no-log-init --shell /bin/zsh ${user} \
    && adduser ${user} sudo && echo "${user}:123" | chpasswd && echo "root:123" | chpasswd \
    && su - ${user} -c "pip3 install -i https://pypi.tuna.tsinghua.edu.cn/simple -r /opt/dockerfile/requirements.txt" \
    && su - ${user} -c "git clone https://gitee.com/haha-web/env.git ~/env" \
    && su - ${user} -c "cd ~/env/dotfile/ && ./install.sh && cd ~/env/setup && ./zsh.sh"


EXPOSE 22

COPY base-entrypoint.sh /opt/dockerfile/base-entrypoint.sh
COPY sshd_config /etc/ssh/sshd_config

ENTRYPOINT ["sh","/opt/dockerfile/base-entrypoint.sh"]

CMD ["/bin/bash"]
