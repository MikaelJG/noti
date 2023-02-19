NOTES_D=~/code/noti/notes
NOTE=$1
FILE="$NOTE.txt"
LANGUAGE_OR_TOOL=$2

declare -A LINUX_R 
LINUX_R=(["FILE"]="$NOTES_D/linux/$FILE")
declare -A DEFINITION_R 
DEFINITION_R=(["FILE"]="$NOTES_D/dictionary/$FILE")
declare -A NOTES_R 
NOTES_R=(["FILE"]="$NOTES_D/languages/$LANGUAGE_OR_TOOL/$FILE")
declare -A TOOLS_R 
TOOLS_R=(["FILE"]="$NOTES_D/tools/$LANGUAGE_OR_TOOL/$FILE")

# try to cat and throw away the output
if cat ${DEFINITION_R["FILE"]} >/dev/null 2>&1; then
        clear
        echo "Got it. In dictionnary...
>"
        sleep 1
        cat ${DEFINITION_R["FILE"]}
        exit
elif cat ${NOTES_R["FILE"]} >/dev/null 2>&1; then
        clear
        echo "Got it. In notes...
>"
        sleep 1
        cat ${NOTES_R["FILE"]}
        exit
elif cat ${LINUX_R["FILE"]} >/dev/null 2>&1; then
        clear
        echo "Got it. In linux...
>"
        sleep 1
        cat ${LINUX_R["FILE"]}
        exit
elif cat ${TOOLS_R["FILE"]} >/dev/null 2>&1; then
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
