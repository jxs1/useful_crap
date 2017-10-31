#!/bin/bash
sudo apt-get update
sudo apt-get install -y gcc make build-essential autoconf m4 libncurses5-dev libssh-dev unixodbc-dev openjdk-8-jdk libwxgtk3.0-dev xsltproc fop
wget http://www.erlang.org/download/otp_src_20.1.tar.gz
tar -zvxf otp_src_20.1.tar.gz
cd otp_src_20.1
export ERL_TOP=`pwd`
./configure
make -j 1
sudo make install
echo "-----INSTALLED ERLANG SUCCESFULLY-----"
sudo apt-get install -y git
git clone https://github.com/ArchainTeam/archain.git
echo "-----CLONED ARCHAIN REPO-----"
echo "-----\nDONE!-----"
