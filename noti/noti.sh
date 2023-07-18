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

################
#### CRUD  #####
#### UTILS #####
################

utils_dir=$(cd "${script_dir}" && pwd)
read=$utils_dir/read.sh
update=$utils_dir/update.sh
create=$utils_dir/create.sh

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
    -e, update        Edit a note in your Noti. When editing a tool or language's notes, specify the language or tool.
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
    
        case "$args_length" in
            1)
                echo "Please provide one or two arguments"
                echo "for the $option option"
                exit;;
            2)
                note_name=${ARGS[1]}

#               noti -e      erp
#                  option  note_name
    
                $update "$note_name";;
            3)
                language=${ARGS[1]}
                note_name=${ARGS[2]}

#               noti -e      sh      if
#                  option   lang   note_name
    
                $update "$language" "$note_name";;
        esac;;

     -w|--w)

        case "$args_length" in
            1)
                echo "Please provide one or two arguments"
                echo "for the $option option"
                exit;;
            2)
#               noti -wl      erp
#                   option   note_name
          
                $create "$note_name";;
            3)
#               noti -wl      sh      if
#                   option    lang   note_name
    
                $create "$language" "$note_name";;
            *) 
                echo "Please provide one or two arguments"
                echo "for the $option option"
                exit;;
        esac;;

    -vo|--vo)

        case "$args_length" in
            1)
                echo "Please provide one or two arguments"
                echo "for the $option option";;
            2)
                note_name=${ARGS[1]}
#               noti -vo      erp      
#                   option  note_name

                $read "$note_name" "$current_dir";;
            3)
#               noti -vo      sh          if
#                   option   lang      note_name
                
                language=${ARGS[1]}
                note_name=${ARGS[2]}

                $read "$option" "$language" "$note_name" "$current_dir";;
    *)
        # noti sh      if      
        #     option  note_name
        
        language="$option"
        note_name="${ARGS[1]}"

        if [[ $note_name -eq 0 ]]; then
            $read "$language" "$note_name"
        else
            $read "$note_name"
        fi
esac

