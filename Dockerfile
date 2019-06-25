FROM ubuntu:18.04

LABEL maintainer="The CoBloX developers team@coblox.tech"

RUN apt-get update
RUN apt-get install -y g++-4.8 build-essential autoconf automake libtool pkg-config git wget

RUN wget https://raw.githubusercontent.com/libbitcoin/libbitcoin-explorer/version3/install.sh && \
    chmod +x install.sh

RUN ./install.sh --prefix=/usr/local/ --build-boost --build-zmq --disable-shared
RUN rm -rf ./build-libbitcoin-explorer


ENTRYPOINT ["/usr/local/bin/bx"]
