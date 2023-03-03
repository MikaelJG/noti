#!/bin/bash 
# CHANGE THIS FIRST LINE IF YOU USE ZSH

NOTES_D=~/code/noti/notes
DICTIONARY_PATH=$NOTES_D/dictionary
LANGUAGES_PATH=$NOTES_D/languages
LINUX_PATH=$NOTES_D/linux
TOOLS_PATH=$NOTES_D/tools

UTILS_D=~/code/noti/noti
READER_PATH=$UTILS_D/reader.sh
EDITOR_PATH=$UTILS_D/editor.sh
WRITER_PATH=$UTILS_D/writer.sh

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
        -wa,        Write a new definition in Dictionnary
        -wl,        Write a new note in Languages
        -wt,        Write a new note in Tools
        -wx,        Write a new note in Linux 
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
     NUM_D=$(ls ${DICTIONARY_PATH} | wc -l)
         echo "
    Currently, your Noti has $NUM_D definitions!
         "
elif [[ "$1" == "-e" ]];
    then
        if [ $# -eq 3 ];
            then
            # Have language first
            # noti -e rs if
            $EDITOR_PATH $3 $2
        else
            # Have note first 
            $EDITOR_PATH $2
        fi
elif [[ "$1" == "-wd" ]] || [[ "$1" == "-wl" ]] || [[ "$1" == "-wx" ]] || [[ "$1" == "-wt" ]];
    then
        if [ $# -eq 3 ];
            then
            # Have language second
            ## noti -wl rs if
            $WRITER_PATH $1 $3 $2
        else
            # Have note second 
            $WRITER_PATH $1 $2
        fi
elif [[ "$1" == "-l" ]];
     then
     LANGUAGES=$(ls ${LANGUAGES_PATH})
         echo " 
    Currently, your Noti supports:

$LANGUAGES
         "
elif [[ "$1" == "-t" ]];
     then
     TOOLS_N=$(ls ${TOOLS_PATH})
         echo " 
    Currently, your Noti supports:

$TOOLS_N
            "
elif [[ "$1" == "-x" ]];
     then
     NUM_LINUX_N=$(ls ${LINUX_PATH} | wc -l)
         echo " 
    Currently, your Noti has $NUM_LINUX_N notes on Linux! 
            "
else 
    if [[ " $2 " -eq 0 ]]; 
        then
        # Have language first.
        $READER_PATH $2 $1
    else
        # Have note first.
        $READER_PATH $1
    fi
fi

