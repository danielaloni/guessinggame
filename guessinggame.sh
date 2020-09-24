#!/usr/bin/env bash
# File: guessinggame.sh

# This simple program ask the user to guess the number of 
# files in the current directory.

# The following variable gives the number of files. 
# ls -p is adding / to directories. 
# This is piped into egrep -v / which outputs only files (not directories). 
# This is piped into wc -l which counts the number of files.


number_of_files=$(ls -p | egrep -v / | wc -l)

echo "Please guess the number of files in this directory:"
read usr_input

while [[ $usr_input -ne $number_of_files ]]
do
	if [[ $usr_input -gt $number_of_files ]]
		then
		echo "This is too high. Please try again:"
		read usr_input
	else
		echo "this is too low. Please try again:"
		read usr_input
	fi
done
echo "Congrats! Indeed there are $usr_input files in this directory."

echo
echo "               \|/ ____ \|/       	"
echo "                @~/ ,. \~@        	"
echo "               /_( \__/ )_\       	"
echo "                  \__U_/     		"
echo
