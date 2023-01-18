#!/bin/bash

source variables.sh
. ./find_notes.sh
. ./find_languages.sh
. ./read_notes.sh
. ./mod_last_file.sh

FIND_LANGUAGES
FIND_NOTES $1
# if [[ "$1" == "-w" ]];
#     then
#     FIND_NOTES $2
#     MOD_LAST_FILE $2 $3
if [[ "$1" == "option" ]] || [[ "$1" == "options" ]] || [[ "$1" == "command" ]] || [[ "$1" == "command" ]];
     then
     echo "
        #####################
        ### Noti Commands ###
        #####################

noti -l : list all supported languages

noti rs ls : list all notes in rust

noti rs ls : list all notes in rust
     "
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
