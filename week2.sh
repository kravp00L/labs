 #!/bin/bash

# UMUC
# CMIT321 lab setup script
# Week 2
# Author: david.mashburn@faculty.umuc.edu
#
# Tools for lab exercises
# theharvester [https://github.com/laramies/theHarvester.git]
# dnsrecon [https://github.com/darkoperator/dnsrecon.git]
# recon-ng framework [https://bitbucket.org/LaNMaSteR53/recon-ng.git]
# nmap

if [[ $EUID -ne 0 ]]; then
    echo "Please run the script using sudo"
    echo "Usage: sudo $0"
    exit
fi

echo "[+] Installing Git source control"
apt-get -q -y install git
echo "[+] Installing required development libraries"
apt-get -q -y install libxml2-dev libxslt1-dev
cd /opt
echo "[+] Installing python pip"
# Package installation out of date
# apt-get -q -y install python-pip
curl https://bootstrap.pypa.io/get-pip.py
chmod u+x /opt/get-pip.py 
python /opt/get-pip.py 
echo "[+] Cloning theHarvester from source"
git clone https://github.com/laramies/theHarvester.git
echo "[+] Cloning dnsrecon from source"
git clone https://github.com/darkoperator/dnsrecon.git
echo "[+] Cloning recon-ng from source"
git clone https://bitbucket.org/LaNMaSteR53/recon-ng.git
cd recon-ng
echo "[+] Installing required python modules/libraries"
pip install -r REQUIREMENTS
echo "[+] Installation of tools complete"
