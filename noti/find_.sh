source ~/code/noti/noti/startup.sh

# Depending on topic, have notes in arrays
CLI=()
NOTES=()
DEFINITIONS=()
LANGUAGES=()

# Directions for all topics
CLI_D="${NOTI_DIRECTORY}/linux"
NOTES_D="${NOTI_DIRECTORY}/dev_notes/languages/$LANGUAGE"
DEFINITIONS_D="${NOTI_DIRECTORY}/dictionary"
LANGUAGES_D="${NOTI_DIRECTORY}/dev_notes/languages"

DIRS=($CLI_D $NOTES_D $DEFINITIONS_D $LANGUAGES_D)

for directory in ${DIRS[@]}
    do
        for file in "$directory"/*
            do
               if [ -f "$file" ];
                    then
                        filename=$(basename -- "$file")
                        extension="${filename##*.}"
                        filename="${filename%.*}"
                        CLI_ARRAY+=( "$filename" )
                fi
        done
done


echo ${CLI[@]}
echo ${NOTES[@]}
echo ${DEFINITIONS[@]}
echo ${LANGUAGES[@]}
