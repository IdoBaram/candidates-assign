#!/bin/bash
#add fix to exercise3 here
sudo sed -i '0,/Order allow,deny/s//Order deny,allow\n\t\tAllow from 192.168/' /etc/apache2/sites-enabled/000-default &&
sudo service apache2 restart