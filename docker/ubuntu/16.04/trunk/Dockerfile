FROM ubuntu:ros

ARG user=trunk

COPY base/ /opt/dockerfile/dev
COPY core/ /opt/dockerfile/dev
COPY third-party/ /opt/dockerfile/dev
COPY system/ /opt/dockerfile/dev
COPY cmake/cmake-3.18.0-Linux-x86_64.tar.gz /opt/dockerfile/cmake/

RUN apt-get update \
    && dpkg -i /opt/dockerfile/dev/* \
    && rm -rf /opt/dockerfile/dev/* \
    && tar -xzvf /opt/dockerfile/cmake/cmake-3.18.0-Linux-x86_64.tar.gz \
    && mv cmake-3.18.0-Linux-x86_64 /opt/cmake-3.18.0 \
    && ln -sf /opt/cmake-3.18.0/bin/*  /usr/bin/

USER ${user}

COPY trunk-entrypoint.sh /opt/dockerfile/trunk-entrypoint.sh
ENTRYPOINT ["sh","/opt/dockerfile/trunk-entrypoint.sh"]

CMD ["/bin/bash"]

