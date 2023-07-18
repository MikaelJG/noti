ARGS=("$@")
arg_length=${#ARGS[@]}

case $arg_length in
    1)
        note_name=${ARGS[0]}
        echo "one argument give to create.sh"
        echo "This $note_name, is the name of the note. Correct?";;
        # read [y/yes, n/no]
        
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

        echo "two arguments given to create.sh"
        echo "This $note_name, should be the name of the note."
        echo "This $language, should be the language. Correct?";;
        # read [y/yes, n/no]
esac




