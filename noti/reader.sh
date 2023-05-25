SCRIPT=${BASH_SOURCE[0]}
DIR=$(dirname "$SCRIPT")
NOTI_DIR=$(dirname "$DIR")

NOTES_D=$NOTI_DIR/notes
NOTE=$1
FILE="$NOTE.txt"
LANGUAGE_OR_TOOL=$2
CURRENT_D=$4

declare -A file_1 
# Linux
file_1=(["FILE"]="$NOTES_D/linux/$FILE")

declare -A file_2 
# Dictionary 
file_2=(["FILE"]="$NOTES_D/dictionary/$FILE")

declare -A file_3 
# Languages 
file_3=(["FILE"]="$NOTES_D/languages/$LANGUAGE_OR_TOOL/$FILE")

declare -A file_4 
# Tools 
file_4=(["FILE"]="$NOTES_D/tools/$LANGUAGE_OR_TOOL/$FILE")

last_file=$(ls -Art | tail -n 1)

try_cat() {
    file=$1
    cat "$file" >/dev/null 2>&1 && clear
}

open_last_file() {
    # last doc
    vim -o "$last_file" "$CURRENT_D/$FILE"
}

case $3 in
    -vo|--vo)
        try_cat "${file_2["FILE"]}" && cat "${file_2["FILE"]}" >> "$CURRENT_D/$FILE" && open_last_file && exit
        try_cat "${file_3["FILE"]}" && cat "${file_3["FILE"]}" >> "$CURRENT_D/$FILE" && open_last_file && exit
        try_cat "${file_1["FILE"]}" && cat "${file_1["FILE"]}" >> "$CURRENT_D/$FILE" && open_last_file && exit
        try_cat "${file_4["FILE"]}" && cat "${file_4["FILE"]}" >> "$CURRENT_D/$FILE" && open_last_file && exit ;;
esac

# try to cat and throw away the output
try_cat "${file_2["FILE"]}" && cat "${file_2["FILE"]}" && exit
try_cat "${file_3["FILE"]}" && cat "${file_3["FILE"]}" && exit
try_cat "${file_1["FILE"]}" && cat "${file_1["FILE"]}" && exit
try_cat "${file_4["FILE"]}" && cat "${file_4["FILE"]}" && exit

clear && echo "Couldn't find the file"
