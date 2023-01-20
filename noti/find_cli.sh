source ~/code/noti/noti/variables.sh
CLI_ARRAY=()
FIND_CLI() {
    DIR="${NOTI_DIRECTORY}/cli_tools"
    for file in "$DIR"/*
        do
            if [ -f "$file" ];
                then
                filename=$(basename -- "$file")
                extension="${filename##*.}"
                filename="${filename%.*}"
                CLI_ARRAY+=( "$filename" )
            fi
    done
}
