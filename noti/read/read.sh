source ~/code/noti/noti/find_.sh
declare -A LANGUAGES
LANGUAGES=( ["js"]="javascript" ["st"]="stylus" ["le"]="less" ["r"]="r" ["tm"]="tmux" ["rx"]="regex" ["sql"]="sql" ["js"]="javascript" ["re"]="react" ["ht"]="html" ["rb"]="ruby" ["sh"]="bash" ["rs"]="rust" ["ts"]="typescript" ["css"]="css" ["cs"]="csharp" ["go"]="golang" ["ph"]="php" ["py"]="python" ["ra"]="rails" ["th"]="three.js" ["vi"]="vim" ["gi"]="git" ["lu"]="lua" ["no"]="node.js" ["sa"]="sass" ["mo"]="mongodb" )
NOTI_D=~/code/noti
NOTE=$1
FILE="$NOTE.txt"
LANGUAGE=$2

declare -A NOTES_R 
declare -A DEFINITION_R 
declare -A CLI_R 
CLI_R=(["FILE"]="$NOTI_D/linux/$FILE" ["ARRAY"]="$CLI")
DEFINITION_R=(["FILE"]="$NOTI_D/definition/$FILE" ["ARRAY"]="$DEFINITIONS")
NOTES_R=(["FILE"]="$NOTI_D/dev_notes/languages/$LANGUAGE/$FILE" ["ARRAY"]="$NOTES")
READERS=($CLI_R $DEFINITION_R $NOTES_R)

echo ${CLI_R[@]}