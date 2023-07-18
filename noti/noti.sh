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

                echo "you've given something like: noti -e erp"
                sleep 1

#               noti -e      erp
#                  option  note_name
    
                $update "$note_name";;
            3)
                language=${ARGS[1]}
                note_name=${ARGS[2]}

#               noti -e      sh      if
#                  option   lang   note_name
                echo "you've given something like: noti -e sh if"
                sleep 1
    
                $update "$language" "$note_name";;
            *) 
                echo "Please provide one or two arguments"
                echo "for the $option option"
                exit;;
        esac;;

     -w|--w)

        case "$args_length" in
            1)
                echo "Please provide one or two arguments"
                echo "for the $option option"
                exit;;
            2)
                note_name=${ARGS[1]}
#               noti -w      erp
#                   option   note_name
                echo "you've given something like: noti -w erp"
                sleep 1
          
                $create "$note_name";;
            3)
                language=${ARGS[1]}
                note_name=${ARGS[2]}
#               noti -w      sh      if
#                   option    lang   note_name
                echo "you've given something like: noti -w sh if"
                sleep 1
    
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

                read -p "Is this your note name: $note_name? [y/yes, n/no]: " answer
                
                if [[ "$answer" == "no" || "$answer" == "n" ]]; then

#                   noti -vo sh
#                       lang
                    echo "you've given something like: noti -vo sh"

                    echo "Research aborted."
                    exit;

                elif [[ "$answer" == "y" || "$answer" == "yes" ]]; then
#                   noti -vo       erp
#                               note_name
                    echo "you've given something like: noti -vo erp"
                    sleep 1
#
                    $read "$note_name";
                    $read "$option" "$note_name" "$current_dir";
                else
                    echo "Invalid answer"
                    echo "Research aborted."
                    exit;
                fi;;

            3)
#               noti -vo      sh          if
#                   option   lang      note_name
                echo "you've given something like: noti -vo sh if"
                sleep 1
                
                language=${ARGS[1]}
                note_name=${ARGS[2]}

                $read "$option" "$language" "$note_name" "$current_dir";;
            *) 
                echo "Please provide one or two arguments"
                echo "for the $option option"
                exit;;
        esac;;
    *)
        tmp="$option"

        case "$args_length" in
            1)
                read -p "Is this your note name: $tmp? [y/yes, n/no]: " answer
                # read Answer
                
                if [[ $answer == "no" || $answer == "n" ]]; then

#                   noti sh
#                       lang
                    echo "you've given something like: noti sh"

                    echo "Research aborted."
                    exit;
                elif [[ $answer == "y" || $answer == "yes" ]]; then
                    note_name=$tmp

#                   noti erp
#                       note_name
                    echo "you've given something like: noti erp"
                    sleep 1
#
                    $read "$note_name";
                else
                    echo "Invalid answer"
                    echo "Research aborted."
                    exit;
                fi;;
            2)
#               noti sh      if      
#                   lang  note_name
#
                echo "you've given something like: noti sh if"
                sleep 1

                language=$tmp 
                note_name="${ARGS[1]}"

                read -p "Please confirm values:
                            language: $language
                            note name: $note_name

                Is this correct? > [y/yes, n/no]: " answer

                if [[ $answer == "no" || $answer == "n" ]]; then
                    echo "Research aborted."
                    exit;
                elif [[ $answer == "y" || $answer == "yes" ]]; then
                    $read "$language" "$note_name";
                else
                    echo "Invalid answer"
                    echo "Research aborted."
                    exit;
                fi;;
            *) 
                echo "Invalid arguments."
                echo "Research aborted."
                exit;;
            esac

esac

