FROM dorowu/ubuntu-desktop-lxde-vnc:xenial

COPY sources.list /etc/apt/sources.list
COPY ros-latest.list /etc/apt/sources.list.d/ros-latest.list
COPY sshd_config /etc/ssh/sshd_config
COPY zsh_install.sh /opt/dockerfile/zsh_install.sh
COPY plugins_install.sh /opt/dockerfile/plugins_install.sh
COPY docker-entrypoint.sh /opt/dockerfile/docker-entrypoint.sh

ARG user=trunk

RUN  apt-get update \
    && apt install -y \
        zsh git vim sudo openssh-server \
    && rm -rf /var/lib/apt/lists/* \
    && useradd --create-home --no-log-init --shell /bin/zsh ${user} \
    && adduser ${user} sudo && echo "${user}:123" | chpasswd && echo "root:123" | chpasswd \
    && sudo chmod 777 /opt/dockerfile/docker-entrypoint.sh \
    && su - ${user} -c "sh /opt/dockerfile/zsh_install.sh" \
    && su - ${user} -c "sh /opt/dockerfile/plugins_install.sh"

USER ${user}
WORKDIR /home/${user}/

ENTRYPOINT ["/opt/dockerfile/docker-entrypoint.sh"]



