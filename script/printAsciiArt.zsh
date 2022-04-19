 #!/bin/zsh

 printAscii () {
    firstRow=$(head -n 1 "$1")
    imgWidth=${#firstRow}

    windowWidth="$(stty size | cut -d" " -f2)"

    numspace=$(($windowWidth-$imgWidth))
    numspace=$(($numspace/2))

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
