source ~/code/noti/noti/startup.sh

# Depending on topic, have notes in arrays
CLI=()
NOTES=()
DEFINITIONS=()
LANGUAGES=()

# Directions for all topics
CLI_D="${NOTI_DIRECTORY}/cli_tools"
NOTES_D
DEFINITIONS_D="${NOTI_DIRECTORY}/dictionary"
LANGUAGES_D

# create array of dir
# for all dir in dirs 
    # do for file in $dir
    #append


# Depending on topic, append notes 
FIND_CLI() {
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

FIND_DEFINITIONS() {
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

FIND_LANGUAGES() {
    DIR="${NOTI_DIRECTORY}/dev_notes/languages"
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
