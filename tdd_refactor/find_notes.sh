source variables.sh
NOTES_ARRAY=()
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
echo "hello from find_notes.sh"
echo "first arg is $1"
FIND_NOTES
