#!/bin/bash

# Change this with the bash context DIRNAME BASH_SOURCE STRATEGY
NOTES_D=~/code/noti/notes
DICTIONARY_PATH=$NOTES_D/dictionary
LANGUAGES_PATH=$NOTES_D/languages
LINUX_PATH=$NOTES_D/linux
TOOLS_PATH=$NOTES_D/tools

UTILS_D=~/code/noti/noti
READER_PATH=$UTILS_D/reader.sh
EDITOR_PATH=$UTILS_D/editor.sh
WRITER_PATH=$UTILS_D/writer.sh

case $1 in
    -help|--help)   
        cat <<-EOF
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
EOF
;;
    -a|--a)
         cat <<-EOF
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
EOF
;;
   -d|--d)
     NUM_D=$(ls ${DICTIONARY_PATH} | wc -l)
         echo -e "\nCurrently, your Noti has $NUM_D definitions!\n";;
    -e|--e)
        [[ $# -eq 3 ]] && $EDITOR_PATH $3 $2 || $EDITOR_PATH $2;;
    -wd|--wd|-wl|--wl|-wx|--wx|-wt|--wt)
        [[ $# -eq 3 ]] && $WRITER_PATH $1 $3 $2 || $WRITER_PATH $1 $2;;
    -l|--l)
        LANGUAGES=$(ls ${LANGUAGES_PATH})
        echo -e "\nCurrently, your Noti supports:\n$LANGUAGES";;
    -t|--t)
        TOOLS_N=$(ls ${TOOLS_PATH})
        echo -e "\nCurrently, your Noti supports:\n$TOOLS_N";;
    -x|--x)
        NUM_LINUX_N=$(ls ${LINUX_PATH} | wc -l)
        echo -e "\nCurrently, your Noti has $NUM_LINUX_N notes on Linux!\n";;
    *)
        [[ " $2 " -eq 0 ]] && $READER_PATH $2 $1 || $READER_PATH $1;;
esac

