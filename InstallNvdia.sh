#!/bin/bash
echo "Please Download Driver"
read -p "Keyin download url: " downloadurl
read -p "How many download processes do you want? : " downloadnu
axel -n $downloadnu -a -o nvdia.run $downloadurl
if $?=0
	echo "Script Run Error !"
	exit

echo "Install Kernel Source Packages"
yum install kernel-devel

