#!/usr/bin/env bash
#Feedback form

blink="\033[5;30;47m"
normal="\033[0m"
black="\033[30;47m"
m=0
time=$(printf "%(%Y-%m-%d %H:%m)T")
file="file_$time"
echo "File created at $time" > "$file"
printf "%20s \t %20s \t %20s \n" "Name" "Roll number" "Feedback" >> "$file"  
while (($m<1))
do
	echo -e "$blink User Data$normal"
	read -p "Enter your name [Single Word]: " name 
	read -ep "Enter your roll number: " -i "19711A04" roll
	read -p "Enter your feedback: " fb
	while [[ -z $fb ]]
	do
		echo " $black This section is compulsory! $normal"
		read -p "Enter your feedback: " fb
	done
	printf "%20s \t %20s \t %20s \n" $name $roll $fb >> "$file"  
	echo "Your feedback is taken successfully and written"
	echo "Another feedback is taken in 3 sec"
	echo "PRESS CTRL(^) + C TO TERMINATE"
	sleep 3
	clear
done
