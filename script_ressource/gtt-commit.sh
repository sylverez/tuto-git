#!bin/bash

cd gtt-workdir

echo -e "\nNous allons maintenant enregistrer notre file1 dans notre repo à l'aide de la commande commit\nLa commande commit est systematiquement accompagné d'un message de commit permettant de laisser une documentation sur les raisons de ce commit : d'où  l'utilisation de l'option -m \"MESSAGE\" \n"

shouldloop=true
while $shouldloop
do
	read -p "Pour commit, tapez git commit -m \"exemple\" ou gcmsg \"exemple\" pour zsh " strtotest
	shouldloop=false

	if [ "$strtotest" == 'git commit "exemple"' ]
	then
		git commit -m "exemple"
		echo -e "\nbien joué \n"

	elif [ "$strtotest" == 'gcmsg "exemple"' ]
	then
		git commit -m "exemple"
		echo -e "\nParfait\n"

	else
		echo "try again"
		shouldloop=true
	fi
done

echo -e "Un git status nous permet de voir que file1 n'est plus dans la staging area mais bien enregistré dans le repo :\n"
sleep 10
clear


