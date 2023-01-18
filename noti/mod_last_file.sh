source ~/code/noti/noti/variables.sh
. ~/code/noti/noti/find_notes.sh
. ~/code/noti/noti/find_languages.sh
. ~/code/noti/noti/read_notes.sh

MOD_LAST_FILE() {
    if [[ "${LANGUAGE_ARRAY[*]}" =~ " $1 " ]] && [[ "${NOTES_ARRAY[*]}" =~ " $2 " ]];
        then
        DIR="${NOTI_DIRECTORY}/languages"
        LAST_MODIFIED_FILE=$(ls -Art | tail -n 1)
        cat ${DIR}/$1/$2.txt >> $LAST_MODIFIED_FILE
    else
        echo "Language or file is not supported"
    fi
}
