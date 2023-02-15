#!/bin/bash 
# CHANGE THIS FIRST LINE IF YOU USE ZSH

NOTES_D=~/code/noti/notes
READ_D=~/code/noti/noti

if [[ "$1" == "-c" ]];
     then
     echo "
        #####################
        ### Noti Commands ###
        #####################
---------------------------------------------

  noti -l : lists all supported Languages
  noti -d : counts definitions in Dictionnary 
  noti -t : lists all supported tools in Tools 
  noti -x : counts linux notes in Linux 

   -- in progress -- noti rs ls : list all notes in rust

---------------------------------------------
     "
elif [[ "$1" == "-d" ]];
     then
     NUM_D=$(ls ${NOTES_D}/dictionary | wc -l)
         echo "
    Currently, your Noti has $NUM_D definitions!
         "
elif [[ "$1" == "-l" ]];
     then
     LANGUAGES=$(ls ${NOTES_D}/languages)
         echo " 
    Currently, your Noti supports:

$LANGUAGES
         "
elif [[ "$1" == "-t" ]];
     then
     TOOLS_N=$(ls ${NOTES_D}/tools)
         echo " 
    Currently, your Noti supports:

$TOOLS_N
            "

elif [[ "$1" == "-x" ]];
     then
     NUM_LINUX_N=$(ls ${NOTES_D}/linux | wc -l)
         echo " 
    Currently, your Noti has $NUM_LINUX_N notes on Linux! 
            "
else 
    if [[ " $2 " -eq 0 ]]; 
        then
        $READ_D/read_.sh $2 $1
    else
        $READ_D/read_.sh $1 $2
    fi
fi

