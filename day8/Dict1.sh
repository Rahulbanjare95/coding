#!/bin/bash -x


declare -A sounds
sounds[dog]="bark"
sounds[cow]="moo"
sounds[bird]="tweet"
sounds[wolf]="howl"

#echo "Dog sound " ${sounds[dog]} #Dog's sound
echo "All Animals sounds " ${sounds[@]} #all Values
#echo "Animal " ${!sounds[@]}	#ALL KEYS
#echo "Number Of animals" ${#sounds[@]}	# Number of elements

#unset sounds[dog] #Delete dog
#echo ${!sounds[@]} #Animals After deletion
#echo ${#sounds[@]}	#nu of animals left after Deletion
#unset sounds[dog] sounds[cow]

