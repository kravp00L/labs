#!/bin/bash

# UMUC
# CMIT321 lab setup script
# Week 4
# Author: david.mashburn@faculty.umuc.edu
#
# Tools for the lab exercises
# nmap
# metasploit framework
#

if [[ $EUID -ne 0 ]]; then
    echo "Please run the script using sudo"
    echo "Usage: sudo $0"
    exit
fi

echo "[+] Installing nmap"
apt-get -q -y install nmap
echo "[+] Downloading Linux 32-bit Metasploit Framework"
wget http://downloads.metasploit.com/data/releases/metasploit-latest-linux-installer.run
chmod u+x metasploit-latest-linux-installer.run
echo "[+] Running Metasploit Framework installer"
./metasploit-latest-linux-installer.run
