#!/bin/sh
#Rony Valle
#chapter2Script

#This script will create a directory and files within the directory will be 
#created and manipulated.

echo Good Afternoon!

echo What would you like to call your directory?

read RESPONSE

echo "==>Ok, your directory has been created and its called ${RESPONSE}"

mkdir "${RESPONSE}"

cd "${RESPONSE}"

echo "The following files have been automatically created for you:"

touch "${RESPONSE}_file1"
touch "${RESPONSE}_file2"

#We will take some contents from one of the etc files and place it in the above files

cat /etc/hosts > "${RESPONSE}_file1"
cat /etc/passwd > "${RESPONSE}_file2"
ls -l
echo
echo "==>Your current working directory is:"
pwd 
echo

# If statement to print to the screen the contents of the files that were created 

echo "==>would you like to see the contents of the files that were created?(Type Yes)"

read ACTION

if [ "$ACTION" = Yes ]; then
	 echo "==> ${RESPONSE}_file1"
         head -n 3 "${RESPONSE}_file1"
	 echo "==> ${RESPONSE}_file2"
         tail -n 10 "${RESPONSE}_file2" 
else
   echo "==>OK"
fi

#Delete file1 and rename file2 to Xfile 
  
echo
echo "==>One of your files has been deleted"

rm "${RESPONSE}_file1"
ls -l
echo
echo "==> ${RESPONSE}_file2 will now be called Xfile  "
mv "${RESPONSE}_file2" Xfile 
ls -l
echo
#if statement to either delete or not the directory that was created

echo "==> Would you like to delete the directory ${RESPONSE} along with all its files (Type Yes)"

read TYPE

if [ "$TYPE" = Yes ]; then
	cd ../
	rm -rf "${RESPONSE}"
	echo "The directory ${RESPONSE} and it's files are long gone!"
else
        echo "Please Manually Delete The Directory ${RESPONSE} and it's files"

fi 
