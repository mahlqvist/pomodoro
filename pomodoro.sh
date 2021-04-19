#!/bin/bash

echo -e "Bash version: ${BASH_VERSION%(*}\n"

img_dir=$(pwd)

echo "Number of minutes to practice: "

read num_min

re='^[0-9]+?$'

while ! [[ $num_min =~ $re ]]
do
	echo "Please enter a number: "
	read num_min
done

num_sec=$(( $num_min * 60 ))

sleep $num_sec && notify-send "Well done, time for a break!"

xdg-open "$img_dir/well_done.jpg" && sleep $(( 300 )) && notify-send "Time for another round?"

xdg-open "$img_dir/go_again.jpg" && exit 0

