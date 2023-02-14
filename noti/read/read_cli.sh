source ~/code/noti/noti/variables.sh

READ_CLI() {
    if [[ "${CLI_ARRAY[*]}" =~ " $1 " ]];
    then
        DIR="${NOTI_DIRECTORY}/cli_tools"
        echo ""
        cat ${DIR}/$1.txt
        echo ""
    else
        echo "file does not exist"
    fi
}
