# append this example to my file. 

FILES_WITH_NOTES_ARRAY=()
LANGUAGES=( "js" "js" "react" "rb" "bash" "sh" "html" "rs" "ts" "css" "cs" )

# find the ex file

FIND_LANGUAGE_NOTES() {
    
DIR=~/code/noti/$1
    
for file in "$DIR"/*
    do
        if [ -f "$file" ];
            then
            filename=$(basename -- "$file")
            extension="${filename##*.}"
            filename="${filename%.*}"
            
            FILES_WITH_NOTES_ARRAY+=( "$filename" )
       fi
done
}

MOD_LAST_FILE() {

    if [[ "${FILES_WITH_NOTES_ARRAY[*]}" =~ " $2 " ]];
        then
        
        LAST_MODIFIED_FILE=$(ls -Art | tail -n 1)

        cat ~/code/noti/$1/$2.txt >> $LAST_MODIFIED_FILE

    else
        echo "no file with this name"
    fi
}

if [[ "${LANGUAGES[*]}" =~ " $1 " ]];
    then
    FIND_LANGUAGE_NOTES
    MOD_LAST_FILE
else 
    echo "language not supported"
fi




