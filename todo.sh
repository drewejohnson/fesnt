#!/bin/bash
# print todo items

function findtodo {
    grep -n "$1" *.py | tr -s " " | sed "s/: /:/g"
    return 0
}
findtodo "TODO: "
echo "Crucial"
echo "-------"

echo "" 
echo "Wishlist" 
echo "--------"
findtodo "TODO:W: "

