#! /bin/bash

<<"COMMENT"
-e ->
Enable the intrepretation of \c
checks if file exists or not
COMMENT

echo -e "Enter name of the file : \c"
read file_name

if [ -e $file_name ]
then 
    echo $file_name found
else
    echo $file_name not found
fi
