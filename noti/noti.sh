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

  noti -a : display Noti's architecture 
  noti -d : counts definitions in Dictionnary 
  noti -e : edit a note, anywhere 
  noti -l : lists all supported Languages
  noti -t : lists all supported tools in Tools 
  noti -wd: write a new definition in Dictionnary
  noti -wl: write a new note in Languages
  noti -wt: write a new note in Tools
  noti -wx: write a new note in Linux
  noti -x : counts linux notes in Linux 

   -- in progress -- noti rs ls : list all notes in rust

---------------------------------------------
     "
elif [[ "$1" == "-a" ]];
     then
         echo "
# Noti assumes this architecture for notes

    Notes  
      |
      ------ definitions
      |
      ------ languages
      |           |
      |           ---- cs
      |           ---- py
      |           ---- rb 
      |                etc 
      ------ linux
      |
      ------ tools
         "
elif [[ "$1" == "-d" ]];
     then
     NUM_D=$(ls ${NOTES_D}/dictionary | wc -l)
         echo "
    Currently, your Noti has $NUM_D definitions!
         "
elif [[ "$1" == "-e" ]];
    then
        if [[ " $3 " -eq 0 ]];
            then
            # if three args given, have language first.
            ## noti -e rs if
            $READ_D/editor.sh $3 $2
        else
            # if two args given, have note first. 
            $READ_D/editor.sh $2
        fi
elif [[ "$1" == "-wd" ]] || [[ "$1" == "-wl" ]] || [[ "$1" == "-wx" ]] || [[ "$1" == "-wt" ]];
    then
        if [[ " $3 " -eq 0 ]];
            then
            # if three args given, have language second.
            ## noti -wl rs if
            $READ_D/writer.sh $1 $3 $2
        else
            # if two args given, have note second. 
            $READ_D/writer.sh $1 $2
        fi
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
        # if two args are given, have language first.
        $READ_D/reader.sh $2 $1
    else
        # if one arg, have note first.
        $READ_D/reader.sh $1
    fi
fi

