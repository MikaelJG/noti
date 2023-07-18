# set an $EDITOR
[ -z "$EDITOR" ] && EDITOR="nano" 

script=${BASH_SOURCE[0]}
script_dir=$(dirname $script)
noti_dir=$(dirname $script_dir)

notes_dir=$noti_dir/notes
note_name=$1
note_file="$note_name.txt"
language_or_tool=$2

declare -A LINUX_R 
LINUX_R=(["note_file"]="$notes_dir/linux/$note_file")
declare -A DEFINITION_R 
DEFINITION_R=(["note_file"]="$notes_dir/dictionary/$note_file")
declare -A NOTES_R 
NOTES_R=(["note_file"]="$notes_dir/languages/$language_or_tool/$note_file")
declare -A TOOLS_R 
TOOLS_R=(["note_file"]="$notes_dir/tools/$language_or_tool/$note_file")

cat ${DEFINITION_R["note_file"]} >/dev/null 2>&1 && clear && echo "Got it. In dictionnary..." && sleep 1 && $EDITOR ${DEFINITION_R["note_file"]} && exit
cat ${NOTES_R["note_file"]} >/dev/null 2>&1 && clear && echo "Got it. In notes..." && sleep 1 && $EDITOR ${NOTES_R["note_file"]} && exit
cat ${LINUX_R["note_file"]} >/dev/null 2>&1 && clear && echo "Got it. In linux..." && sleep 1 && $EDITOR ${LINUX_R["note_file"]} && exit
cat ${TOOLS_R["note_file"]} >/dev/null 2>&1 && clear && echo "Got it. In tools:" && sleep 1 && $EDITOR ${TOOLS_R["note_file"]} && exit

clear && echo "Couldn't find the file" && exit
