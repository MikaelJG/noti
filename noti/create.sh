ARGS=("$@")
arg_length=${#ARGS[@]}

case $arg_length in
    1)
        note_name=${ARGS[0]}
        echo ""
        echo "one argument given to create.sh"
        echo ""
        read -p "The note name is: $note_name? [y/yes, n/no]: " answer
        echo ""
        echo "This is the answer: $answer";; 
        
        # Save the right output dir for the note
        
        # read "
        #
        # Available output directories in $HOME/code/noti_me/notes:
        #           - .../dictionary
        #           - .../linux
        #           - ...
        # Please indicate desired directory (e.g, linux) 
        #   >
        #
        # Confirm dir $HOME/code/noti_me/notes/linux? [y/yes, n/no]
        #
        #
        # "
        
        # Create the note_name file in this output dir

    2)
        language=${ARGS[0]}
        note_name=${ARGS[1]}

        echo ""
        echo "two arguments given to create.sh"
        echo ""

        read -p "Please confirm the following:
                Note name: $note_name
                Language: $language
        Is this correct? [y/yes, n/no]: " answer

        echo ""
        echo "This is the answer: $answer";; 
esac




