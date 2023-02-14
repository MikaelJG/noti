source ~/code/noti/noti/variables.sh
. ~/code/noti/noti/find_notes.sh
. ~/code/noti/noti/find_languages.sh

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
