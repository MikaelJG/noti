# append this example to my file. 

FILES_WITH_NOTES_ARRAY=()
LANGUAGES=( "js" "js" "re" "ht" "rb" "sh" "rs" "ts" "css" "cs" )

# find the ex file

FIND_READ_LANGUAGE_NOTES() {
    
    DIR=~/code/noti/$1
    echo $DIR
    
    for file in "$DIR"/*
        do
            if [ -f "$file" ];
                then
                filename=$(basename -- "$file")
                extension="${filename##*.}"
                filename="${filename%.*}"
                
                LANGUAGE_NOTES_ARRAY+=( "$filename" )
           fi
    done

    echo ${LANGUAGE_NOTES_ARRAY[@]}
    echo $2

    if [[ "${LANGUAGE_NOTES_ARRAY[*]}" =~ " $2 " ]];
        then
            echo ""
            cat ~/code/noti/$1/$2
            echo ""
    else
        echo "File does not exist"
    fi
}

MOD_LAST_FILE() {

    if [[ "${LANGUAGES[*]}" =~ " $2 " ]] && [[ "${FILES_WITH_NOTES_ARRAY[*]}" =~ " $3 " ]];
        then
        
        LAST_MODIFIED_FILE=$(ls -Art | tail -n 1)

        cat ~/code/noti/$1/$2.txt >> $LAST_MODIFIED_FILE
    else
        echo "Language or file is not supported"
    fi
}

if [[ "$1" == "-w" ]];
    then
    FIND_READ_LANGUAGE_NOTES
    MOD_LAST_FILE

elif [[ "${LANGUAGES[*]}" =~ " $1 " ]];
    then
    echo "in elif"
    FIND_READ_LANGUAGE_NOTES $1 $2
else 
    echo "language not supported"
fi




