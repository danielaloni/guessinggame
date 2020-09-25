#!/usr/bin/env bash
# File: guessinggame.sh

# This simple program ask the user to guess the number of 
# files in the current directory.

function guessinggame {
local number_of_files=$(ls -p | egrep -v / | wc -l)
local positive_integer='^[0-9]$'

echo "Please guess the number of files in this directory:"
read usr_input


while [[ ! $usr_input =~ $positive_integer ]] || [[ $usr_input -ne $number_of_files ]] 
do
	if [[ ! $usr_input =~ $positive_integer  ]]
		then
		echo "This is not a positive integer. It does not make sense.  Please try again"
		read usr_input
	elif [[ $usr_input -gt $number_of_files ]]
		then
		echo "This is too high. Please try again:"
		read usr_input
	else
		echo "this is too low. Please try again:"
		read usr_input
	fi
done

if [[ $usr_input -eq $number_of_files ]]
then
echo "Congrats! Indeed there are $usr_input files in this directory."
echo
echo "               \|/ ____ \|/       	"
echo "                @~/ ,. \~@        	"
echo "               /_( \__/ )_\       	"
echo "                  \__U_/     		"
echo
else 
echo "Error"
fi
}

guessinggame
