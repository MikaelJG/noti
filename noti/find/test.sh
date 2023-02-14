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

echo "${DIRS[@]}"

for directory in ${DIRS[@]}
    do
        echo "$directory"
done
