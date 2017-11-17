#!/usr/bin/env bash

# How to change the output color of echo in Linux:
# https://stackoverflow.com/questions/5947742/how-to-change-the-output-color-of-echo-in-linux#5947802

# `echo -e` is used to apply Escape-codes

# Defines escape codes of colours
red='\033[0;31m'
green='\033[0;32m'
blue='\033[0;34m'
nc='\033[0m'	# No Color

# Shows `escaped` message
function ShowMsg {
	echo -e "$*"
}

# Counts regular files in the current directory
fnum=$(ls -F | grep -vc /)

echo -e "Please, guess how many files are in the current directory ${blue}$PWD${nc}"

while true
do
	read -p "Your guess is: " answer

	if [[ ! $answer =~ ^[0-9]+$ ]]; then
		ShowMsg "Isn't a number! Try again."
		continue
	fi

	if [[ $answer -gt $fnum ]]; then
		ShowMsg "The number is too ${red}high${nc}."
	elif [[ $answer -lt $fnum ]]; then
		ShowMsg "The number is too ${red}low${nc}."
	else
		ShowMsg "Congratulations! You are ${green}right!${nc}"
		exit 0
	fi
done
