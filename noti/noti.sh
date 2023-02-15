#!/bin/bash 
# CHANGE THIS FIRST LINE IF YOU USE ZSH


# TO DO

# extract all files from languages, for a long list. 
# use new alias mv all out, in work and .bashrc

if [[ "$1" == "-c" ]];
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
elif [[ "$1" == "-l" ]];
     then
         echo "Supported languages: "
         for i in "${LANGUAGE_ARRAY[@]}";
         do
             echo "$i - ${LANGUAGES[$i]}";
         done
elif [[ "$1" == "-d" ]];
     then
     NUM_D=$(ls ../dev_notes/dictionary | wc -l)
         echo "
    Currently, your Noti has $NUM_D definitions
         "

elif [[ "$1" == "-t" ]];
     then
         echo "Supported languages: "
         for i in "${LANGUAGE_ARRAY[@]}";
         do
             echo "$i - ${LANGUAGES[$i]}";
         done
else 
  ./read_.sh $1 $2
fi

