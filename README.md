# Week8
Pre-MidTerm

This directory holds all my shellscripts for week8 

Chp2.sh:
	This script creates a directory and 2 files. The 2 files created hold the output of
the /etc/hosts and /etc/passwd configuration files. The cat command was use to place this information into the generated files instead of having the cat command output the
/etc files info to stdout the redirection character > was use to rederected to said generated files.An if statement is created to ask the user if they what the info to be display in the stdout
using the head and tail commands only a couple of lines of each file is displayed.
Later one of the files gets deleted and another gets renamed. The last thing is another
if statement asking if the user wants the script to delete the derectory and its files, this is done if the user answers Yes if the user answers no or anything other than Yes an echo
message states that you must manually delete the directory and the files. 
the command rm -rf dirName will delete the directory and all the files within.

