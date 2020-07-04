#! /bin/bash
read -p "Do you want to Defrag Your HDD Y/N : " user_var
if [ $user_var == "Y" ] || [ $user_var == "Yes" ] || [ $user_var == "y" ] || [ $user_var == "yes" ]
then
echo "Getting Defragment software"
sudo apt-get install e2fsprogs
echo
echo
echo "Please note down the Disk you want to defrag!"
echo
sudo fdisk -l | grep "/dev/"
fi
if [ $user_var == "Y" ] || [ $user_var == "Yes" ] || [ $user_var == "y" ] || [ $user_var == "yes" ]
then
echo
read -p "Enter the drive you want to defrag e.g (/dev/sda1) : " user_var
sudo e4defrag $user_var
fi
