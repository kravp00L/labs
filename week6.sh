#!/bin/bash

# UMUC
# CMIT321 lab setup script
# Week 6
# Author: david.mashburn@faculty.umuc.edu
#
# Tools/targets for the lab exercises
# ncat
# OWASP Mutillidae2
#

if [[ $EUID -ne 0 ]]; then
    echo "Please run the script using sudo"
    echo "Usage: sudo $0"
    exit
fi

#Update ubuntu repository
echo "[+] Updating repositories"
apt-get -q update
echo "[+] Installing Git source control"
apt-get -q -y install git
echo "[+] Installing ncat"
apt-get -q -y install ncat
echo "[+] Installing Apache web server"
apt-get -q -y install apache2 apache2-utils
echo "[+] Installing MySQL database"
apt-get -y install mysql-server libapache2-mod-auth-mysql php5-mysql
mysql_install_db
echo "[+] Installing PHP"
apt-get -q -y install libapache-mod-php5 php5 php5-mysql php-pear php5-gd php5-mcrypt php5-curl
echo "[+] Cloning Mutillidae2 from Git repository"
git clone git://git.code.sf.net/p/mutillidae/git /var/www/mutillidae
echo "[+] Creating the PHP test page"
echo -n "<?php phpinfo(); ?>" > /var/www/phpinfo.php
firefox http://localhost &
firefox http://localhost/phpinfo.php &
