#!/bin/bash

# set an $EDITOR
if [ -z "$EDITOR" ]; then
    EDITOR="nano" 
fi

ARGS=("$@")
arg_length=${#ARGS[@]}

# I need current directory, 
# And current directory is alway given last in arguments
idx=$(( arg_length - 1))
current_dir=${ARGS[idx]}

# last_file=$(ls -Art | tail -n 1)
script_dir=${BASH_SOURCE[0]}
script_parent_dir=$(dirname "$script_dir")

option=${ARGS[0]}

case $option in
    -vo|--vo)
        echo "-vo was given to read.sh"
        echo "to be implemented"
        exit;;
    *)
        echo "-vo was not given to read.sh";;
esac

case $arg_length in
    1)
        note_name=$option

        read -p "
        Available output directories in $HOME/code/noti_me/notes:
                  - .../dictionary
                  - .../linux
                  - ...
        Please indicate desired directory (e.g, linux) 
          >" output
        
        if cat "$script_parent_dir/notes/$output/$note_name" 2>&1 /dev/null; then
            echo "cat worked";
        else
            echo "File could not be found."
            echo "Research aborted."
            exit;
        fi;;
    2)
        # noti sh if
        
        echo "two argument given to read.sh"
        echo "but -vo is not one of them";;

    *)
        echo "more than 2 args given to read.sh"
        echo "Research aborted."
        exit;;

esac
