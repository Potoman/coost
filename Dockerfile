ARG BASE_IMAGE=ubuntu:22.04
FROM ${BASE_IMAGE}
LABEL maintainer="qixuxiang<qixuxiang@outlook.com>"
WORKDIR /home/co/
RUN apt-get -y update
RUN apt-get install -y build-essential
RUN apt-get install -y curl
RUN apt-get install -y wget
RUN apt-get install -y unzip
RUN apt-get install -y git
RUN apt-get install -y rsync
RUN apt-get install -y dh-autoreconf
RUN apt-get install -y pkg-config
RUN apt-get install -y libtool
RUN apt-get install -y libtool-bin
RUN apt-get install -y libcurl4-openssl-dev
RUN apt-get install -y zlib1g-dev
RUN apt-get install -y openssl
RUN apt-get install -y libssl-dev
RUN apt-get install -y cmake
RUN apt-get install -y gcc
RUN apt-get install -y g++
RUN apt-get install -y clang
RUN apt-get install -y ninja-build
RUN apt-get install -y ca-certificates
RUN apt-get install -y libglib2.0-dev
RUN apt-get install -y meson
RUN apt-get install -y gcc-aarch64-linux-gnu
RUN apt-get install -y g++-aarch64-linux-gnu

RUN git clone --depth=1 --branch v7.2.2 https://gitlab.com/qemu-project/qemu.git
RUN mkdir build-qemu
WORKDIR /home/co/build-qemu

RUN ../qemu/configure --target-list=aarch64-linux-user
RUN make
RUN make install

WORKDIR /home/co
