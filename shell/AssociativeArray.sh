#!/bin/bash

# set
declare -A musics=(
	["ultra soul"]="2001"
	["OCEAN"]="2006"
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

echo "# -n option"
if [ -n "${musics["ultra soul"]}" ]; then
    echo "exist"
fi
if [ -n "${musics["GIFT"]}" ]; then
    echo "not exist"
fi

echo "# -z option"
if [ -z "${musics["ultra soul"]}" ]; then
    echo "exist"
fi
if [ -z "${musics["GIFT"]}" ]; then
    echo "not exist"
fi

# for
echo "# for key loop"
for music in "${!musics[@]}"; do
    echo "${music}"
done

echo "# for value loop"
for music in "${musics[@]}"; do
    echo "${music}"
done

echo "# for key/value loop"
for music in "${!musics[@]}"; do
    echo "${music}:${musics[${music}]}"
done
# echo "${!musics[*]}"
# echo "${!musics[@]}"
# for music in "${musics[*]}"; do
#     echo "${music}"
# done
