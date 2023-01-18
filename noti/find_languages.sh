source ~/code/noti/noti/variables.sh
LANGUAGE_ARRAY=()
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
