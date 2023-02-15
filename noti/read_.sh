NOTI_D=~/code/noti
NOTE=$1
FILE="$NOTE.txt"
LANGUAGE=$2

declare -A CLI_R 
CLI_R=(["FILE"]="$NOTI_D/dev_notes/linux/$FILE")
declare -A DEFINITION_R 
DEFINITION_R=(["FILE"]="$NOTI_D/definition/$FILE")
declare -A NOTES_R 
NOTES_R=(["FILE"]="$NOTI_D/dev_notes/languages/$LANGUAGE/$FILE")

if command cat ${DEFINITION_R["FILE"]};
    then 
        echo "found in definitions"
        sleep 1
        cat ${DEFINITION_R["FILE"]}
        exit
elif command cat ${NOTES_R["FILE"]};
    then
        echo "found in notes"
        sleep 1
        cat ${NOTES_R["FILE"]}
        exit
elif command cat ${CLI_R["FILE"]};
    then
        clear
        echo "Got it. In cli:
>"
        sleep 1
        cat ${CLI_R["FILE"]}
        exit
else
    echo "Couln't find the file"
fi
