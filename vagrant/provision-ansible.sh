#!/bin/bash
echo "Provisioning Ansible."

sudo apt-get update
sudo apt-get install software-properties-common
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get install ansible -y
sudo apt-get install git -y
sudo apt-get install gcc python-dev libkrb5-dev
sudo apt-get install python-pip -y
sudo python -m pip install --upgrade pip setuptools
pip install pywinrm --user
