#!/bin/zsh
 printNotCentered () {
    while IFS= read -r line; 
    do
        echo "$line"
        sleep 0.1
    done < "$1"  
 }