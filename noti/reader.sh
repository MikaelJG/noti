SCRIPT=${BASH_SOURCE[0]}
DIR=$(dirname $SCRIPT)
NOTI_DIR=$(dirname $DIR)

NOTES_D=$NOTI_DIR/notes
NOTE=$1
FILE="$NOTE.txt"
LANGUAGE_OR_TOOL=$2

case $3 in
    -vo|--vo)
        echo "in reader, in -vo"
        sleep 10;;
    *)
        echo "not vo";;
esac

declare -A LINUX_R 
LINUX_R=(["FILE"]="$NOTES_D/linux/$FILE")
declare -A DEFINITION_R 
DEFINITION_R=(["FILE"]="$NOTES_D/dictionary/$FILE")
declare -A NOTES_R 
NOTES_R=(["FILE"]="$NOTES_D/languages/$LANGUAGE_OR_TOOL/$FILE")
declare -A TOOLS_R 
TOOLS_R=(["FILE"]="$NOTES_D/tools/$LANGUAGE_OR_TOOL/$FILE")

# try to cat and throw away the output
cat ${DEFINITION_R["FILE"]} >/dev/null 2>&1 && clear && echo "Got it. In dictionary..." && sleep 1 && cat ${DEFINITION_R["FILE"]} && exit

cat ${NOTES_R["FILE"]} >/dev/null 2>&1 && clear && echo "Got it. In notes..." && sleep 1 && cat ${NOTES_R["FILE"]} && exit

cat ${LINUX_R["FILE"]} >/dev/null 2>&1 && clear && echo "Got it. In linux..." && sleep 1 && cat ${LINUX_R["FILE"]} && exit

cat ${TOOLS_R["FILE"]} >/dev/null 2>&1 && clear && echo "Got it. In linux..." && sleep 1 && cat ${TOOLS_R["FILE"]} && exit

clear && echo "Couldn't find the file"
