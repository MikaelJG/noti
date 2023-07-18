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
        echo "This $note_name, is the name of the note. Correct?";;
        # read [y/yes, n/no]
        
        # Try all places with regular notes

    2)
        language=${ARGS[0]}
        note_name=${ARGS[1]}

        echo "two arguments given to update.sh"
        echo "This $note_name, should be the name of the note."
        echo "This $language, should be the language. Correct?";;
        # read [y/yes, n/no]
esac




