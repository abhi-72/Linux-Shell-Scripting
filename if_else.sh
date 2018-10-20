#! /bin/bash

# If Syntax
#if []
#then 
#    statement
#fi

count=11
name='abhi'

if [ $count -eq 10 ]
then
    echo Equals to 10
elif [ $count -gt 10 ]
then
    echo greater than 10
else
    echo Not Equals to 10
fi

if [ $name = 'adbhi' ]
then 
    echo Equals to abhi
else
    echo Not Equals to abhi
fi
