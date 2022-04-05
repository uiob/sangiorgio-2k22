#!/bin/bash
#------------------
#@file:fscriptSanG.zsh
#------------------


echo "Press any key to continue"
while [ true ] ; do
read -t 3 -n 1
if [ $? = 0 ] ; then


width="$(stty size | cut -d" " -f2)"
line=""
a=1
echo "\n"
for i in {1..1}
do
	line=""
	for i in $( eval echo {1..$width} )
	do
		newchar=$(($RANDOM%2))
		line="$line$newchar"
	done
	echo -n $line

	#if [[ "$a" == '2' ]]; then
    #break
  	#fi
	sleep 0.02 #bohforseno
done



numspace=$(($width-65))

numspace=$(($numspace/2))
for i in $( eval echo {1..$numspace} )
do
  spaces="${spaces} "
done

echo -n "$spaces"
echo -n "             _________   _____    _______                       "
echo "$spaces"
echo -n "$spaces"
sleep 0.06
echo -n "            /   _____/  /  _  \   \      \                      "
echo "$spaces"
echo -n "$spaces"
sleep 0.06
echo -n "            \_____  \  /  /_\  \  /   |   \                     "
echo "$spaces"
echo -n "$spaces"
sleep 0.06
echo -n "            /        \/    |    \/    |    \                    "
echo "$spaces"
echo -n "$spaces"
sleep 0.06
echo -n "           /_______  /\____|__  /\____|__  /                    "
echo "$spaces"
echo -n "$spaces"
sleep 0.06
echo -n "                   \/         \/         \/                     "
echo "$spaces"
echo -n "$spaces"
sleep 0.06
echo -n "    ________.___________ __________  ________.___________       "
echo "$spaces"
echo -n "$spaces"
sleep 0.06
echo -n "   /  _____/|   \_____  \\______   \ /  _____/|   \_____  \      "
echo "$spaces"
echo -n "$spaces"
sleep 0.06
echo -n "  /   \  ___|   |/   |   \|       _/   \  ___|   |/   |   \     "
echo "$spaces"
echo -n "$spaces"
sleep 0.06
echo -n "  \    \_\  \   /    |    \    |   \    \_\  \   /    |    \    "
echo "$spaces"
echo -n "$spaces"
sleep 0.06
echo -n "   \______  /___\_______  /____|_  /\______  /___\_______  /    "
echo "$spaces"
echo -n "$spaces"
sleep 0.06
echo -n "          \/            \/       \/        \/            \/     "
echo "$spaces"
echo -n "$spaces"
sleep 0.06
echo -n "           ________  ____  __.________ ________                 "
echo "$spaces"
echo -n "$spaces"
sleep 0.06
echo -n "           \_____  \|    |/ _|\_____  \\_____   \                "
echo "$spaces"
echo -n "$spaces"
sleep 0.06
echo -n "            /  ____/|      <   /  ____/ /  ____/                "
echo "$spaces"
echo -n "$spaces"
sleep 0.06
echo -n "           /       \|    |  \ /       \/       \                "
echo "$spaces"
echo -n "$spaces"
sleep 0.06
echo -n "           \_______ \____|__ \\_______ \_______ \                "
echo "$spaces"
echo -n "$spaces"
sleep 0.06
echo -n "                   \/       \/        \/      \/                "
echo "$spaces"
echo -n "$spaces"
sleep 0.06
echo -n "                                                                "
echo "$spaces"
echo -n "$spaces"
echo -n "       ____________________ ____________   _________            "
echo "$spaces"
echo -n "$spaces"
sleep 0.06
echo -n "       \______   \______   \\_____   \   \ /   /  _  \           "
echo "$spaces"
echo -n "$spaces"
sleep 0.06
echo -n "        |     ___/|       _/ /   |   \   Y   /  /_\  \          "
echo "$spaces"
echo -n "$spaces"
sleep 0.06
echo -n "        |    |    |    |   \/    |    \     /    |    \         "
echo "$spaces"
echo -n "$spaces"
sleep 0.06
echo -n "        |____|    |____|_  /\_______  /\___/\____|__  /         "
echo "$spaces"
echo -n "$spaces"
sleep 0.06
echo -n "                         \/         \/              \/          "
echo "$spaces"
echo -n "$spaces"
sleep 0.06
echo -n "   ___ ___    _____  _________  ____  __._____________________  "
echo "$spaces"
echo -n "$spaces"
sleep 0.06
echo -n "  /   |   \  /  _  \ \_   ___ \|    |/ _|\_   _____/\______   \ "
echo "$spaces"
echo -n "$spaces"
sleep 0.06
echo -n " /    ~    \/  /_\  \/    \  \/|      <   |    __)_  |       _/ "
echo "$spaces"
echo -n "$spaces"
sleep 0.06
echo -n " \    Y    /    |    \     \___|    |  \  |        \ |    |   \ "
echo "$spaces"
echo -n "$spaces"
sleep 0.06
echo -n "  \___|_  /\____|__  /\______  /____|__ \/_______  / |____|_  / "
echo "$spaces"
echo -n "$spaces"
sleep 0.06
echo -n "        \/         \/        \/        \/        \/         \/  "
echo "$spaces"

echo " "
echo " "
sleep 0.2
echo "IN QUESTA PROVA DOVRETE TROVARE LA PASSWORD "
sleep 0.2
echo "Premi un tasto qualsiasi per accedere al menu'..."
while [ true ] ; do
read -t 3 -n 1
if [ $? = 0 ] ; then
./menu.zsh
exit ;
else
echo "waiting for the keypress"
fi
done
else
echo "waiting for the keypress"
fi
done