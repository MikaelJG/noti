NOTES_D=~/code/noti/notes
NOTE=$1
FILE="$NOTE.txt"
LANGUAGE_OR_TOOL=$2

declare -A CLI_R 
LINUX_R=(["FILE"]="$NOTI_D/linux/$FILE")
declare -A DEFINITION_R 
DEFINITION_R=(["FILE"]="$NOTI_D/dictionary/$FILE")
declare -A NOTES_R 
NOTES_R=(["FILE"]="$NOTI_D/languages/$LANGUAGE_OR_TOOL/$FILE")
declare -A TOOLS_R 
TOOLS_R=(["FILE"]="$NOTI_D/tools/$LANGUAGE_OR_TOOL/$FILE")

if command cat ${DEFINITION_R["FILE"]};
    then 
        clear
        echo "Got it. In dictionnary..."
        sleep 1
        cat ${DEFINITION_R["FILE"]}
        exit
elif command cat ${NOTES_R["FILE"]};
    then
        clear
        echo "Got it. In notes..."
        sleep 1
        cat ${NOTES_R["FILE"]}
        exit
elif command cat ${LINUX_R["FILE"]};
    then
        clear
        echo "Got it. In linux...
>"
        sleep 1
        cat ${LINUX_R["FILE"]}
        exit
elif command cat ${TOOLS_R["FILE"]};
    then
        clear
        echo "Got it. In tools:
>"
        sleep 1
        cat ${TOOLS_R["FILE"]}
        exit
else
    clear
    echo "Couln't find the file"
    exit
fi
