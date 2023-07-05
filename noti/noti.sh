#!/bin/bash

# Current directory
current_dir=$(pwd)

# Script location 
script=${BASH_SOURCE[0]}

# Script full directory
script_dir=$(dirname "$script")
noti_dir=$(dirname "$script_dir")
utils_dir=$(cd "${script_dir}" && pwd)

notes_dir=$noti_dir/notes
dic_dir=$notes_dir/dictionary
lang_dir=$notes_dir/languages
linux_dir=$notes_dir/linux
tools_dir=$notes_dir/tools

reader_path=$utils_dir/reader.sh
editor_path=$utils_dir/editor.sh
writer_path=$utils_dir/writer.sh

# empty ARGS is given "--help"

if [ -z ""$1"" ]; then
    ARGS=("--help")
else
    ARGS=("$@")
fi

case ${ARGS[0]} in
    -help|--help)   
        cat <<-EOF
Options:
    -p, noti tree   Display Noti's path system. Changing its file system causes malfunction.
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
        [[ $# -eq 3 ]] && "$editor_path" "$3" "$2" || $editor_path "$2";;
    # -wd|--wd|-wl|--wl|-wx|--wx|-wt|--wt)
    #     [[ $# -eq 3 ]] && $writer_path "$1" "$3" "$2" || $writer_path "$1" "$2";;
    -vo|--vo)
        # noti -vo sh "$1" >> "$1".txt && vo (last_file) "$1".txt
        # alias nvo="noti vo"
        # nvo sh "$1" >> "$1".txt && vo (last_file) "$1".txt
        
        if [[ " $2 " -eq 0 ]]; then

            if [[ " $3 " -eq 0 ]]; then 
                $reader_path "$3" "$2" "$1" "$current_dir"
            fi

        fi;; 
    *)
        [[ " $2 " -eq 0 ]] && $reader_path "$2" "$1" || $reader_path "$1";;
esac

