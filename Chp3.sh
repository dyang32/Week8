#!/bin/sh
#Rony Valle
#chapter 3
#This is my script for chapter3 which deals with devices
# We will monitor how the kernel and udev communicate using uevents when a USB is connected to the computer.

echo "If you would like to see what happens when we try to write random stuff to the /dev/full file (type Yes)"

#if statement to either write to the /dev/full file or continue with the script
read TYPE
if [ "$TYPE" = Yes ]; then
	echo "==>You will always receive This error message"
	echo
	dd if=/dev/urandom of=/dev/full bs=100 count=1
	echo
else
	echo "==> Your lost!"
fi

# Lets you see what uevents when a USB is either connected or disconnected form your compter
echo
echo  "==> Please insert a USB NOW!"
echo "   You will see how the kernel and udev communicate when a USB is connected to the computer"
echo "==> To exit press Ctrl c"
	udevadm monitor 

