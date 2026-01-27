#!/bin/bash
clear
user_answer=""

#objectGenerator=( "Puzzle" "Saw" "Surfboard" "Holly" "AvocadoTree" "Scanner" "Typewriter" "Nightstand" "Mint" "TapeMeasure" )



verify_answer(){
   #use a default value here $1
   passed_in_answer=$1 
   case $passed_in_answer in
      a | A)
         user_answer=A
         ;;
      b | B)
         user_answer=B
         ;;
      c | C)
         user_answer=C
         ;;
      d | D)
         user_answer=D
         ;;
      *) echo "not an available choice"  
         ;;
   esac
}

for_Math(){
   mathQuestions=( 
      "What is 6 * 8" 
      "What is 1/2 + 1/4" 
      "How many sides on a pentagon?" 
      "What is 90 divided by 9" 
      "What is the value of 3*2" 
   )
   mathMultipleChoice=(
      "A) 42 B) 64 C) 56 D) 48"
      "A) ½ B) ¾ C) 1 D) ¼" 
      "A) 4 B) 3 C) 5 D) 8"  
      "A) 10 B) 9 C) 11 D) 12" 
      "A) 6 B) 9 C) 12 D) 18" 
   )
   mathAnswers=("D" "B" "C" "A" "B")

   mathQuestion=0
   for mQ in "${mathQuestions[@]}"; do
      echo "$mQ"
      echo "${mathMultipleChoice[mathQuestion]}"
      read -p "What is the answer?: " math_answer
      verify_answer $math_answer
      answer="${mathAnswers[mathQuestion]}"
      if [[ $user_answer == $answer ]]; then
         echo ""
         echo " Good Job! you got it correct! "
         sleep 2
      else

         echo "You got it wrong. Try the next question"
         sleep 2
      fi
      ((mathQuestion++))
  done  
}

for_Science(){
   scienceQuestions=( 
   	"What planet is closest to the sun"
   	"Which part of the plant absorbs water"
   	"What gas do humans need to breathe"
   	"What state of matter is ice"
   	"Which animal is a mammal"
   )
   scienceMultipleChoice=(
      "A) Venus B) Earth C) Mercury D) Mars" 
      "A) Leaves B) Stem C) Roots D) Flower"
      "A) Air B) Oxygen C) Nitrogen D) Helium"
      "A) Solid B) Liquid C) Gas D) Plasma"
      "A) Frog B) Snake C) Dolphin D) Eagle"
   )
   scienceAnswers=( "C" "B" "B" "A" "B" )
   
   scienceQuestion=0
   for sQ in "${scienceQuestions[@]}"; do
   	echo "$sQ"
	   echo "${scienceMultipleChoice[scienceQuestion]}"
	   read -p "And you answer is?: " science_answer
	   answer= "${scienceAnswers[scienceQuestion]}"
	   if [[ $science_answer = $answer ]]; then
	   	 echo "Good Job punk! you got it correct!"
			 sleep 2
	   else
	   
	   	 echo  "Aw man. the correct answer was "${scienceAnswers[scienceQuestion]}". Try again next time"
			 sleep 2
	   fi
	   ((scienceQuestion++))
	done
}


for_Geography(){
   geographyQuestions=(
      "Which continent is Egypt located in" 
      "What is the largest ocean on Earth" 
      "What country is north of the United States" 
      "What is the capital of Japan" 
      "Which direction does the Sun rise from" 
   )
   geographyMultipleChoice=(
      "A) Europe B) Asia C) Africa D) South America"
      "A) Atlantic B) Indian C) Arctic D) Pacific"
      "A) Mexico B) Canada C) Brazil D) Russia"
      "A) Beijing B) Seoul C) Tokyo D) Bangkok"
      "A) North B) South C) East D) West"
   )
   geographyAnswers=( "C" "D" "B" "C" "C" )

   geographyQuestion=0
   for gQ in "${geographyQuestions[@]}"; do
      echo "$gQ"
      echo "${geographyMultipleChoice[geographyQuestion]}"
      read -p "And you answer is?: " geo_answer
      answer= "${geographyAnswers[geographyQuestion]}"
      if [[ $geo_answer = $answer ]]; then
            echo "Good Job punk! you got it correct!"
         sleep 2
      else
      
            echo  "Aw man. the correct answer was "${geographyAnswers[geographyQuestion]}". Try again next time"
         sleep 2
      fi
      ((geographyQuestion++))
   done
}

