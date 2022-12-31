# append this example to my file. 

FILES_WITH_NOTES_ARRAY=()
LANGUAGES=( "js" "js" "react" "rb" "bash" "sh" "html" "rs" "ts" "css" "cs" )

# find the ex file

if [[ "${LANGUAGES[*]}" =~ " $1 " ]];
    then
    
    MANUAL="$1"man

    DIR=~/code/myman/${MANUAL}

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

    if [[ "${FILES_WITH_NOTES_ARRAY[*]}" =~ " $2 " ]];
        then
        
        LAST_MODIFIED_FILE=$(ls -Art | tail -n 1)

        cat ~/code/myman/${MANUAL}/$2.txt >> $LAST_MODIFIED_FILE

    else
        echo "no file with this name"
    fi

else 
    echo "language not supported"

fi




