FIND_IN_ALL() {
    for i in "${LANGUAGE_ARRAY[@]}"
        do
        FIND_NOTES $i
        READ_NOTES $i $2
    done
}

# elif [[ " $1 " == "-a" ]];
#    then
#    FIND_IN_ALL $1 $2
#
