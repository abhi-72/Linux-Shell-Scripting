#!/bin/bash

#Input Re-direction
#while read p
#do
#    echo $p
#done < readfile.sh

#cat readfile.sh | while read p
#do
#    echo $p
#done

#Internal field Seperator -> how to do word splitting
while IFS= read -r line
do
    echo $line
done < readfile.sh
