 #!/bin/bash

 printAscii () {
    firstRow=$(head -n 1 "$1")
    imgWidth=${#firstRow}

    echo "image width= $imgWidth"

    windowWidth="$(stty size | cut -d" " -f2)"

    echo "window width= $windowWidth"

    numspace=$(($windowWidth-$imgWidth))
    numspace=$(($numspace/2))

    echo "calculated $numspace spaces per side"

    for k in $(eval echo "{1..$numspace}")
    do
    spaces="${spaces} "
    done

    while IFS= read -r line; 
    do
        echo -n "$spaces"
        echo -n "$line"
        echo "$spaces"
        sleep 0.1
    done < "$1"
 }
