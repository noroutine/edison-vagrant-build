#!/usr/bin/env bash


echo "Installing necessary toolset..."

sudo apt-get update
sudo apt-get install -y build-essential git diffstat gawk chrpath texinfo libtool gcc-multilib

echo "Downloading edison image sources"

curl -sS -O http://downloadmirror.intel.com/24910/eng/edison-src-ww18-15.tgz

echo "Unpacking..."

tar zxf edison-src-ww18-15.tgz

cd edison-src


echo "Setup..."
make setup

echo "Building..."
make image
