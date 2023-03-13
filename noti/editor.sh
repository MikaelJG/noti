# I should use the $EDITOR variable
# if not set, set it to nano 
TEXT_E="vim" # Specify your favorite text editor here.

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

cat ${DEFINITION_R["FILE"]} >/dev/null 2>&1 && clear && echo "Got it. In dictionnary..." && sleep 1 && $TEXT_E ${DEFINITION_R["FILE"]} && exit
cat ${NOTES_R["FILE"]} >/dev/null 2>&1 && clear && echo "Got it. In notes..." && sleep 1 && $TEXT_E ${NOTES_R["FILE"]} && exit
cat ${LINUX_R["FILE"]} >/dev/null 2>&1; && clear && echo "Got it. In linux..." && sleep 1 && $TEXT_E ${LINUX_R["FILE"]} && exit
cat ${TOOLS_R["FILE"]} >/dev/null 2>&1; && clear && echo "Got it. In tools:" && sleep 1 && $TEXT_E ${TOOLS_R["FILE"]} && exit

clear && echo "Couldn't find the file" && exit
