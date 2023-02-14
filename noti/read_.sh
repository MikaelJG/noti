source ~/code/noti/noti/find_.sh
declare -A LANGUAGES
LANGUAGES=(["js"]="javascript" ["st"]="stylus" ["le"]="less" ["r"]="r" ["tm"]="tmux" ["rx"]="regex" ["sql"]="sql" ["js"]="javascript" ["re"]="react" ["ht"]="html" ["rb"]="ruby" ["sh"]="bash" ["rs"]="rust" ["ts"]="typescript" ["css"]="css" ["cs"]="csharp" ["go"]="golang" ["ph"]="php" ["py"]="python" ["ra"]="rails" ["th"]="three.js" ["vi"]="vim" ["gi"]="git" ["lu"]="lua" ["no"]="node.js" ["sa"]="sass" ["mo"]="mongodb")
NOTI_D=~/code/noti
NOTE=$1
FILE="$NOTE.txt"
LANGUAGE=$2

declare -A CLI_R 
CLI_R=(["FILE"]="$NOTI_D/dev_notes/linux/$FILE")
declare -A DEFINITION_R 
DEFINITION_R=(["FILE"]="$NOTI_D/definition/$FILE")
declare -A NOTES_R 
NOTES_R=(["FILE"]="$NOTI_D/dev_notes/languages/$LANGUAGE/con/$FILE")

if command cat ${DEFINITION_R["FILE"]};
    then 
        echo "found in definitions"
elif command cat ${NOTES_R["FILE"]};
    then
        echo "found in notes"
elif command cat ${CLI_R["FILE"]};
    then
        clear
        echo "Got it. In cli:
>"
        sleep 1
        cat ${CLI_R["FILE"]}
        exit
else
    echo "Couln't find the file"
fi


# echo "This is CLI_R's file ${CLI_R["FILE"]}"
# echo "This is DEF_R's file ${DEFINITION_R["FILE"]}"
# echo "This is NOT_R's file ${NOTES_R["FILE"]}"
# 
# cat ${CLI_R["FILE"]};

#     if [[ "${NOTES_ARRAY[*]}" =~ " $2 " ]];
#         then
#             DIR="${NOTI_DIRECTORY}/dev_notes/languages"
#             echo ""
#             cat ${DIR}/$1/$2.txt
#             echo ""
#     else
#         echo "File does not exist"
#     fi
