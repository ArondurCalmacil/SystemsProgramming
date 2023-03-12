#!/bin/bash
chmod +x trivial.sh
i=1
for arg in "$@"; do
    echo "$i= $arg"
    ((i++))
    if [ $i -gt 9 ]; then
        break
    fi
done

while [ $i -lt 10 ]
do
    echo "$i= "
    ((i++))
done

# The difference between ./trivial.sh "This is a string" '$1' and ./trivial.sh "This is a string" "$1"
# is that the single quotes litrally pass the "$1" into the script  whereas the double quotes pass the value of $1 into the cript
