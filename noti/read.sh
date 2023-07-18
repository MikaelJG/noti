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
noti_dir=$(dirname "$script_parent_dir")

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

        read -p "Without dot, what extension does the file have? 
            > " ext

        read -p "
        Available output directories in $HOME/code/noti_me/notes:
                  - .../dictionary
                  - .../linux
                  - ...
        Please indicate desired directory (e.g, linux) 
          >" tmp 

        output="$noti_dir/notes/$tmp/$note_name.$ext"

        read -p "The output is $output? [y/yes,n/no]: " answer

        if [[ "$answer" == "no" || "$answer" == "n" ]]; then
            echo "Research aborted."
            exit;

        elif [[ "$answer" == "y" || "$answer" == "yes" ]]; then
            if cat "$output" >/dev/null 2>&1; then
                echo "cat worked";
            else
                echo "File could not be found."
                echo "Research aborted."
                exit;
             fi

        else
            echo "Invalid answer"
            echo "Research aborted."
            exit;
        fi;;
    2)
        # noti sh if

        language=${ARGS[0]}
        note_name=${ARGS[1]}

        read -p "Without the dot, what is the extension of the file?: " ext 

        output="$noti_dir/notes/languages/$language/$note_name.$ext"

        read -p "The output is $output? [y/yes,n/no]: " answer

        if [[ "$answer" == "no" || "$answer" == "n" ]]; then
            echo "Research aborted."
            exit;

        elif [[ "$answer" == "y" || "$answer" == "yes" ]]; then
            if cat "$output" >/dev/null 2>&1; then
                echo "cat worked";
            else
                echo "File could not be found."
                echo "Research aborted."
                exit;
             fi

        else
            echo "Invalid answer"
            echo "Research aborted."
            exit;
        fi;;
        

    *)
        echo "more than 2 args given to read.sh"
        echo "Research aborted."
        exit;;

esac
