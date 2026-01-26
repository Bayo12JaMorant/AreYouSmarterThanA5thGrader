#!/bin/bash
clear


#objectGenerator=( "Puzzle" "Saw" "Surfboard" "Holly" "AvocadoTree" "Scanner" "Typewriter" "Nightstand" "Mint" "TapeMeasure" )

scienceQuestions=( "What planet is closest to the sun" "Which part of the plant absorbs water" "What gas do humans need to breathe" "What state of matter is ice" "Is a snake a mammal" )
geographyQuestions=( "Which continent is Egypt located in" "What is the largest ocean on Earth" "What country is south of Canada" "What is the capital of Japan" "Which direction does the Sun rise from" )
historyQuestions=( "Who was the first President of the United States" "In what year did the U.S. declare independence" "" )
sportsQuestions=( " How many players are on a soccer team on the feild?" "What sport uses a tall hoop? " " How many points is a touchdown worth?" "What sport is played at wimbeldon? " "In baseball, how many strikes make an out?" )
triviaQuestions=( "What color do you get by mixing red and blue?" "How many days are in a leap year?" "Which animal is known as “man’s best friend”?" "What do bees make?" "How many letters are in the English alphabet?" )
  
for_Math(){
   mathQuestions=( " What is 6 * 8" "What is 1/2 + 1/4" "How many sides on a pentagon?" "What is 90 divided by 9" "What is the value of 3*2" )
   mathMultipleChoice=(" A) 42 B) 64 C) 56 D) 48"    "A) ½ B) ¾ C) 1 D) ¼"   "A) 4 B) 3 C) 5 D) 8"  "A) 10 B) 9 C) 11 D) 12"   "A) 6 B) 9 C) 12 D) 18" )
   mathAnswers=("D" "B" "C" "A" "B")

   mathQuestions=0
   for mQ in "${mathQuestions[@]}" do
       echo "mQ"
       echo "${mathMultipleChoice[mathQuestions]}"
       read -p "What is the answer?: " answer
       if [[ $answer == "${mathAnswers[i]}" ]]; then
           echo " Good Job! you got it correct! "
           sleep 2
      else
          "You got it wrong. Try the next question "
          sleep 2
       fi
       ((mathQuestions++))
  done  
}

for_Science(){
   scienceQuestions=( "What planet is closest to the sun" "Which part of the plant absorbs water" "What gas do humans need to breathe" "What state of matter is ice" "Is a snake a mammal" )
   scienceMultipleChoice=(
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

for_Start(){
  echo -e "
 Welcome to: Are You Smarter Than a 5th Grader?
    - - - - - - - - - -- - -- - -- - -- - - -- -        
 Want to know how smart you really are? Lets find out! 
"
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

  for_Menu 
}

for_Start
for_Menu

