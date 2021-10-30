#!/bin/bash

# Install basic nice to have things
DEBIAN_FRONTEND=noninteractive apt install -y \
    apt-transport-https \
    bzip2 \
    ca-certificates \
    coreutils \
    curl \
    fontconfig \
    gzip \
    lsb-release \
    man-db \
    nano \
    patch \
    python-apt \
    python-pycurl \
    sed \
    snapd \
    software-properties-common \
    tar \
    unzip \
    vim \
    wget \
    zip
