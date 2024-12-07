FROM ubuntu:24.04

RUN apt-get update
RUN apt-get install -y gnat build-essential libssl-dev pkg-config git flex bison libncurses5-dev wget zlib1g-dev uuid-dev nasm python3 python-is-python3 imagemagick

VOLUME ["/coreboot"]
WORKDIR /coreboot
