#!/bin/bash

# set an $EDITOR
if [ -z "$EDITOR" ]; then
    EDITOR="nano" 
fi

ARGS=("$@")
arg_length=${#ARGS[@]}

# I need current directory, 
# And current directory is always given last in arguments
idx=$(( arg_length - 1))
current_dir=${ARGS[idx]}

last_file=$(ls -Art | tail -n 1)
script_dir=${BASH_SOURCE[0]}
script_parent_dir=$(dirname "$script_dir")
noti_dir=$(dirname "$script_parent_dir")

option=${ARGS[0]}

case $option in
    -vo|--vo)
        
        # We know its a note_name here,
        # The question is asked in Noti.sh

        case $arg_length in
            2)
                # noti -vo current_dir
                
                echo "Please provide more than 2 arguments"
                echo "for the -vo option."
                exit;;

            3) 
                # noti -vo erp current_dir
                
                note_name=${ARGS[1]}
                file="$noti_dir/notes/dictionary/$note_name.txt"

                # cp the note in current dir
                cp "$file" "$current_dir"

                if [[ $EDITOR == "vim" || $EDITOR == "nvim" ]]; then
                    $EDITOR -vo "$note_name" "$last_file" "$current_dir"
                else
                    echo "Note successfully copied in current directory"
                    exit;
                fi;;

            4)

                # noti -vo sh if current_dir
                
                language=${ARGS[1]}
                note_name=${ARGS[2]}

                read -p "Without dot, what is the extension of the note file? :" ext
                
                read -p "Language - $language, note - $note_name? [y/yes,n/no] :" answer

                if [[ "$answer" == "no" || "$answer" == "n" ]]; then
                    echo "Research aborted."
                    exit;

                elif [[ "$answer" == "y" || "$answer" == "yes" ]]; then
                    note_file="$noti_dir/notes/languages/$language/$note_name.$ext"

                    # cp the note in current directory
                    
                    cp "$note_file" "$current_dir" 

                    if [[ $EDITOR == "vim" || $EDITOR == "nvim" ]]; then
                        $EDITOR -vo "$note_name" "$last_file" "$current_dir"
                    else
                        echo "Note successfully copied in current directory"
                        exit;
                    fi

                else
                    echo "Invalid answer"
                    echo "Research aborted."
                    exit;
                fi;;
        esac
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
