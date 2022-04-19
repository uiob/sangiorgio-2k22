#!/bin/zsh
clear 

source printAsciiArt.zsh

printAscii ./../txt/decodificatore.txt


echo -n "inserisci comando "
read comando


str1=""
str2=""
str3=""
count=0
while [$i!="\'"]
do
i="${comando:$count:1}"
str2=${"$str2$1"}
done

echo "$str1"

# regex="^(echo '){1}\w+(' |){1}( base64| base64 --decode)$"

# comando="echo 'ci' | base64"

# glob="@(echo ')*+( base64| base64 --decode)"

# echo "glob = "$glob""

# echo "comando = $comando"

if [[ "$comando" == "$glob" ]]
then
    echo "comando matchato!"
else
echo "comando non valido"
sleep 2
fi

#@(echo \')*@( base64| base64 --decode)

echo -n "digita menu per tornare al menu"


echo -n "\n\ninserisci comando: "

read input

if [ "$input" = "menu" ]
then
  zsh menu.zsh
else
  zsh decodificatore.zsh
fi
