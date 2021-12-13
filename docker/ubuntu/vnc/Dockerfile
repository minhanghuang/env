FROM ros:kinetic-base-tools

COPY vnc-entrypoint.sh /opt/dockerfile/vnc-entrypoint.sh

USER root
ARG user=trunk


RUN apt-get update \
    && apt install -y \
        x11vnc \
    && sudo chmod 777 /opt/dockerfile/vnc-entrypoint.sh

USER trunk
WORKDIR /home/trunk/

ENTRYPOINT ["/opt/dockerfile/vnc-entrypoint.sh"]



