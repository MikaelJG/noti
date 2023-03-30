TEXT_E="vim" # Edit this variable with the text editor of your choice

SCRIPT=${BASH_SOURCE[0]}
DIR=$(dirname $SCRIPT)
NOTI_DIR=$(dirname $DIR)

NOTES_D=$NOTI_DIR/notes
NOTE_D=$1
NOTE=$2
FILE="$NOTE.txt"
LANGUAGE_OR_TOOL=$3

declare -A LINUX_R 
LINUX_R=(["FILE"]="$NOTES_D/linux/$FILE")
declare -A DEFINITION_R 
DEFINITION_R=(["FILE"]="$NOTES_D/dictionary/$FILE")
declare -A NOTES_R 
NOTES_R=(["FILE"]="$NOTES_D/languages/$LANGUAGE_OR_TOOL/$FILE")
declare -A TOOLS_R 
TOOLS_R=(["FILE"]="$NOTES_D/tools/$LANGUAGE_OR_TOOL/$FILE")

if_file_exists_quit() {
    # file exists
    [[ -e $1 ]] && echo -e "The file already exists.\nEdit it with Noti -e." && exit
}

if_no_dir_quit() {
    # file exists
    ! [[ -d $1 ]] && echo "The language or tool doesn't exists." && exit
}

if_info_needed_quit() {
    [[ -z "$3" ]] && echo -e "Specify a tool or language.\nEx: noti -wt vi remap" && exit
}

case $NOTE_D in
    -wd|--wd) 
        if_file_exists_quit ${DEFINITION_R["FILE"]}

        # passed the if, so
        echo -e "Got it. Noting, in dictionnary...\n>" && sleep 1 && $TEXT_E ${DEFINITION_R["FILE"]};;
    -wl|--wl) 
        if_info_needed_quit $1 $2 $3
        if_file_exists_quit ${NOTES_R["FILE"]}
        if_no_dir_quit $NOTES_D/languages/$LANGUAGE_OR_TOOL

        # passed all if, so
        echo -e "Got it. Noting, in languages...\n>" && sleep 1 && $TEXT_E ${NOTES_R["FILE"]};;
    -wt|--wt) 
        if_info_needed_quit $1 $2 $3
        if_file_exists_quit ${TOOLS_R["FILE"]}
        if_no_dir_quit $NOTES_D/tools/$LANGUAGE_OR_TOOL

        # passed all if, so
        echo -e "Got it. Noting, in tools...\n>" && sleep 1 && $TEXT_E ${TOOLS_R["FILE"]};;
    -wx|--wx) 
        if_file_exists_quit ${LINUX_R["FILE"]}

        # passed the if, so
        echo -e "Got it. Noting, in linux...\n>" && sleep 1 && $TEXT_E ${LINUX_R["FILE"]};;
    *) echo "Something went wrong" && exit;;
esac

