NOTI_D=~/code/noti
NOTE=$1
FILE="$NOTE.txt"
LANGUAGE_OR_TOOL=$2

declare -A CLI_R 
CLI_R=(["FILE"]="$NOTI_D/notes/linux/$FILE")
declare -A DEFINITION_R 
DEFINITION_R=(["FILE"]="$NOTI_D/notes/dictionary/$FILE")
declare -A NOTES_R 
NOTES_R=(["FILE"]="$NOTI_D/notes/languages/$LANGUAGE_OR_TOOL/$FILE")
declare -A TOOLS_R 
TOOLS_R=(["FILE"]="$NOTI_D/notes/tools/$LANGUAGE_OR_TOOL/$FILE")

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
elif command cat ${CLI_R["FILE"]};
    then
        clear
        echo "Got it. In cli...
>"
        sleep 1
        cat ${CLI_R["FILE"]}
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
    echo "Couln't find the file"
fi
