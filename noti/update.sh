# set an $EDITOR
if [ -z "$EDITOR" ]; then
    EDITOR="nano" 
fi

ARGS=("$@")
arg_length=${#ARGS[@]}

script_dir=${BASH_SOURCE[0]}
script_parent_dir=$(dirname "$script_dir")
noti_dir=$(dirname "$script_parent_dir")

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
                echo ""
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

        read -p "Without dot, what is the extension of the file? :" ext 
        read -p "Language - $language, note - $note_name? [y/yes,n/no] :" answer
            note_file="$noti_dir/notes/languages/$language/$note_name.$ext"
            echo $note_file
            sleep 20

        if [[ "$answer" == "no" || "$answer" == "n" ]]; then
            echo "Research aborted."
            exit;

        elif [[ "$answer" == "y" || "$answer" == "yes" ]]; then
            note_file="$noti_dir/notes/languages/$language/$note_name.$ext"

            if cp "$note_file" "$current_dir" >/dev/null 2>&1; then

                "$EDITOR" "$note_file"
            else
                echo "The file doesn't exist in languages/$language/"
                echo "Research aborted"
                echo ""
                echo "If possible, write it with -w option."
                exit;
            fi;

        else
            echo "Invalid answer"
            echo "Research aborted."
            exit;
        fi;;
esac




