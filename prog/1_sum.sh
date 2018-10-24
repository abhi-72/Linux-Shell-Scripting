#!/bin/bash

<<"COMMENT"
2.1 Write a shell script sum.sh that takes an unspecified number of command line arguments (up
to 9) of ints and finds their sum. Modify the code to add a number to the sum only if the number
is greater than 10
COMMENT

#To limit user not to enter more than 9 numbers
if [[ "$#" -gt "9" ]]
then 
    echo "Error: Input numbers count exceeds 9"
    exit
fi

#Calculating sum of numbers
sum=0
arr=()
for var in "$@"
do
    case $var in 
        [!0-9] )
	    arr+=($var) ;;
	* )
	    sum=$((var+sum))
    esac
done

#Ignoring which are not numbers
if [[ $arr ]]
then	
    echo "Invalid input(s): ${arr[@]}, ignored"
fi

#To print sum
echo sum=$sum
