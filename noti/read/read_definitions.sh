source ~/code/noti/noti/variables.sh

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
