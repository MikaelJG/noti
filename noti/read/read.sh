source ~/code/noti/noti/variables.sh
source ~/code/noti/noti/find_.sh

NOTE=$1
FILE="$NOTE.txt"

CLI_R=(["FILE"]="$NOTI_DIRECTORY/linux/$FILE" ["array"]="$CLI")
DEFINITION_R=(["FILE"]="$NOTI_DIRECTORY/definition/$FILE" ["array"]="$DEFINITIONS")

    if [[ "${CLI_ARRAY[*]}" =~ " $1 " ]];
    then
        cat ${DIR}/${FILE}
    else
        echo "file does not exist"
    fi
READ_DEFINITIONS() {
    if [[ "${DEFINITIONS_ARRAY[*]}" =~ " $1 " ]];
    then
        DIR="${NOTI_DIRECTORY}/definitions"
        echo ""
        cat ${DIR}/$1.txt
        echo ""
    else
        echo "file does not exist"
    fi
}
READ_NOTES() {
    if [[ "${NOTES_ARRAY[*]}" =~ " $2 " ]];
        then
            DIR="${NOTI_DIRECTORY}/dev_notes/languages"
            echo ""
            cat ${DIR}/$1/$2.txt
            echo ""
    else
        echo "File does not exist"
    fi
}
