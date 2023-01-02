# projects array
projects=("prp" "csc" "sar" "les" "fen" "tho" "tra" "oth" "sca")
priorities=("blue" "orange" "red")
commands=("edit" "cat" "all" "reset")

# a function to write task in file

write() {
	# get time
	
	TIMESTAMP=$(date +"%m-%d-%Y")
	
	# write values in right file

    echo "| $project | $priority | $TIMESTAMP | - $task" >> ~/miikey/notes/me/$priority/$project

    # print updated file
	    
    cat ~/miikey/notes/me/$priority/$project
}

printAll() {
    for filename in /home/leeroy/miikey/notes/me/$priority/*; do
				if [ -f "$filename" ]; 
				    then 

					# find the number of lines in the doc

					NLINES=$(wc -l < "$filename")

					# substract lines of the header

					COUNT=$((NLINES - 4))

					# echo the number of lines calculates (see only the tasks)

					tail -$COUNT $filename
				fi
	done

}

##### if 1 arg
##### me sar

if [ $# -eq 1 ] && [[ " ${projects[*]} " =~ " $1 " ]]; then

    project=$1

    # ask for task

    read -p "Gi'me
    >" task

    # ask for priority

    read -p "Blue?
    >" priority

    # if not empty, blue is default

    defaultPriority=${priority:="blue"}

    # write in file
    
    write


##### me all
##### me reset
elif [ $# -eq 1 ] && [[ " ${commands[*]} " =~ " $1 " ]]; then

    for filename in /home/leeroy/miikey/notes/me/red/*; do
				if [ -f "$filename" ]; 
				    then 

					# find the number of lines in the doc

					NLINES=$(wc -l < "$filename")

					# substract lines of the header

					COUNT=$((NLINES - 4))

					# echo the number of lines calculates (see only the tasks)

					tail -$COUNT $filename
				fi
    done

    for filename in /home/leeroy/miikey/notes/me/orange/*; do
				if [ -f "$filename" ]; 
				    then 

					# find the number of lines in the doc

					NLINES=$(wc -l < "$filename")

					# substract lines of the header

					COUNT=$((NLINES - 4))

					# echo the number of lines calculates (see only the tasks)

					tail -$COUNT $filename
				fi
    done

    for filename in /home/leeroy/miikey/notes/me/blue/*; do
				if [ -f "$filename" ]; 
				    then 

					# find the number of lines in the doc

					NLINES=$(wc -l < "$filename")

					# substract lines of the header

					COUNT=$((NLINES - 4))

					# echo the number of lines calculates (see only the tasks)

					tail -$COUNT $filename
				fi
    done



##### me sar blue

elif [ $# -eq 2 ] && [[ " ${projects[*]} " =~ " $1 " ]]; then

    project=$1

    # ask for task

    read -p "Gi'me
    >" task

    # check given priority

    if [[ " ${priorities[*]} " =~ " $2 " ]]; then
        priority=$2
    else 
        read -p "Blue?
         #>" priority

        #if empty, blue is default

        defaultPriority=${priority:="blue"}
    fi

    # write and cat

    write

##### me edit sar blue

elif [ $# -eq 3 ] && [[ " ${commands[*]} " =~ " $1 " ]] && [[ " ${projects[*]} " =~ " $2 " ]] && [[ " ${priorities[*]} " =~ " $3 " ]]; then

    priority=$3
    project=$2

    # based on command open or cat

    case $1 in
        edit)
            vim ~/miikey/notes/me/$priority/$project
            exit;;
        cat)
            cat ~/miikey/notes/me/$priority/$project
            exit;;
    esac

##### me edit sar
##### me cat sar

elif [ $# -eq 2 ] && [[ " ${commands[*]} " =~ " $1 " ]] && [[ " ${projects[*]} " =~ " $2 " ]]; then
        
    echo "me edit sar elif"
    
    # project is given
    project=$2

    read -p "Blue?
    >" priority

    #if empty, blue is default

    if [[ " ${priorities[*]} " =~ " $2 " ]]; then
        priority=$2
    else 

        #if empty, blue is default

        defaultPriority=${priority:="blue"}
    fi

    case $1 in
        edit)
            vim ~/miikey/notes/me/$priority/$project
            exit;;
        cat)
            cat ~/miikey/notes/me/$priority/$project
            exit;;
    esac

else
    echo "I don't get it"
fi

