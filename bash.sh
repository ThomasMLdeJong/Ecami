#!/bin/bash

#Install all apt updates and upgrades
sudo apt update && sudo apt -y upgrade

#Install ansible
sudo apt install ansible

#Prepare Ansible directory
cd ~
mkdir Ansible
cd Ansible
mkdir Playbooks
cd Playbooks
wget https://raw.githubusercontent.com/ThomasMLdeJong/Ecami/main/node-red.yml


#Installing and launching node-red
ansible-playbook node-red.yml
node-red
