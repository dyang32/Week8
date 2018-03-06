#!/bin/sh
#Rony Valle
#Chapter5 Script

#This script deals with the linux kelnel

# The followinf shows what has been happening to the cpu since boot

echo "==> What information about your system would you like to see?"
for i in cpu usb Grub kernel 
do
	echo "Type $i to view it's info"
done
echo
echo
read INFO

if [ "${INFO}" = cpu ]; then
	echo "==> This is the cpu info from the Kernel's ring buffer"
	dmesg | grep -i cpu | less
elif [ "${INFO}" = usb ]; then
	echo "==> This is the usb info from the Kernel's ring buffer"
	dmesg | grep -i usb | less
elif [ "${INFO}" = Grub ]; then
	echo "==> This is the Grub config file, it will open on a different window"
	xdg-open /boot/grub/grub.cfg
elif [ "${INFO}" = kernel ]; then
	echo "==> This are the kernel parameters from your system's boot"
	cat /proc/cmdline
else
	echo "==> Sorry that's not an option"
fi


