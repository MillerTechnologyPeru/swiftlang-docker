FROM ubuntu:18.04

LABEL maintainer="Swift-Arm <swift-arm.com>"
LABEL Description="Multi-Arch Docker Container for the Swift programming language"

RUN export DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true && apt-get -q update && \
    apt-get -q install -y \
    libatomic1 \
    libbsd0 \
    libcurl4 \
    libxml2 \
    libedit2 \
    libsqlite3-0 \
    libc6-dev \
    binutils \
    libgcc-5-dev \
    libstdc++-5-dev \
    libpython2.7 \
    tzdata \
    git \
    curl \
    pkg-config


RUN curl -s https://packagecloud.io/install/repositories/swift-arm/docker/script.deb.sh | bash

RUN apt-get -q install -y swiftlang-dev

# delete all the apt list files since they're big and get stale quickly
RUN rm -rf /var/lib/apt/lists/*

RUN mkdir TestFiles

COPY src/ /TestFiles
