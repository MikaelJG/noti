source ~/code/noti/noti/startup.sh
DEFINITIONS_ARRAY=()
FIND_DEFINITIONS() {
    DIR="${NOTI_DIRECTORY}/dictionary"
    for file in "$DIR"/*
        do
            if [ -f "$file" ];
                then
                filename=$(basename -- "$file")
                extension="${filename##*.}"
                filename="${filename%.*}"
                DEFINITIONS_ARRAY+=( "$filename" )
            fi
    done
}
