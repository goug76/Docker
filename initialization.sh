#!/bin/bash   

# Change PWD to the docker directory
cd /home/goug76/docker/

# Create .env file
sudo mv .env.example .env

# Set permissions to the .env file to 600
sudo chown root:root /home/goug76/docker/.env
sudo chmod 600 /home/goug76/docker/.env

# Set premissions to the root Docker directory for the docker group
sudo chmod 775 /home/goug76/docker
sudo setfacl -Rdm g:docker:rwx /home/goug76/docker
sudo setfacl -Rm g:docker:rwx /home/goug76/docker

# Set up GIT
git config --global user.email "goug76@gmail.com"
git config --global user.name "John Goughenour"