FROM gns3/ipterm

RUN set -e -x \
    && export DEBIAN_FRONTEND=noninteractive \
    && apt-get update \
    && apt-get -y --no-install-recommends install openssl easy-rsa \
    && rm -rf /var/lib/apt/lists/*
