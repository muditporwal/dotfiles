#!/bin/sh

echo "Setting Up Docker"

# add docker user group
sudo groupadd docker
sudo usermod -aG docker $USER

# enable and start service
sudo systemctl enable docker.service
sudo systemctl start docker.service

echo "Docker Setup Completed. Please restart before using"
