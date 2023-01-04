declare -A LANGUAGES
NOTES_ARRAY=()
LANGUAGE_ARRAY=()
LANGUAGES=( ["javascript"]="js" ["javascript"]="js" ["react"]="re" ["html"]="ht" ["ruby"]="rb" ["bash"]="sh" ["rust"]="rs" ["typescript"]="ts" ["css"]="css" ["csharp"]="cs" )
# LANGUAGES=( "js" "js" "re" "ht" "rb" "sh" "rs" "ts" "css" "cs" )

echo "${LANGUAGES[@]}"
echo "${!LANGUAGES[@]}"
echo "${LANGUAGES[js]}"

# find the ex file

FIND_NOTES() {
    DIR=~/code/noti/languages/$1
    
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
    DIR=~/code/noti/languages
    
    for file in "$DIR"/*
        do
                filename=$(basename -- "$file")
                extension="${filename##*.}"
                filename="${filename%.*}"
                
                LANGUAGE_ARRAY+=( "$filename" )
    done
    echo "Supported languages: "
    echo "> ${LANGUAGE_ARRAY[@]}"
}


READ_NOTES() {
    if [[ "${NOTES_ARRAY[*]}" =~ " $2 " ]];
        then
            echo ""
            cat ~/code/noti/languages/$1/$2.txt
            echo ""
    else
        echo "File does not exist"
    fi
}

MOD_LAST_FILE() {
    if [[ "${LANGUAGES[*]}" =~ " $1 " ]] && [[ "${NOTES_ARRAY[*]}" =~ " $2 " ]];
        then
        LAST_MODIFIED_FILE=$(ls -Art | tail -n 1)
        cat ~/code/noti/languages/$1/$2.txt >> $LAST_MODIFIED_FILE
    else
        echo "Language or file is not supported"
    fi
}

if [[ "$1" == "-w" ]];
    then
    FIND_NOTES $2
    MOD_LAST_FILE $2 $3
elif [[ "$1" == "-l" ]];
    then
    FIND_LANGUAGES
elif [[ "${LANGUAGES[*]}" =~ " $1 " ]];
    then
    FIND_NOTES $1
    READ_NOTES $1 $2
else 
    echo "language not supported"
fi




