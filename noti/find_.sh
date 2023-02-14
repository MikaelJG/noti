# declare -A LANGUAGES
# LANGUAGES=( ["js"]="javascript" ["st"]="stylus" ["le"]="less" ["r"]="r" ["tm"]="tmux" ["rx"]="regex" ["sql"]="sql" ["js"]="javascript" ["re"]="react" ["ht"]="html" ["rb"]="ruby" ["sh"]="bash" ["rs"]="rust" ["ts"]="typescript" ["css"]="css" ["cs"]="csharp" ["go"]="golang" ["ph"]="php" ["py"]="python" ["ra"]="rails" ["th"]="three.js" ["vi"]="vim" ["gi"]="git" ["lu"]="lua" ["no"]="node.js" ["sa"]="sass" ["mo"]="mongodb" )
NOTI_D=~/code/noti

# have hash for cli
# ["ARRAY"]=CLI, ["DIR"]=CLI_D, ["READER"]=CLI_R

# Depending on topic, have notes in arrays
CLI=()
NOTES=()
DEFINITIONS=()
LANGUAGES=()

# Directions for all topics
CLI_D="${NOTI_D}/linux"
NOTES_D="${NOTI_D}/dev_notes/languages/$LANGUAGE"
DEFINITIONS_D="${NOTI_D}/dictionary"
LANGUAGES_D="${NOTI_D}/dev_notes/languages"

DIRS=($CLI_D $NOTES_D $DEFINITIONS_D $LANGUAGES_D)
echo ${#DIRS[@]}

for directory in ${DIRS[@]}
    do
        for file in "$directory"/*
            do
               if [ -f "$file" ];
                    then
                        filename=$(basename -- "$file")
                        extension="${filename##*.}"
                        filename="${filename%.*}"
                        CLI_ARRAY+=( "$filename" )
                fi
        done
done

echo ${CLI[@]}
echo ${NOTES[@]}
echo ${DEFINITIONS[@]}
echo ${LANGUAGES[@]}
