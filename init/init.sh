#!/bin/bash
sudo apt-get install -y ibus-mozc
sudo cp .bashrc ~/.bashrc
source ~/.bashrc
curl -L git.io/nodebrew | perl - setup
nodebrew install-binary latest
nodebrew use latest
sudo apt-get install libcap2-bin
sudo setcap cap_net_raw+eip $(eval readlink -f `which node`)
sudo reboot

