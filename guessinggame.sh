#! /usr/bin/env bash
# File: Guessing Game for Unix Homework

trying=true
correctanswer=$(ls | wc -l)

compare () {
	answer=$response-$correctanswer
}

	
while [[ $trying = true ]]
do
	echo "Guess the number of files in the current directory."
	read response
	compare
	if [[ $answer -gt 0 ]]
	then
		echo "Too high! Try again!"
	elif [[ $answer -lt 0 ]]
	then 
		echo "Too low! Try again!"
	else
		echo "Congratulations! Correct."
		trying=false
	fi
done

