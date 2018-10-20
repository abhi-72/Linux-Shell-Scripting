#! /bin/bash

n1=20.5
n2=5

#Arithmetic Operations using bc
echo "$n1+$n2" | bc
echo "$n1/$n2" | bc
echo "$n1%$n2" | bc

#Scale -> To set decimal places
echo "scale=1;$n1/$n2" | bc
echo "scale=2;sqrt($n1)" | bc -l

#doest accept n2 bcz its not integer
echo $((n2+6))
