#! /bin/bash

# exit if a command fails
set -e

# install full texlive distribution and python
DEBIAN_FRONTEND=noninteractive apt-get update
DEBIAN_FRONTEND=noninteractive apt-get -y install python3
DEBIAN_FRONTEND=noninteractive apt-get -y install python3-pip
python3 --version
pip3 install pygments 
DEBIAN_FRONTEND=noninteractive apt-get install -y make texlive-full


# cleanup package manager
apt-get autoclean && apt-get clean
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# prepare dir
mkdir /source
