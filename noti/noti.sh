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

  noti -l : lists all supported languages
  noti -d : counts definitions in Dictionnary 
  noti -t : counts tools notes in Tools 

  noti  rs ls : list all notes in rust

---------------------------------------------
     "
elif [[ "$1" == "-d" ]];
     then
     NUM_D=$(ls ../dev_notes/dictionary | wc -l)
         echo "
    Currently, your Noti has $NUM_D definitions
         "
elif [[ "$1" == "-l" ]];
     then
     LANGUAGES=$(ls ../dev_notes/languages)
         echo " 
    Currently, your Noti supports:

$LANGUAGES
         "
elif [[ "$1" == "-t" ]];
     then
     TOOLS_N=$(ls ../dev_notes/tools)
         echo " 
    Currently, your Noti supports:

$TOOLS_N
            "
else 
  ./read_.sh $1 $2
fi

