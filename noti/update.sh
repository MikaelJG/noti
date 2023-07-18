# set an $EDITOR
if [ -z "$EDITOR" ]; then
    EDITOR="nano" 
fi

ARGS=("$@")
arg_length=${#ARGS[@]}

case $arg_length in
    1)
        note_name=${ARGS[0]}
        echo "one argument give to update.sh"
        echo "This $note_name, is the name of the note? [y/yes, n/no] >"
        # read answer
        
        # Try all places with regular notes
        if cat "$HOME/code/noti_me/notes/dictionary/$note_name" 2>&1 /dev/null; then
            echo "Note found in output directory: $HOME/code/noti_me/notes/dictionary."
            echo "Update file? [y/yes, n/no] >"
            # read answer
        fi;;

    2)
        language=${ARGS[0]}
        note_name=${ARGS[1]}

        echo "two arguments given to update.sh"
        echo "This $note_name, should be the name of the note."
        echo "This $language, is the language? [y/yes, n/no] >"
        # read answer
esac




