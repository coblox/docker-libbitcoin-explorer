FROM ubuntu:18.04

LABEL maintainer="The CoBloX developers team@coblox.tech"

RUN apt-get update && \
    apt-get install -y g++-4.8 build-essential autoconf automake libtool pkg-config git wget && \
    rm -rf /var/lib/apt

RUN wget https://raw.githubusercontent.com/libbitcoin/libbitcoin-explorer/version3/install.sh && \
    chmod +x install.sh && \
    ./install.sh --prefix=/usr/local/ --build-boost --build-zmq --disable-shared && \
    rm -rf ./build-libbitcoin-explorer ./install.sh


ENTRYPOINT ["/usr/local/bin/bx"]
