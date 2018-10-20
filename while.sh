#! /bin/bash

echo -e "Enter start value : \c"
read start
echo -e "Enter limit value : \c"
read limit 
if [ $start -gt $limit ]
then 
    echo "Invalid start and limit values"
else
    while [ $start -le $limit ]
    do
        echo "$start"
        #start=$(( start +1 ))
        (( ++start ))
    done
fi
