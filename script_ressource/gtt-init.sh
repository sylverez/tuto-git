#!bin/bash
clear
echo "La première commande à connaitre est git init. Elle crée un dossier .gitdans votre working directory et l'initialise en tant que repository, ou repo pour faire court. Le repo est votre base de donnée qui stockera vos fichiers, ainsi que l'historique de leurs modification.

Pour le moment, votre repo est uniquement stocké localement. Nous verrons plus tard comment le stocker sur un serveur distant (remote) et synchroniser le repo local avec le remote.

Mais une chose à la fois ! Pour le moment, on va se contenter d'initialiser un repo local"

cd gtt-workdir
touch .gitignore
echo "README.txt" > .gitignore && echo ".gitignore" >> .gitignore

shouldloop=true
while $shouldloop
do
	read -p "taper \"git init\" pour initialiser votre repo : " strtotest
	shouldloop=false

	if [ "$strtotest" == "git init" ]
	then
		echo""
		git init
		echo -e  "\nBien joué !\n"
	else
		echo -e "\nEssaie encore...\n"
		shouldloop=true
	fi
done

sleep 3
clear
