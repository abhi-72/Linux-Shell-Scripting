#! /bin/bash

echo -e "Enter filename : \c"
read file_name
ext=0

write_to_file(){
	if [ -f $file_name ]
	then
		echo "$file_name already exists."
		echo "Do you want to append (A) or override (O) or quit (Q)"
		echo -e "Type (A/O/Q) : \c"
		read a_o
		if [[ "$a_o" = "A" ]]
		then
			echo "You choose to Append"
			echo "Enter your data and press ctrl+d to save and exit"
			cat >> $file_name
			ext=1
		elif [[ "$a_o" = "O" ]]
		then 
			echo "You choose to Override"
			echo "Enter your data and press ctrl+d to save and exit"
			cat > $file_name
			ext=1
		elif [[ "$a_o" = "Q" ]]
		then
			exit
		else
			echo "You have choosen wrong option"
		fi
	else
		echo "$file_name doesn't exist"
		echo -e "Do you want to create a new file $file_name (Y/N) : \c"
		read y_n
		if [[ "$y_n" = "Y" ]]
		then
			echo "You choose to Create"
			echo "Enter your data and press ctrl+d to save and exit"
			cat > $file_name
			ext=1
		elif [[ "$y_n" = "N" ]]
		then 
			echo "You choose not to create"
			ext=1
		else
			echo "You have choosen wrong option"
		fi
	fi 
}

while [ $ext -eq 0 ]
do
	write_to_file 
done
