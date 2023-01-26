source ~/code/noti/noti/variables.sh
NOTES_ARRAY=()
FIND_NOTES() {
    DIR="${NOTI_DIRECTORY}/dev_notes/languages/$1"
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
