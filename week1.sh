#!/bin/bash

# CMIT321 lab setup script
# Week 1
# Author: david.mashburn@faculty.umuc.edu

if [[ $EUID -ne 0 ]]; then
    echo "Please run the script using sudo"
    echo "Usage: sudo $0"
    exit 1
fi


