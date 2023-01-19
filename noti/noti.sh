#!/bin/bash 
# CHANGE THIS FIRST LINE IF YOU USE ZSH

source ~/code/noti/noti/variables.sh
. ~/code/noti/noti/find_notes.sh
. ~/code/noti/noti/find_languages.sh
. ~/code/noti/noti/find_definitions.sh
. ~/code/noti/noti/read_notes.sh
. ~/code/noti/noti/mod_last_file.sh

# I want find_definition method to
# create an array with all .txt in noti/definitions

FIND_LANGUAGES
FIND_DEFINITIONS
if [[ "${DEFINITIONS_ARRAY[*]}" =~ "$1" ]];
    then
         echo "Dictionary includes: "
         for i in "${DEFINITIONS_ARRAY[@]}";
         do
             echo "$i";
         done
         exit
else
    FIND_NOTES $1
fi

# FIND_NOTES $1
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
# elif [[ "${DEFINITIONS_ARRAY[*]}" =~ " $1 " ]];
#     then
#          echo "Dictionary includes: "
#          for i in "${DEFINITIONS_ARRAY[@]}";
#          do
#              echo "$i\n";
#          done
elif [[ "$1" == "-l" ]];
     then
         echo "Supported languages: "
         for i in "${LANGUAGE_ARRAY[@]}";
         do
             echo "$i - ${LANGUAGES[$i]}";
         done
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
