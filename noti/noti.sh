#!/bin/bash 
# CHANGE THIS FIRST LINE IF YOU USE ZSH

# All find methods, in seperate files
source ~/code/noti/noti/startup.sh

FIND_DEFINITIONS
FIND_LANGUAGES
FIND_CLI
FIND_NOTES $1

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

TWELVE_FILES=("aa" "syn" "var" "con" "fun" "loo" "cas" "bug" "typ" "pac" "cli" "mor" "zz")

# if $1 is in supported languages
# and $2 is in twelve_files,
# cat or more $1.txt file in the right language folder.

# else, print "no such file"
