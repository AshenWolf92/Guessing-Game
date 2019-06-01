#!/user/bin/env bash
# File: guessinggame.sh

function guessinggame {
	guessedcorrectly=1
	correctanswer=$(ls -1 | wc -l)
	
	echo "Welcome to the guessing game."
	echo "How many files are in the current directory?"

	while [[ $guessedcorrectly -eq 1 ]]
	do
		read userguess
		if ! [[ $userguess =~ [0-9] ]]
		then
			echo "Input was not a whole number, please try again."
		elif [[ $userguess -gt correctanswer ]]
		then
			echo "Sorry, please guess lower."
		elif [[ $userguess -lt correctanswer ]]
		then
			echo "Sorry, please guess higher."
		elif [[ $userguess -eq correctanswer ]]
		then
			let guessedcorrectly=0
			echo "Congrats! You guessed correctly."
		else
			echo "Unrecognized input, please enter a number."	
		fi
	done
}

guessinggame
