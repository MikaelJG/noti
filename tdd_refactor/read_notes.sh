source variables.sh
. ./find_notes.sh
. ./find_languages.sh

READ_NOTES() {
    if [[ "${NOTES_ARRAY[*]}" =~ " $2 " ]];
        then
            DIR="${NOTI_DIRECTORY}/languages"
            echo ""
            cat ${DIR}/$1/$2.txt
            echo ""
    else
        echo "File does not exist"
    fi
}

echo "hello from read_notes.sh"
echo "first arg is: $1"
echo "second arg is: $2"
