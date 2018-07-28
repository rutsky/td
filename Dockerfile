FROM ubuntu:xenial

MAINTAINER Vladimir Rutsky <vladimir@rutsky.org>

RUN apt-get update && apt-get install -y \
    git \
    cmake \
    build-essential \
    libssl-dev \
    zlib1g-dev \
    gperf \
    && rm -rf /var/lib/apt/lists/*

ADD third_party/td/ /td/
RUN mkdir build
RUN cd build && cmake -DCMAKE_INSTALL_PREFIX=/install -DCMAKE_BUILD_TYPE=RelWithDebInfo /td
RUN cmake --build build --target install
