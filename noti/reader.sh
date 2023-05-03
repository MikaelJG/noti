SCRIPT=${BASH_SOURCE[0]}
DIR=$(dirname $SCRIPT)
NOTI_DIR=$(dirname $DIR)

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

try_cat(file) {
    cat $file >/dev/null 2>&1
}

# last doc
last_file=$(ls -Art | tail -n 1)

case $3 in
    -vo|--vo)
        try_cat ${file_2["FILE"]} && cat ${file_2["FILE"]} >> "$CURRENT_D/$FILE" && vim -o $last_file "$CURRENT_D/$FILE" && exit
        cat ${file_3["FILE"]} >/dev/null 2>&1 && cat ${file_3["FILE"]} >> "$CURRENT_D/$FILE" && vim -o $last_file "$CURRENT_D/$FILE" && exit
        cat ${file_1["FILE"]} >/dev/null 2>&1 && cat ${file_1["FILE"]} >> "$CURRENT_D/$FILE" && vim -o $last_file "$CURRENT_D/$FILE" && exit
        cat ${file_4["FILE"]} >/dev/null 2>&1 && cat ${file_4["FILE"]} >> "$CURRENT_D/$FILE" && vim -o $last_file "$CURRENT_D/$FILE" && exit;;
esac

# try to cat and throw away the output
cat ${file_2["FILE"]} >/dev/null 2>&1 && clear && cat ${file_2["FILE"]} && exit
cat ${file_3["FILE"]} >/dev/null 2>&1 && clear && cat ${file_3["FILE"]} && exit
cat ${file_1["FILE"]} >/dev/null 2>&1 && clear && cat ${file_1["FILE"]} && exit
cat ${file_4["FILE"]} >/dev/null 2>&1 && clear && cat ${file_4["FILE"]} && exit

clear && echo "Couldn't find the file"
