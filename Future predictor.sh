#!/usr/bin/env bash

#colors
bw="\033[5;34;47m"
no="\033[0m"
m=0
wb="\033[37;40m"
b="\033[5m"

while ((m==0))
do
echo -e "$bw FuTure PreDictions $no"
echo "Press Ctrl + C [^+C] to Stop"
read -p "Enter any anything: " var
load=$(($RANDOM%4))
pred=$(($RANDOM%6))

case $load in
	1)echo Loading...;;
	2)echo Looking into you FuTure;;
	3)echo Patience is key to success;;
	4)echo Wait a sec!!!;;
esac
sleep 3
case $pred in
	1)echo -e "$wb You day will shine like star $no";;
	2)echo -e "$wb Avoid coffee $no";;
	3)echo -e "$wb Drink more water $no";;
	4)echo -e "$wb Don't binge Netflix $no";;
	5)echo -e "$wb Take a break from work, Meet family and friends $no";;
	6)echo -e "$wb Stay tough! $no";;
esac
echo -e "$b Another prediction starts in 5 Seconds$no"
sleep 5
clear
done
