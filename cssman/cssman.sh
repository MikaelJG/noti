DIR=~/code/myman/cssman
FILES_WITH_NOTES_ARRAY=()
# COUNT=0

for file in "$DIR"/*
do
    if [ -f "$file" ];
        then

        filename=$(basename -- "$file")
        extension="${filename##*.}"
        filename="${filename%.*}"

        FILES_WITH_NOTES_ARRAY+=( "$filename" )

    fi
done

# if $1 is in array. 

if [[ " ${FILES_WITH_NOTES_ARRAY[*]}" =~ " $1 " ]]; 
    then

    echo " "
    echo " "

    cat ~/code/myman/cssman/$1.txt

    echo " "
    echo " "
else
    echo "no file with this name"
fi

