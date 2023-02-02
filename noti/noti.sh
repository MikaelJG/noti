#!/bin/bash # CHANGE THIS FIRST LINE IF YOU USE ZSH

# All find methods, in seperate files
source ~/code/noti/noti/variables.sh
. ~/code/noti/noti/find_notes.sh
. ~/code/noti/noti/find_languages.sh
. ~/code/noti/noti/find_definitions.sh
. ~/code/noti/noti/find_cli.sh
# All read methods, in seperate files
. ~/code/noti/noti/read_notes.sh
. ~/code/noti/noti/read_definitions.sh
. ~/code/noti/noti/read_cli.sh
# . ~/code/noti/noti/read_frameworks.sh
# . ~/code/noti/noti/read_libraries.sh
# The modify last file methods, in a seperate file
#. ~/code/noti/noti/mod_last_file.sh

LOVE=( "aa" "animation" "background" "basics" "character" "conversation" "coordinates" "engine" "map" "object" "sign" "sprite" "zz")

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


