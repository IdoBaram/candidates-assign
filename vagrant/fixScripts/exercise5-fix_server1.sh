#!/bin/bash
#add fix to exercise5-server1 here
sudo ssh-keygen -t rsa -N "" -f /vagrant/id_rsa &&
sudo ssh-keygen -t rsa -N "" -f /vagrant/id_rsa2 &&
sudo cat /vagrant/id_rsa.pub >> /home/vagrant/.ssh/id_rsa.pub &&
sudo cat /vagrant/id_rsa >> /home/vagrant/.ssh/id_rsa &&
sudo cat /vagrant/id_rsa2.pub >> /home/vagrant/.ssh/authorized_keys &&
sudo chmod 700 /home/vagrant/.ssh &&
sudo chmod 600 /home/vagrant/.ssh/authorized_keys &&
sudo printf "StrictHostKeyChecking no\nUserKnownHostsFile=/dev/null" >> /home/vagrant/.ssh/config &&
sudo service ssh restart