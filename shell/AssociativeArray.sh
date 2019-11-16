#!/bin/bash

declare -A musics=(
	["ultra soul"]="2001"
	["OCEAN"]="2005"
	["BANZAI"]="2004"
	["RED"]="2015"
	)

for music in "${!musics[@]}"; do
    echo "${music}:${musics[${music}]}"
done

