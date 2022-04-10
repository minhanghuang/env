FROM ubuntu:18.04

COPY sources.list /etc/apt/sources.list
COPY oh-my-zsh-install.sh /opt/dockerfile/oh-my-zsh-install.sh
COPY oh-my-zsh-plugin-install.sh /opt/dockerfile/oh-my-zsh-plugin-install.sh

ARG user=trunk

RUN apt-get update \
    && apt install -y \
        libgsl-dev cmake make g++ pkg-config autoconf automake iputils-ping net-tools \
        build-essential supervisor htop ntpdate chrony libtool \
        python-pip python3-pip curl unzip wget \
        zsh git vim sudo openssh-server \
        libssl1.0-dev nodejs-dev node-gyp nodejs npm python3-venv \
    && npm config set registry https://registry.npm.taobao.org \
    && npm install n -g  && n stable \ 
    && curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add - \ 
    && echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list \
    && apt update \
    && apt install -y yarn \ 
    && rm -rf /var/lib/apt/lists/* \
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
