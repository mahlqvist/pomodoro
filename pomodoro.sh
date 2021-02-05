#!/bin/bash

echo -e "Bash version: ${BASH_VERSION%(*}\n"

echo "Number of minutes to practice: "

read num_min

re='^[0-9]+$'

while ! [[ $num_min =~ $re ]]
do
	echo "Please enter a number: "
	read num_min
done

num_sec=$(( $num_min * 60 ))

sleep $num_sec && notify-send "Well done, time for a break!"

echo -e "Another round?\n"

xdg-open "well_done.jpg" && exit 0
