#!/bin/bash

# set
declare -A musics=(
	["ultra soul"]="2001"
	["OCEAN"]="2006" # ああ
	["BANZAI"]="2004"
	["RED"]="2015"
	["GIFT"]="2008"
)

musics["ARIGATO"]="2004"
musics["OCEAN"]="2005"
unset musics["GIFT"]

# read
echo "${musics["ultra soul"]}"
echo "count:${#musics[@]}"

# for
for music in "${!musics[@]}"; do
    echo "${music}:${musics[${music}]}"
done

