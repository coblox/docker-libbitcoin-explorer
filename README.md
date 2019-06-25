# LibBitcoin Explorer Docker

[![Docker Automated build](https://img.shields.io/docker/automated/coblox/libbitcoin-explorer.svg)](https://hub.docker.com/r/coblox/libbitcoin-explorer/)
[![Docker Build Status](https://img.shields.io/docker/build/coblox/libbitcoin-explorer.svg)](https://hub.docker.com/r/coblox/libbitcoin-explorer/)

A docker image of [libbitcoin-explorer](https://github.com/libbitcoin/libbitcoin-explorer)

## Usage

Simply use it the way you would use the `bx` binary. All arguments are passed through to `bx`.

For example:

`$ docker run coblox/libbitcoin-explorer seed | bx ec-new | bx ec-to-public | bx ec-to-address
13ua8RRSxLpL5WL5cKUDepUCvJZgGWuKh7`