for_History(){

   historyQuestions=(
    "Who was the first President of the United States"
    "In what year did the U.S. declare independence" 
    "What ship did the Pilgrims sail on?"
    "Who was known as the “Father of the Constitution”?"
    "Which civilization built the pyramids?" 
   )
   historyMultipleChoice=(
      "A) Abraham Lincoln B) George Washington C) Thomas Jefferson D) John Adams"
      "A) 1492 B) 1776 C) 1865 D) 1914"
      "A) Santa Maria B) Titanic C) Mayflower D) Endeavour"
      "A) Benjamin Franklin B) James Madison C) John Hancock D) Alexander Hamilton"
      "A) Romans B) Greeks C) Egyptians D) Mayans"
   )
   historyAnswers=( "B" "B" "C" "B" "C" )
   historyQuestion=0
   for hQ in "${historyQuestions[@]}"; do
      echo "$hQ"
      echo "${historyMultipleChoice[historyQuestion]}"
      read -p "And you answer is?: " history_answer
      verify_answer $history_answer
      echo $user_answer
      sleep 2
      answer= "${historyAnswers[historyQuestion]}"
      if [[ $user_answer = $answer ]]; then
            echo "Good Job punk! you got it correct!"
         sleep 2
      else
      
            echo  "Aw man. the correct answer was "${historyAnswers[historyQuestion]}". Try again next time"
         sleep 2
      fi
      ((historyQuestion++))
   done
}

for_Sports(){
   sportsQuestions=( 
    " How many players are on a soccer team on the feild?"
    "What sport uses a tall hoop? "
    " How many points is a touchdown worth?" 
    "What sport is played at wimbeldon? "
    "In baseball, how many strikes make an out?" 
   )
   sportsMultipleChoice=(
      "A) 9 B) 10 C) 11 D) 12"
      "A) Soccer B) Baseball C) Basketball D) Hockey"
      "A) 3 B) 5 C) 6 D) 7"
      "A) Golf B) Tennis C) Soccer D) Cricket"
      "A) 2 B) 3 C) 4 D) 5"
   )
   sportsAnswers=( "D" "C" "C" "B" "B" )
   sportsQuestion=0
   for sQ in "${sportsQuestions[@]}"; do
      echo "$sQ"
      echo "${sportsMultipleChoice[sportsQuestion]}"
      read -p "And you answer is?: " sports_answer
      answer= "${sportsAnswers[sportsQuestion]}"
      if [[ $sports_answer = $answer ]]; then
         echo "Good Job punk! you got it correct!"
         sleep 2
      else
         echo  "Aw man. the correct answer was "${sportsAnswers[sportsQuestion]}". Try again next time"
         sleep 2
      fi
      ((sportsQuestion++))
   done
}

for_Trivia(){
   triviaQuestions=( 
      "What color do you get by mixing red and blue?" 
      "How many days are in a leap year?" 
      "Which animal is known as man’s best friend?"
      "What do bees make?" 
      "How many letters are in the English alphabet?" 
   )
   triviaMultipleChoice=(
      "A) Green B) Purple C) Orange D) Brown"
      "A) 365 B) 366 C) 364 D) 360"
      "A) Cat B) Horse C) Dog D) Rabbit"
      "A) Milk B) Honey C) Silk D) Wax"
      "A) 24 B) 25 C) 26 D) 27"
   )
   triviaAnswers=( "B" "B" "C" "B" "C")
   triviaQuestion=0
   for tQ in "${triviaQuestions[@]}"; do
      echo "$tQ"
      echo "${triviaMultipleChoice[triviaQuestion]}"
      read -p "And you answer is?: " trivia_answer
      answer= "${triviaAnswers[triviaQuestion]}"
      if [[ $trivia_answer = $answer ]]; then
         echo "Good Job punk! you got it correct!"
         sleep 2
      else
         echo  "Aw man. the correct answer was "${triviaAnswers[triviaQuestion]}". Try again next time"
         sleep 2
      fi
      ((triviaQuestion++))
   done
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

