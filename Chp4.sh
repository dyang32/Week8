#!/bin/sh
#Rony Valle Lopez
#chapter4 Script

#The following script allows you to gather all the needed information to
#formatt a particular USB or HDD be careful not to format the disk where 
#your computer boots from.

echo "==> Hello, please enter your password to see your connected devices "
echo
sudo fdisk -l
echo
echo "==> would you like to make a partition on a storage device using the fdisk utility?" 
echo "==> If Yes type the device's name(example: /dev/sdb ), typing No will move forwards with the script"
echo

read MANAGE

if [ "${MANAGE}" != "No" ]; then

	echo "==> The name of the device is ${MANAGE}"
	echo "==> follow the fdisk program instructions, BE EXTRA CAREFUL!"
	umount "${MANAGE}"
	sudo fdisk "${MANAGE}"
else
	echo "==> We will move forwards"
fi

echo "==> Would you like to formatt the newly manage device with mkfs using the ext4 filesystem?"
echo "==> Type Yes to formatt or No to move forwards with the script"
# issues on this loop: i dont know if the variable MANAGE will be the same as the new partition.
# because it could be for example /dev/sdb2/ instead of just /dev/sdb
read ANSWER

if [ "$ANSWER" = Yes ]; then
	echo "great! we will now format your new partition located on the device: ${MANAGE}"
	sudo mkfs -t ext4 "${MANAGE}"
	mount -t ext4 "${MANAGE}" /home/manage
else 
	echo "==> You have no use for these script"
	echo  "==> Available space in your connected devices is:"
	df
fi

