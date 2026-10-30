FROM gns3/frr

COPY --chmod=755 docker-start.sh /root/docker-start.sh

RUN set -e -x \
    && export DEBIAN_FRONTEND=noninteractive \
    && apt-get update \
    && apt-get -y --no-install-recommends install iptables \
    && rm -rf /var/lib/apt/lists/*

VOLUME /etc/iptables

CMD /bin/bash
ENTRYPOINT /root/docker-start.sh
