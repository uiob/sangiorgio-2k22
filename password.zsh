clear 
width4="$(stty size | cut -d" " -f3)"

numspace4=$(($width4-71))
numspace4=$(($numspace4/2))

for k in $(eval echo "{1..$numspace4}")
do
  spaces4="${spaces4} "
done

echo "Inserisci password.... "
read pw

if [ "$pw" = "pw1" ]
then
while IFS= read -r line; 
do
    echo -n "$spaces4"
    echo -n "$line"
    echo "$spaces4"
    sleep 0.1
done < provasuperata.txt
    exit ;
else 
    echo "PASSWORD ERRATA!"
    sleep 3
    zsh menu.zsh
fi

