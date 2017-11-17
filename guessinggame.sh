#!/usr/bin/env bash

# Counts regular files in the current directory
fnum=$(ls -F | grep -vc /)

echo "Please, guess how many files are in the current directory $PWD"

while true
do
	read -p "Your guess is: " answer

	if [[ ! $answer =~ ^[0-9]*$ ]]; then
		echo "Isn't a number! Try again."
		continue
	fi

	if [[ $answer -gt $fnum ]]; then
		echo "The number is too high."
	elif [[ $answer -lt $fnum ]]; then
		echo "The number is too low."
	else
		echo "Congratulations! You are right!"
		exit 0
	fi
done
