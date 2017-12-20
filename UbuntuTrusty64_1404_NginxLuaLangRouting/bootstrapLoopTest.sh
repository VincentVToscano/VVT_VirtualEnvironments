#!/bin/sh

#  bootstrapLoopTest.sh
#  
#
#  Created by Vincent on 12/12/14.
#
repos_array=("ibm-us-open-2014" "land-rover-beyond-epic-2014.git" "Google-360" "airbnb-interactiveMap-2014" "airbnb-oneLessStranger-2014")

for index in ${!repos_array[*]};

do

#printf "%4d: %s\n" $index ${repos_array[$index]}

indexWithColor="\033[42m$index\033[0m"

printf "\033[42m$index ${repos_array[$index]} \033[0m\n"

#printf "\e[40;38;5;82m Hello \e[30;48;5;82m World \e[0m\n"
#printf "\e[31m\e[43m World \e[0m\n"%n
echo "▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒"
done
echo "\n\n                 