#!/bin/bash

echo -e "Bash version: ${BASH_VERSION%(*}\n"

img_dir=$(pwd)

while true
do		
	echo "Number of minutes to practice: "
	read num_min
	re='^[0-9]+?$'

	while ! [[ $num_min =~ $re ]]
	do
		echo "Please enter a number: "
		read num_min
	done

	num_sec=$(( $num_min * 60 ))

	sleep $num_sec && notify-send "Time for a 5 min break!"

	xdg-open "$img_dir/well_done.jpg"
	
	sleep 300 && xdg-open "$img_dir/go_again.jpg"

	echo "Another round [y] or [n]"
	read ans
	regex='[Nn]'
	if [[ $ans =~ $regex ]]
	then
		exit 0
	fi	
done

