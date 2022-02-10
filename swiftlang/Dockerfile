# Ubuntu Focal 20.04
# Swift Latest Release
FROM ubuntu:20.04
LABEL maintainer="Swift on Arm <docker@swift-arm.com>"
LABEL description="Docker Container for the Swift programming language"

# update and install dependencies
RUN export DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true && apt-get -q update && \
    apt-get -q install -y \
    ca-certificates \
    curl \
    gnupg

# add repository key
RUN curl -fsSL https://archive.swiftlang.xyz/swiftlang_repo.gpg.key | gpg --dearmor -o /usr/share/keyrings/swiftlang_repo.gpg.key

# add repository sources list file
RUN echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/swiftlang_repo.gpg.key] https://archive.swiftlang.xyz/ubuntu focal main" | tee /etc/apt/sources.list.d/swiftlang.list > /dev/null

# install Swift
RUN export DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true && apt-get -q update && \
    apt-get -q install -y \
    swiftlang

# clean up to reduce image size
RUN rm -r /var/lib/apt/lists/*

# test swift version
RUN swift --version
