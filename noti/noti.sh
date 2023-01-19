#!/bin/bash 
# CHANGE THIS FIRST LINE IF YOU USE ZSH

source ~/code/noti/noti/variables.sh
. ~/code/noti/noti/find_notes.sh
. ~/code/noti/noti/find_languages.sh
. ~/code/noti/noti/find_definitions.sh
. ~/code/noti/noti/read_notes.sh
. ~/code/noti/noti/read_definitions.sh
. ~/code/noti/noti/mod_last_file.sh

FIND_DEFINITIONS
FIND_LANGUAGES
FIND_NOTES $1
echo "${DEFINITIONS_ARRAY[@]}"

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
    echo "in definition_array if"
    READ_DEFINITIONS $1
    exit
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
