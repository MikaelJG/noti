# set an $EDITOR
if [ -z "$EDITOR" ]; then
    EDITOR="nano" 
fi

ARGS=("$@")
arg_length=${#ARGS[@]}

echo "update.sh is not yet implemented"
echo "Update aborded"

case $arg_length in
    1)
        # noti erp

        note_name=${ARGS[0]}
        read -p "The note name is: $note_name? [y/yes, n/no]: " answer

        if [[ "$answer" == "no" || "$answer" == "n" ]]; then
            echo "Research aborted."
            exit;

        elif [[ "$answer" == "y" || "$answer" == "yes" ]]; then
            note_file="$noti_dir/notes/dictionary/$note_name.txt"

            # cp the note in current directory
            
            if cp "$note_file" "$current_dir" >/dev/null 2>&1; then

                "$EDITOR" "$note_file";

            else
                echo "The file doesn't exist in dictionnary."
                echo "Research aborted."

                echo "If possible, write it with -w option."
                exit;
            fi;

        else
            echo "Invalid answer"
            echo "Research aborted."
            exit;
        fi;;

    2)
        # noti sh if
        
        language=${ARGS[0]}
        note_name=${ARGS[1]}

        read -p "Please confirm:
              Note name: $note_name
              Language: $language
        Is this correct? [y/yes, n/no]: " answer
        read -p "Language - $language, note - $note_name? [y/yes,n/no] :" answer

        if [[ "$answer" == "no" || "$answer" == "n" ]]; then
            echo "Research aborted."
            exit;

        elif [[ "$answer" == "y" || "$answer" == "yes" ]]; then
            note_file="$noti_dir/notes/languages/$language/$note_name.$ext"

            # cp the note in current directory
            
            if cp "$note_file" "$current_dir" >/dev/null 2>&1; then

                if [[ $EDITOR == "vim" || $EDITOR == "nvim" ]]; then
                    "$EDITOR" -vo "$current_dir/$note_name.txt" "$last_file"
                else
                    echo "Note successfully copied in current directory"
                    exit;
                fi
            else
                echo "The file doesn't exist in dictionnary"
                echo "Research aborted"
                exit;
            fi;

        else
            echo "Invalid answer"
            echo "Research aborted."
            exit;
        fi;;

        echo ""
        echo "This is the answer: $answer";;
esac




