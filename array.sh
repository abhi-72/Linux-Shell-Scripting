
#Array values,length,number of elements
os=('ubuntu' 'mac' 'windows')

#Add values into array for particular index
os[5]='fedora'
os[6]='centos'

#Add values without specifying index
os+=('msdos')

#To remove value at particular index
#unset os[6]

#To print entire array
echo "${os[@]}"
#To print first element of array
echo "${os[0]}"
#Print value assgigned to a index in array where index isn't present
echo "${os[4]}"
#To print all indexes of array
echo "${!os[@]}"
#To print number of element in a array
echo "${#os[@]}"

