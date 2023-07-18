# set an $EDITOR
if [ -z "$EDITOR" ]; then
    EDITOR="nano" 
fi

ARGS=("$@")
arg_length=${#ARGS[@]}

case $arg_length in
    1)
        note_name=${ARGS[0]}
        echo ""
        read -p "The note name is: $note_name? [y/yes, n/no]: " answer
        echo ""
        echo "This is the answer: $answer";;
        # read answer
        
        # Try all places with regular notes
        # if cat "$HOME/code/noti_me/notes/dictionary/$note_name" 2>&1 /dev/null; then
        #     echo "Note found in output directory: $HOME/code/noti_me/notes/dictionary."
        #     echo "Update file? [y/yes, n/no] >"
        #     # read answer
        # fi;;

    2)
        language=${ARGS[0]}
        note_name=${ARGS[1]}

        read -p "Please confirm:
              Note name: $note_name
              Language: $language
        Is this correct? [y/yes, n/no]: " answer

        echo ""
        echo "This is the answer: $answer";;
esac




