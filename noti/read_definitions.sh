source ~/code/noti/noti/variables.sh

READ_DEFINITIONS() {
            DIR="${NOTI_DIRECTORY}/definitions"
            echo ""
            cat ${DIR}/$1.txt
            echo ""
}
