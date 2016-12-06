#!/bin/sh

sudo groupadd docker
sudo gpasswd -a ${USER} docker
sudo usermod -aG docker ${USER}
sudo systemctl enable docker
sudo systemctl start docker
sudo systemctl restart docker	
