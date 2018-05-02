#! /bin/bash 
# Run all yaml files 
FILES=*.yaml

failed() {
    echo --------FAILURE--------
    echo $1
    echo -----------------------
    exit 0
}

for cFile in $FILES; do
    python fesnt.py $cFile || failed $cFile
done
