source ~/code/noti/noti/find_.sh
# declare -A LANGUAGES
# LANGUAGES=( ["js"]="javascript" ["st"]="stylus" ["le"]="less" ["r"]="r" ["tm"]="tmux" ["rx"]="regex" ["sql"]="sql" ["js"]="javascript" ["re"]="react" ["ht"]="html" ["rb"]="ruby" ["sh"]="bash" ["rs"]="rust" ["ts"]="typescript" ["css"]="css" ["cs"]="csharp" ["go"]="golang" ["ph"]="php" ["py"]="python" ["ra"]="rails" ["th"]="three.js" ["vi"]="vim" ["gi"]="git" ["lu"]="lua" ["no"]="node.js" ["sa"]="sass" ["mo"]="mongodb" )
NOTI_D=~/code/noti
NOTE=$1
FILE="$NOTE.txt"
LANGUAGE=$2

CLI_T="this is cli_t, for test"
DEFINITIONS_T="this is defi_t, for test"
NOTES_T="this is notes_t, for test"

declare -A CLI_R 
CLI_R=(["FILE"]="$NOTI_D/linux/$FILE" ["ARRAY"]="$CLI_T")
declare -A DEFINITION_R 
DEFINITION_R=(["FILE"]="$NOTI_D/definition/$FILE" ["ARRAY"]="$DEFINITIONS_T")
declare -A NOTES_R 
NOTES_R=(["FILE"]="$NOTI_D/dev_notes/languages/$LANGUAGE/$FILE" ["ARRAY"]="$NOTES_T")
READERS=(${CLI_R[@]} ${DEFINITION_R[@]} ${NOTES_R[@]})

if command echo "hello" ;
    then
        echo "it worked"
fi


echo "This is CLI_R's file ${CLI_R["FILE"]}"
echo "This is DEF_R's file ${DEFINITION_R["FILE"]}"
echo "This is NOT_R's file ${NOTES_R["FILE"]}"

#     if [[ "${NOTES_ARRAY[*]}" =~ " $2 " ]];
#         then
#             DIR="${NOTI_DIRECTORY}/dev_notes/languages"
#             echo ""
#             cat ${DIR}/$1/$2.txt
#             echo ""
#     else
#         echo "File does not exist"
#     fi
