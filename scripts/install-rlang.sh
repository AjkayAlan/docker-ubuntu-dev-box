#!/bin/zsh

# Install dependencies
apt install -y \
    apt-transport-https \
    build-essential \
    ca-certificates \
    dirmngr \
    gnupg \
    software-properties-common

# Add CRAN
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu focal-cran40/'

# Install R
apt install -y r-base
