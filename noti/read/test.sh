source ~/code/noti/noti/startup.sh
source ~/code/noti/noti/find_.sh

NOTE=$1
FILE="$NOTE.txt"
LANGUAGE=$2

CLI_R=(["FILE"]="$NOTI_DIRECTORY/linux/$FILE" ["ARRAY"]="$CLI")
DEFINITION_R=(["FILE"]="$NOTI_DIRECTORY/definition/$FILE" ["ARRAY"]="$DEFINITIONS")
NOTES_R=(["FILE"]="$NOTI_DIRECTORY/dev_notes/languages/$LANGUAGE/$FILE" ["ARRAY"]="$NOTES")
READERS=($CLI_R $DEFINITION_R $NOTES_R)

for reader in ${READERS[@]}
    do 
        echo $reader
done
