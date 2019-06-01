#!/usr/bin/env bash
# File: makefile

README.md: guessinggame.sh
	echo "Guessing Game" > README.md
	date >> README.md
	egrep "\w" guessinggame.sh | wc -l >> README.md

