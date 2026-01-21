#!/bin/bash
clear



for_Math(){

	echo "Time for the 1st Math Question!"
	sleep 2
	echo ""
	echo -e "What is 6 * 8 ?
		a) 42 b) 48 c) 56 d) 64
	"
	sleep 2
	read -p "Put your answer here ( a - d ): " answer
	if [[ $answer == "b" || $answer == "b" ]]; then
		echo ""
		echo "Congratulations! you got it right!"
	elif [[ $answer == "a" || $answer == "A" || $answer == "c" || $answer == "C" || $answer == "d" || $answer == "D" ]]; then
		echo ""
		echo "Whelp. The right answer was b) 48" 
	fi

	echo "2nd Question! Lets see if you get it on the first try!"
	sleep 2
	echo "" 
	echo -e "
	"	
}  


for_Science(){
	:
}

for_Geography(){
	:
}

for_History(){
	:
}

for_Sports(){
	:
}

for_Trivia(){
	:
}

for_Exit(){
	echo "Thanks for playing my game bro! "
	sleep 2
	exit 
}


for_Menu(){

	echo -e "
	 Our Subjects are;
	 1) Mathematics
	 2) Science 
	 3) Geography
	 4) History
	 5) Sports
	 6) Trivia 
	 7) Exit 
	"
    echo ""

	read -p "What Subject would you like to be tested on? (1-6): " answer

	case $answer in
	 1) for_Math ;;
	 2) for_Science ;;
	 3) for_Geography ;;
	 4) for_History ;;
	 5) for_Sports ;;
	 6) for_Trivia ;;
	 7) for_Exit ;;
	 *) echo "Please pick between 1 and 6" ;;
    esac

    echo ""
    for_Menu
}

echo -e "
 Welcome to: Are You Smarter Than a 5th Grader?
    - - - - - - - - - -- - -- - -- - -- - - -- -        
 Want to know how smart you really are? Lets find out! 
"
for_Menu