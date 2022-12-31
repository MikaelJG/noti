# append this example to my file. 

FILES_WITH_NOTES_ARRAY=()
LANGUAGES=( "js" "js" "rb" "bash" "sh" "html" "rs" "ts" "css" )

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

    if [ $# -eq 2 ] && [[ "${FILES_WITH_NOTES_ARRAY[*]}" =~ " $2 " ]];
        then
        
        LAST_MODIFIED_FILE=$(ls -Art | tail -n 1)

        cat ~/code/myman/${MANUAL}/$2.txt >> $LAST_MODIFIED_FILE

    # can't add integer as arg? 
    # how to specify line number?


    elif [ $# -eq 3 ] && [[ "${FILES_WITH_NOTES_ARRAY[*]}" =~ " $2 " ]];
        then

        # prompt for number for line?
        
        LINE=$3
        # LAST_MODIFIED_FILE=$(ls -Art | tail -n 1)

        echo "$LINE is an integer"

        # cat ~/code/myman/${MANUAL}/$2.txt >> $LAST_MODIFIED_FILE

    else
        echo "no file with this name"
    fi
else
    echo "not a supported language"
fi




