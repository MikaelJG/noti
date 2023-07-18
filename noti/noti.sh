#!/bin/bash

###############
#### PATHS ####
###############

# Current directory
current_dir=$(pwd)

# Script location 
script=${BASH_SOURCE[0]}

# Script full directory
script_dir=$(dirname "$script")
noti_dir=$(dirname "$script_dir")
utils_dir=$(cd "${script_dir}" && pwd)

notes_dir=$noti_dir/notes
# dic_dir=$notes_dir/dictionary
# lang_dir=$notes_dir/languages
# linux_dir=$notes_dir/linux
# tools_dir=$notes_dir/tools

read=$utils_dir/read.sh
edit=$utils_dir/edit.sh
# create=$utils_dir/create.sh

###############
#### ARGS #####
###############

# empty ARGS is given "--help"

if [ -z $1 ]; then
    ARGS=("--help")
    args_length=${#ARGS[@]}
else
    ARGS=("$@")

    # count the array
    args_length=${#ARGS[@]}
fi

# noti sh if
option=${ARGS[0]}

case $option in
    -help|--help)   
        cat <<-EOF
Options:
    -p, noti tree   Display Noti's path system. Changing this system causes malfunction.
    -e, edit        Edit a note in your Noti. When editing a tool or language's notes, specify the language or tool.
    -w, write
        -wa,        Write a new definition in Dictionnary
        -wl,        Write a new note in Languages
        -wt,        Write a new note in Tools
        -wx,        Write a new note in Linux
EOF
;;
    -p|--p)
         cat <<-EOF
# Noti assumes these paths.

    notes/definitions
    notes/languages/cs
    notes/linux/
    notes/tools/vi
EOF
;;
    -e|--e)
    
        case $args_length in
            1)
                echo "Please provide one or two arguments"
                echo "for the $option option"
                exit;;

            2)
                note_name=${ARGS[1]}

#               noti -e      erp
#                  option  note_name
    
                $edit "$note_name";;

            3)
                language=${ARGS[1]}
                note_name=${ARGS[2]}

#               noti -e      sh      if
#                  option   lang   note_name
    
                $edit "$language" "$note_name";;
        esac;;

    # -wd|--wd|-wl|--wl|-wx|--wx|-wt|--wt)
    #
    #       noti -wl      sh      if
    #          option    lang   note_name
    #
    #     if [[ $# -eq 1 ]]; then
    #        echo "Please provide one or two arguments"
    #        echo "for the $option option"
    #        exit
    #
    #     elif [[ $# -eq 2 ]]; then
    #         noti -wl      erp
    #
    #          option   note_name
    #      
    #     $create $note_name
    #
    #     elif [[ $# -eq 3 ]]; then
    #
    #       noti -wl      sh      if
    #          option    lang   note_name
    #
    #         $create $language $note_name
    #     else
    #        echo "Please provide one or two arguments"
    #        echo "for the $option option"
    #        exit
    #     fi
    -vo|--vo)

        if [[ $# -eq 1 ]]; then
            echo "Please provide one or two arguments"
            echo "for the $option option"
        
        elif [[ $# -eq 2 ]]; then

            # noti -vo      erp      
            #     option  note_name

            note_name=${ARGS[1]}

            $read "$note_name" "$current_dir"

        elif [[ $# -eq 3 ]]; then

            # noti -vo      sh          if
            #     option   lang      note_name
            
            language=${ARGS[1]}
            note_name=${ARGS[2]}

            $read "$option" "$language" "$note_name" "$current_dir"

        fi;; 
    *)
        # noti sh      if      
        #     option  note_name
        
        language="$option"
        note_name=${ARG[1]}

        if [[ $note_name -eq 0 ]]; then
            $read $language $note_name
        else
            $read $note_name
        fi
esac

