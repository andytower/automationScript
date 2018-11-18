#! /bin/bash
# This script auto upgrade system Ubuntu

sudo apt update && sudo apt list --upgradable
echo 'Do you want upgrade? (y/n)'
read answer

if [[ $answer =~ [yY] ]] 
then
  yes Y | sudo apt upgrade
  sudo apt autoremove
fi	
