#!/bin/bash

echo -e "Bash version: ${BASH_VERSION%(*}\n"

my_dir=$(pwd)

echo "Number of minutes to practice: "

read num_min

re='^[0-9]+?$'

while ! [[ $num_min =~ $re ]]
do
	echo "Please enter a number: "
	read num_min
done

num_sec=$(( $num_min ))

sleep $num_sec && notify-send "Well done, time for a break!"

xdg-open "$my_dir/well_done.jpg" && sleep $(( 300 )) && notify-send "Time for another round..."

xdg-open "$my_dir/go_again.jpg" && exit 0

