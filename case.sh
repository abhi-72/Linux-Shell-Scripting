#! /bin/bash

#Syntax of Case
#case expression in 
#    pattern1 )
#        statements ;;
#    pattern2 )
#        statements ;;
#    ...
#esac

echo -e "Enter a character"
read char

case $char in
    [a-z] )
        echo "Entered character is an alphaber (smaller case)" ;;
    [A-Z] )
        echo "Entered character is an alphaber (Bigger case)" ;;
    [0-9] )
        echo "Entered character is number" ;;
    ? )
        echo "Entered character is Special Character" ;;
    * )
        echo "Input exceeds character length" ;;
esac
