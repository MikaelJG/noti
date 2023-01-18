#!/bin/bash

source variables.sh
. ./find_notes.sh
. ./find_languages.sh

FIND_LANGUAGES
if [[ "$1" == "-w" ]];
    then
    FIND_NOTES $2
    MOD_LAST_FILE $2 $3
elif [[ "$1" == "option" ]] | 
elif [[ "$1" == "-l" ]];
    then
        echo "Supported languages: "
        for i in "${LANGUAGE_ARRAY[@]}";
        do
            echo "$i - ${LANGUAGES[$i]}";
        done
elif [[ "${LANGUAGE_ARRAY[*]}" =~ " $1 " ]];
    then
    FIND_NOTES $1
    READ_NOTES $1 $2
else
    echo "language not supported"
fi
