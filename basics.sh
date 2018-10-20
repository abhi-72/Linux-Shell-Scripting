#! /bin/bash

#Special Variables
echo Hello World
echo Our shell name is :$BASH
echo Our shell version is :$BASH_VERSION
echo Our home directory :$HOME
echo Our present working directory :$PWD

#Declaring Variable
name=MARK
echo The name is :$name

#Read from input
echo Enter Username:
read user
echo Enter Password:
read -s pass
echo Username: $user, Password: $pass
#Prompt user input in the same line
read -p 'Username : ' user
read -sp 'Password : ' pass
echo Entered, $user:$pass

#Array and Inbuilt REPLY
echo 'Enter Array1 names : '
read -a names
echo ${names[0]}
echo 'Enter Array2 names : '
read -p 'Inbuilt REPLY value : '
echo $REPLY

#arguments from command line and number of arguments
echo 'Your arguments'
args=("$@")
echo ${args[0]} ${args[1]}
echo 'Number of arguments:' $#
