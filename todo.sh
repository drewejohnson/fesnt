#!/bin/bash
# print todo items

function findtodo {
    grep -n "$1" *.py | tr -s " " | sed "s/: /:/g"
    grep -n "$1" -r --include="*.tex" | tr -s " " | sed "s/: /:/g"
    return 0
}
echo "Crucial"
echo "-------"
findtodo "TODO: "

echo "" 
echo "Wishlist" 
echo "--------"
findtodo "TODO:W: "

