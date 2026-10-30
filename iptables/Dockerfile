FROM gns3/ipterm-base

RUN set -e -x \
    && export DEBIAN_FRONTEND=noninteractive \
    && apt-get update \
    && apt-get -y --no-install-recommends install iptables \
    && rm -rf /var/lib/apt/lists/*

VOLUME /etc/iptables

CMD /bin/bash -l
