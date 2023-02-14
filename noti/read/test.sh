source ~/code/noti/noti/variables.sh
source ~/code/noti/noti/find_.sh

NOTE=$1
FILE="$NOTE.txt"
LANGUAGE=$2

CLI_R=(["FILE"]="$NOTI_DIRECTORY/linux/$FILE" ["ARRAY"]="$CLI")
DEFINITION_R=(["FILE"]="$NOTI_DIRECTORY/definition/$FILE" ["ARRAY"]="$DEFINITIONS")
NOTES_R=(["FILE"]="$NOTI_DIRECTORY/dev_notes/languages/$LANGUAGE/$FILE" ["ARRAY"]="$NOTES")
READERS=($CLI_R $DEFINITION_R $NOTES_R)

for reader in ${READERS[@]}
    do 
        echo $reader
done

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
