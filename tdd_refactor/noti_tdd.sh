#!/bin/bash

source variables.sh
. ./find_notes.sh
. ./find_languages.sh

# echo "${NOTES_ARRAY[@]}"
# echo "${LANGUAGE_ARRAY[@]}"

# FIND_LANGUAGES
# if [[ "$1" == "-w" ]];
#     then
#     FIND_NOTES $2
#     MOD_LAST_FILE $2 $3
# elif [[ "$1" == "option" ]] || [[ "$1" == "options" ]] || [[ "$1" == "command" ]] || [[ "$1" == "command" ]];
#     then
#     echo "in options"
# elif [[ "$1" == "-l" ]];
#     then
#         echo "Supported languages: "
#         for i in "${LANGUAGE_ARRAY[@]}";
#         do
#             echo "$i - ${LANGUAGES[$i]}";
#         done
# elif [[ "${LANGUAGE_ARRAY[*]}" =~ " $1 " ]];
if [[ "${LANGUAGE_ARRAY[*]}" =~ " $1 " ]];
     then
     FIND_NOTES $1
fi
#     FIND_NOTES $1
#     READ_NOTES $1 $2
# else
#     echo "language not supported"
# fi
