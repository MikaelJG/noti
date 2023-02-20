TEXT_E="vim" # Edit this variable with the text editor of your choice

NOTE_D=$1
NOTES_D=~/code/noti/notes
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

file_exists_quit() {
    # file exists
    if [ -e $1 ]; then
        echo "
        The file already exists.
        Edit it with Noti -e."
        exit
    fi
}

no_dir_quit() {
    # file exists
    if ! [ -d $1 ]; then
        echo "
        The language or tool doesn't exists."
        exit
    fi
}

info_needed() {
    if [ -z "$3" ]; then
        echo "
        Specify a tool or language.
        Ex: noti -wt vi remap
        "
        exit
    fi
}

case $NOTE_D in
    -wd) 
        file_exists_quit ${DEFINITION_R["FILE"]} 
        
        echo "Got it. Noting, in dictionnary...
>"
        sleep 1
        $TEXT_E ${DEFINITION_R["FILE"]};;

    -wl) 
        info_needed $1 $2 $3
        file_exists_quit ${NOTES_R["FILE"]}
        no_dir_quit $NOTES_D/languages/$LANGUAGE_OR_TOOL

        echo "Got it. Noting, in languages...
>" 
        sleep 1
        $TEXT_E ${NOTES_R["FILE"]};;
    -wt) 
        info_needed $1 $2 $3
        file_exists_quit ${TOOLS_R["FILE"]}
        no_dir_quit $NOTES_D/tools/$LANGUAGE_OR_TOOL

        echo "Got it. Noting, in tools...
>" 
        sleep 1
        $TEXT_E ${TOOLS_R["FILE"]};;
    -wx) 
        file_exists_quit ${LINUX_R["FILE"]}
        echo "Got it. Noting, in linux...
>" 
        sleep 1
        $TEXT_E ${LINUX_R["FILE"]};;
    *) echo "Something went wrong"
       exit;;
esac

