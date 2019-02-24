FROM debian:stretch-slim

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y --no-install-recommends \
            git-core build-essential wget curl man \
            manpages manpages-dev \
            cmake cmake-data \
            ninja-build

VOLUME /opt/source
VOLUME /opt/binary

WORKDIR /opt/source
