#!bin/bash

cd gtt-workdir
clear

#message d'accueil

echo "Nous allons apprendre à utiliser les conmande add, rm et status

la commande add permet de passer un ou des fichier(s) sur lequel vous avez travaillé (créé ou modifié) de l'état de modified (ou untracked si il s'agit d'un fichier fraichement créé) vers l'état de staged i:e prêt à être enregistré dans le repo.

la command rm permet de retirer des fichiers de l'état de staged.

la commande status permet de lister les fichiers présents sur votre espace des travail et de connaitre dans quel état il se trouve : untracked/modified, ou staged. 
"
##CREATION FICHIER

sleep 3
echo -e "\nCommençons par créer quelque fichiers.\n"
sleep 1

shouldloop=true
while $shouldloop
do
	read -p "Entrez \"touch file1 file2 file3 \" : " strtotest
	shouldloop=false
	
	if [ "$strtotest" == 'touch file1 file2 file3' ]
	then
		touch file1 file2 file3
		echo -e "\nParfait ! vos fichiers ont bien été créé !\n"
		echo "" && ls -lA | grep file && echo ""
	else
		echo -e "\nTry again : \n"
		shouldloop=true
	fi
done

## ADD FILE1 AND FILE2

shouldloop=true
while $shouldloop
do
	read -p "A présent, tapez \"git add file1 file2 \" pour ajouter ces fichiers. Si vous travaillez sur zsh vous pouvez vous contenter de \"ga file1 file2 \" : " strtotest

	shouldloop=false
	if [ "$strtotest" == 'git add file1 file2' ]
	then
		git add file1 file2
		echo -e "\nOkaykaykay !\n"

	elif [ "$strtotest" == 'ga file1 file2' ]
	then
		git add file1 file2
		echo -e "\nOoOkaY !\n"
	else
		echo -e "\nTry again...\n"
		shouldloop=true
	fi
done

## GST

shouldloop=true
while $shouldloop
do
	read -p "A présent, tapez \"git status\" pour observer l'état de votre staging area. Si vous travaillez sur zsh vous pouvez vous contenter de \"gst\" : " strtotest
	shouldloop=false

	if [ "$strtotest" == 'git status' ]
	then
		git status
		echo -e  "\nKewl\n"
	elif [ "$strtotest" == 'gst' ]
	then
		git status
		echo -e "\nNoice !\n"
	else
		echo -e "\nRespect my authority! try again... :\n"
		shouldloop=true
	fi
done




shouldloop=true
while $shouldloop
do
	read -p "Nous allons supprimer le file2 avec l'option --cached et coupler cette commande avec un git status pour voir immediatement les changements. Tapez \"git rm --cached file2 && git status\" ou si vous faite partie de la zsh-team \"grmc file2 && gst\" " strtotest
	shouldloop=false

	if [ "$strtotest" == 'git rm --cached file2 && git status' ]
	then
		git rm --cached file2 && git status

	elif [ "$strtotest" == 'grmc file2 && gst' ]
	then
		git rm --cached file2 && git status
	else
		echo -e "\nAttention au erreur de frappe, essaie encore :\n"
		shouldloop=true
	fi
done
sleep 5
clear
