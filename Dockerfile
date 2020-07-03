FROM ubuntu:18.04

RUN apt-get update
RUN apt-get install -y gnat build-essential libssl-dev pkg-config git flex bison libncurses5-dev wget zlib1g-dev uuid-dev nasm python

VOLUME ["/coreboot"]
WORKDIR /coreboot
