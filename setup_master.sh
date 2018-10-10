#!/bin/bash

echo "Setting up the master..."

# Set the hostname (permanently)
hostname master
echo "master" > /etc/hostname

# Copy over our private key
cp /vagrant/id_rsa /home/vagrant/.ssh/

# Install ansible (ask me why I use apt-get here instead of apt)
apt-get update
apt-get -y upgrade
apt-get -y install ansible

# Make slave1 and slave2 as known hosts
echo "192.168.33.20 slave1" >> /etc/hosts
echo "192.168.33.30 slave2" >> /etc/hosts

# Tell ansible we want to manage slave1 and slave2
echo "slave1" >> /etc/ansible/hosts
echo "slave2" >> /etc/ansible/hosts
