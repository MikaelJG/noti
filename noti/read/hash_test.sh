declare -A LANGUAGES
LANGUAGES=(["js"]="javascript" ["st"]="stylus" ["le"]="less" ["r"]="r" ["tm"]="tmux" ["rx"]="regex" ["sql"]="sql" ["js"]="javascript" ["re"]="react" ["ht"]="html" ["rb"]="ruby" ["sh"]="bash" ["rs"]="rust" ["ts"]="typescript" ["css"]="css" ["cs"]="csharp" ["go"]="golang" ["ph"]="php" ["py"]="python" ["ra"]="rails" ["th"]="three.js" ["vi"]="vim" ["gi"]="git" ["lu"]="lua" ["no"]="node.js" ["sa"]="sass" ["mo"]="mongodb")

for thing in "${!LANGUAGES[@]}"; 
do
    echo "$thing - ${LANGUAGES[$thing]}";
done

