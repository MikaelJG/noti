foo=()

bar=( "this" "is" "the" "best" "tdd" )

for i in "${bar[@]}"
    do
        foo+=($i)
done
