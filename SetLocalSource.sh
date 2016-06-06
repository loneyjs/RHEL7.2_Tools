#!/bin/bash
#Script By lksoft
# iso root path
rootpath="/software_source"

echo "The script must run super user mode !"
echo " "
read -p "Please enter RHEL iso  path: " isopath
mkdir $rootpath
mount $isopath $rootpath
echo "
[local_server]
name=This is a local software source
baseurl=file://$rootpath
enabled=1
gpgcheck=0
" > /etc/yum.repos.d/LocalSource.repo

echo " Do you want it auto start?(y/n)"

read input1
	case $input1 in
	y | Y)
		echo "$isopath	$rootpath	iso9660		defaults	1 2" >> /etc/fstab
		;;
	n | N)
		echo "Finish Local Software Source Config !"
		;;
	*)
		echo "Please Re-enter"
		;;
	esac
#End
