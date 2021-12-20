FROM trunk:ros

ARG user=trunk

COPY base/ /opt/dockerfile/dev
COPY core/ /opt/dockerfile/dev
COPY third-party/ /opt/dockerfile/dev
COPY system/ /opt/dockerfile/dev

RUN apt-get update \
    && dpkg -i /opt/dockerfile/dev/* \
    && rm -rf /opt/dockerfile/dev/*

USER ${user}

COPY trunk-entrypoint.sh /opt/dockerfile/trunk-entrypoint.sh
ENTRYPOINT ["sh","/opt/dockerfile/trunk-entrypoint.sh"]

CMD ["/bin/bash"]

