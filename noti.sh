#!/bin/bash

# CHANGE SH IF YOUR SHELL IS ZSH!

declare -A LANGUAGES
NOTI_DIRECTORY=~/code/noti # DEFINE NOTI_DIRECTORY, ex: ~/path/to/noti
NOTES_ARRAY=()
LANGUAGE_ARRAY=()
LANGUAGES=( ["js"]="javascript" ["r"]="r" ["tm"]="tmux" ["rx"]="regex" ["sql"]="sql" ["js"]="javascript" ["re"]="react" ["ht"]="html" ["rb"]="ruby" ["sh"]="bash" ["rs"]="rust" ["ts"]="typescript" ["css"]="css" ["cs"]="csharp" ["go"]="golang" ["ph"]="php" ["py"]="python" ["ra"]="rails" ["th"]="three.js" ["vi"]="vim" ["gi"]="git" ["lu"]="lua" ["no"]="node.js" ["sa"]="sass" ["mo"]="mongodb" )

FIND_NOTES() {
    DIR="${NOTI_DIRECTORY}/languages/$1"

    for file in "$DIR"/*
        do
            if [ -f "$file" ];
                then
                filename=$(basename -- "$file")
                extension="${filename##*.}"
                filename="${filename%.*}"

                NOTES_ARRAY+=( "$filename" )
           fi
    done
}

FIND_LANGUAGES() {
    DIR="${NOTI_DIRECTORY}/languages"

    for file in "$DIR"/*
        do
            if [ -d "$file" ];
                then
                filename=$(basename -- "$file")
                extension="${filename##*.}"
                filename="${filename%.*}"

                LANGUAGE_ARRAY+=( "$filename" )
            fi
    done
}

READ_NOTES() {
    if [[ "${NOTES_ARRAY[*]}" =~ " $2 " ]];
        then
            DIR="${NOTI_DIRECTORY}/languages"
            echo ""
            cat ${DIR}/$1/$2.txt
            echo ""
    else
        echo "File does not exist"
    fi
}

MOD_LAST_FILE() {
    if [[ "${LANGUAGE_ARRAY[*]}" =~ " $1 " ]] && [[ "${NOTES_ARRAY[*]}" =~ " $2 " ]];
        then
        DIR="${NOTI_DIRECTORY}/languages"
        LAST_MODIFIED_FILE=$(ls -Art | tail -n 1)
        cat ${DIR}/$1/$2.txt >> $LAST_MODIFIED_FILE
    else
        echo "Language or file is not supported"
    fi
}

FIND_LANGUAGES
if [[ "$1" == "-w" ]];
    then
    FIND_NOTES $2
    MOD_LAST_FILE $2 $3
elif [[ "$1" == "-l" ]];
    then
        echo "Supported languages: "
        for i in "${LANGUAGE_ARRAY[@]}";
        do
            echo "$i - ${LANGUAGES[$i]}";
        done
elif [[ "${LANGUAGE_ARRAY[*]}" =~ " $1 " ]];
    then
    FIND_NOTES $1
    READ_NOTES $1 $2
else
    echo "language not supported"
fi
