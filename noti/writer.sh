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

exists_quit() {
    if [ -e $1 ]; then
        echo "The file already exists.
        Edit it with Noti -e."
        exit
    fi
}

case $NOTE_D in
    -wd) 
        exists_quit $DEFINITION_R["FILE"] 
        
        echo "Got it. In dictionnary...
>" 
        $TEXT_E ${DEFINITION_R["FILE"]};;

    -wl) 
        exists_quit $NOTES_R["FILE"]

        echo "Got it. In languages...
>" 
        $TEXT_E ${NOTES_R["FILE"]};;
    -wt) 
        exists_quit $TOOLS_R["FILE"]

        echo "Got it. In tools...
>" 
        $TEXT_E ${TOOLS_R["FILE"]};;
    -wx) 
        exists_quit $LINUX_R["FILE"]
        echo "Got it. In linux...
>" 
        $TEXT_E ${LINUX_R["FILE"]};;
    *) echo "Something went wrong"
       exit;;
esac

