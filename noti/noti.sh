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
editor_path=$utils_dir/editor.sh
# writer_path=$utils_dir/writer.sh

###############
#### ARGS #####
###############

# empty ARGS is given "--help"

if [ -z $1 ]; then
    ARGS=("--help")
else
    ARGS=("$@")
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
        if [[ $# -eq 3 ]]; then
            "$editor_path" "$3" "$2"
        else
            $editor_path "$2"
        fi;; 
    # -wd|--wd|-wl|--wl|-wx|--wx|-wt|--wt)
    #     [[ $# -eq 3 ]] && $writer_path "$1" "$3" "$2" || $writer_path "$1" "$2";;
    -vo|--vo)
        # noti -vo sh "$1" >> "$1".txt && vo (last_file) "$1".txt
        # alias nvo="noti vo"
        # nvo sh "$1" >> "$1".txt && vo (last_file) "$1".txt
        #
        #
        # noti -vo erp (is possible)
        # noti -vo sh if (is possible as well)
        #
        
        if [[ $# -eq 2 ]]; then

            # noti -vo      erp      
            #     option  note_name

            note_name=${ARGS[1]}

        elif [[ $# -eq 3 ]]; then

            # noti -vo      sh          if (is possible as well)
            #     option   lang      note_name
            
            language=${ARGS[1]}
            note_name=${ARGS[2]}

            if [[ " $3 " -eq 0 ]]; then 
                # noti -vo sh if
                # passing the option -vo to read
               
                $read $option $language $note_name "$current_dir"
            fi

        fi;; 
    *)
        # noti sh if
        language="$option"
        note_name=${ARG[1]}

        if [[ $note_name -eq 0 ]]; then
            $read $language $note_name
        else
            $read $note_name
        fi
esac

