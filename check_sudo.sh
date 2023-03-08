#$ sudo apt-get install sshpass     [On Debian, Ubuntu and Mint]
#$ sudo yum install sshpass         [On RHEL/CentOS/Fedora and Rocky Linux/AlmaLinux]
#$ sudo emerge -a sys-apps/sshpass  [On Gentoo Linux]
#$ sudo pacman -S sshpass           [On Arch Linux]
#$ sudo zypper install sshpass      [On OpenSUSE]    


#!/bin/bash
username=$1
password=$2

file=$3

> output.txt

ss () {
   sshpass -p $password ssh $username@$1 "echo $h && echo $password | sudo -S cat /etc/sudoers | grep NOPASSWD | egrep -v '^\s*#'" >> output.txt &
   }

while read h; do
    
    
    #sshpass -p $password ssh $username@$h "echo $password | sudo -S cat /etc/sudoers | grep NOPASSWD | egrep -v '^\s*#'" >> output.txt
    ss $h
    
    

done <$file

sleep 10
