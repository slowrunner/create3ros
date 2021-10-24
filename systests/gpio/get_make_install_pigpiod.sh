#!/bin/bash

wget https://github.com/joan2937/pigpio/archive/master.zip
sudo apt -y install unzip
unzip master.zip
cd pigpio-master
make
sudo apt -y install python-setuptools python3-setuptools
sudo make install
cd ..
cp pigpio-master/x_pigpio test_pigpiod
echo "cleanup: rm -r pigpio-master"
echo "         rm master.zip"
