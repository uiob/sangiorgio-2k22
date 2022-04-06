clear 
width4="$(stty size | cut -d" " -f3)"

numspace4=$(($width4-71))
numspace4=$(($numspace4/2))

for k in $(eval echo "{1..$numspace4}")
do
  spaces4="${spaces4} "
done

while IFS= read -r line; 
do
    echo -n "$spaces4"
    echo -n "$line"
    echo "$spaces4"
    sleep 0.1
done < walkietalkie.txt

echo "Premi un tasto qualsiasi per tornare al menu'..."
while [ true ] ; do
read -t 3 -n 1
if [ $? = 0 ] ; then
	zsh menu.zsh
exit ;
else
echo "waiting for the keypress"
fi
done