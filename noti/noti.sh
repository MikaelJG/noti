#!/bin/bash 
# CHANGE THIS FIRST LINE IF YOU USE ZSH

NOTES_D=~/code/noti/notes
READ_D=~/code/noti/noti

# to do 
# add a -help, like docker -help

if [[ "$1" == "-help" ]];
     then
     echo "
Options:
    -a, noti tree   Display Noti's file system. Changing the file system may cause your noti to malfunction.
    -d, count def   Count your number of definitions in your Noti's dictionnary. In notes/dictionnary.
    -e, edit        Edit a note in your Noti. When editing a tool or language's notes, specify the language or tool.
    -l, list lang   List all supported programming languages in the Language folder. In notes/languages.
    -t, list tool   List all supported programming languages in the Language folder. In notes/languages.
    -w, write
    ... -wa,        Write a new definition in Dictionnary
    ... -wl,        Write a new note in Languages
    ... -wt,        Write a new note in Tools
    ... -wx,        Write a new note in Linux 
    -x, count lin   Count your number of notes in Linux 

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
      |                etc 
      ------ linux
      |
      ------ tools
                |
                ---- vi
                ---- tm
                     etc
         "
elif [[ "$1" == "-d" ]];
     then
     NUM_D=$(ls ${NOTES_D}/dictionary | wc -l)
         echo "
    Currently, your Noti has $NUM_D definitions!
         "
elif [[ "$1" == "-e" ]];
    then
        if [ $# -eq 3 ];
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
        if [ $# -eq 3 ];
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

