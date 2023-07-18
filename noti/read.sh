#!/bin/bash

# set an $EDITOR
if [ -z "$EDITOR" ]; then
    EDITOR="nano" 
fi

ARGS=("$@")
arg_length=${#ARGS[@]}

# last_file=$(ls -Art | tail -n 1)
script_dir=${BASH_SOURCE[0]}

case $arg_length in
    1)
        note_name=${ARGS[0]}
        read -p "The note name is: $note_name? [y/yes, n/no]: " answer

        if [[ "$answer" == "no" || "$answer" == "n" ]]; then

            echo "Research aborted."
            exit;

        elif [[ "$answer" == "y" || "$answer" == "yes" ]]; then
            read -p "
            Available output directories in $HOME/code/noti_me/notes:
                      - .../dictionary
                      - .../linux
                      - ...
            Please indicate desired directory (e.g, linux) 
              >" output
            
            if cat $script_dir/notes/output/$note_name 2>&1 /dev/null; then
                echo "cat worked";

            else
                echo "File could not be found."
                echo "Research aborted."
                exit;
            fi;

        else
            echo "Invalid answer"
            echo "Research aborted."
            exit;
        fi;;
    2)
        echo "two argument given to read.sh";;

    *)
        echo "more than 2 args given to read.sh";;

esac
