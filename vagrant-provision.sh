#!/usr/bin/env bash

# Install docker
echo "Installing docker"
wget -qO- https://get.docker.com/ | sh >> /dev/null

echo "Installing docker-compose"
sudo wget https://github.com/docker/compose/releases/download/1.2.0/docker-compose-`uname -s`-`uname -m` -O /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# Docker configuration
echo "Configure docker"
sudo usermod -aG docker vagrant >> /dev/null
sudo sh -c 'echo DOCKER_OPTS=\"-H 0.0.0.0:2375\" >> /etc/default/docker' >> /dev/null
sudo sh -c 'echo export DOCKER_HOST=\"33.33.33.30:2375\" >> /etc/environment' >> /dev/null
sudo service docker restart >> /dev/null

# Prepare data dir
sudo mkdir -m 777 -p /var/docker/data

# Cleanup
sudo apt-get clean >> /dev/null