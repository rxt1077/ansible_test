#!/bin/bash

echo "Setting up $1..."
hostname $1
echo $1 > /etc/hostname
cat /vagrant/id_rsa.pub >> /home/vagrant/.ssh/authorized_keys
