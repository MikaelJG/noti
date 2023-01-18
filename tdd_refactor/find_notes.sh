source variables.sh
NOTES_ARRAY=()
FIND_NOTES() {
    DIR="${NOTI_DIRECTORY}/languages/lu"
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

FIND_NOTES
