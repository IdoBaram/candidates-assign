#!/bin/bash
#add fix to exercise5-server2 here
sudo cat /vagrant/id_rsa2 >> /home/vagrant/.ssh/id_rsa &&
sudo cat /vagrant/id_rsa2.pub >> /home/vagrant/.ssh/id_rsa.pub &&
sudo cat /vagrant/id_rsa.pub >> /home/vagrant/.ssh/authorized_keys &&
sudo chmod 700 /home/vagrant/.ssh &&
sudo chmod 600 /home/vagrant/.ssh/authorized_keys &&
sudo printf "StrictHostKeyChecking no\nUserKnownHostsFile=/dev/null" >> /home/vagrant/.ssh/config &&
sudo service ssh restart &&
sudo rm -r /vagrant/id*