source ~/code/noti/noti/startup.sh

# Depending on topic, have notes in arrays
CLI=()
NOTES=()
DEFINITIONS=()
LANGUAGES=()

# Directions for all topics
CLI_D="${NOTI_DIRECTORY}/cli_tools"
NOTES_D="${NOTI_DIRECTORY}/dev_notes/languages/$LANGUAGE"
DEFINITIONS_D="${NOTI_DIRECTORY}/dictionary"
LANGUAGES_D="${NOTI_DIRECTORY}/dev_notes/languages"

DIRS=($CLI_D $NOTES_D $DEFINITIONS_D $LANGUAGES_D)

for directory in $DIRS
    do
        echo "$directory"
done
    
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
# create array of dir
# for all dir in dirs 
    # do for file in $dir
    #append


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
