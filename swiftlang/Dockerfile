# Debian 11 Bullseye
# Swift Latest Release
FROM debian:11
LABEL maintainer="Swift on Arm <docker@swift-arm.com>"
LABEL description="Docker Container for the Swift programming language"

RUN export DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true && apt-get -q update && \
    apt-get -q install -y \
    ca-certificates \
    curl \
    gnupg

RUN curl -fsSL https://archive.swiftlang.xyz/swiftlang_repo.gpg.key | gpg --dearmor -o /usr/share/keyrings/swiftlang_repo.gpg.key

RUN echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/swiftlang_repo.gpg.key] https://archive.swiftlang.xyz/debian bullseye main" | tee /etc/apt/sources.list.d/swiftlang.list > /dev/null

# swift version is set from Jenkinsfile build command
ARG SWIFT_VERSION=default
RUN export DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true && apt-get -q update && \
    apt-get -q install -y \
    swiftlang

RUN rm -r /var/lib/apt/lists/*
RUN swift --version
