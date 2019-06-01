#!/usr/bin/env bash
# File: makefile

README.md: guessinggame.sh
	echo "## Title: Guessing Game" > README.md
	echo "\n**The time and date README.me was created was**: " >> README.md
	date >> README.md
	echo "\n**The number of lines of code in guessinggame.sh is**: " >> README.md
	egrep "\w" guessinggame.sh | wc -l >> README.md

