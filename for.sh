#!/bin/bash

#for i in 1 2 3 4 5
#for i in {1..5}
#{start..end..increment}
#for i in {1..10..2}

for (( i=1; i<=5; i++ ))
do
	echo $i
done


for item in *
do
    if [ -f $item ]
    then
        echo $item
    fi
done
