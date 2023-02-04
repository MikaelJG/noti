#!/bin/bash 
# CHANGE THIS FIRST LINE IF YOU USE ZSH

# All find methods, in seperate files
source ~/code/noti/noti/startup.sh

FIND_DEFINITIONS
FIND_LANGUAGES
FIND_CLI
FIND_NOTES $1

# if [[ "$1" == "-w" ]];
#     then
#     FIND_NOTES $2
#     MOD_LAST_FILE $2 $3
if [[ "${COMMANDS[*]}" =~ " $1 " ]];
     then
     echo "
        #####################
        ### Noti Commands ###
        #####################
---------------------------------------------

  noti -l : list all supported languages
       -w : write note in last modified file 
    rs ls : list all notes in rust

---------------------------------------------
     "
elif [[ "${DEFINITIONS[*]}" =~ " $1 " ]];
    then
         echo "Dictionary includes: "
         for i in "${DEFINITIONS_ARRAY[@]}";
         do
             echo "$i";
         done
elif [[ "$1" == "-l" ]];
     then
         echo "Supported languages: "
         for i in "${LANGUAGE_ARRAY[@]}";
         do
             echo "$i - ${LANGUAGES[$i]}";
         done
elif [[ "${DEFINITIONS_ARRAY[*]}" =~ " $1 " ]];
    then
    READ_DEFINITIONS $1
    exit
elif [[ "${CLI_ARRAY[*]}" =~ " $1 " ]];
    then
    READ_CLI $1
    exit
elif [[ "${LOVE[*]}" =~ " $2 " ]] && [[ "$1" == "love" ]];
    then
    cat ~/code/noti/gamedev/love2d/$2.txt
    
elif [[ "${LANGUAGE_ARRAY[*]}" =~ " $1 " ]] && [[ "$2" != "ls" ]];
     then
     FIND_NOTES $1
     READ_NOTES $1 $2
elif [[ "${LANGUAGE_ARRAY[*]}" =~ " $1 " ]] && [[ "$2" == "ls" ]];
    then
    echo "${NOTES_ARRAY[@]}"
else
     echo "language not supported"
fi

# new architecture for Noti
# 12 files system

# syn
# var
# con
# fun
# loo
# cas
# bug
# typ
# pac
# cli
# mor
# set - for set-up or install requirements

# personalize it with your favorite lang
# then implement the 12 files


