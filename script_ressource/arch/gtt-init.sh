#!bin/bash

#message d'accueil
clear

echo " Bienvenue dans ce tutoriel pour se familiariser avec Git ! 

Git est un logiciel de gestion de version (version control).

La gestion de version est une pratique qui consiste à stocker un ensemble de fichiers en conservant la chronologie de toutes les modifications qui ont été effectuées dessus.


Pour bien débuter ce tuto, vous devez savoir que git va considérer les fichiers dans l'un de ces trois états  : 

modified : le fichier à été modifié mais n'est pas enregistré dans la base de données

staged : le fichier à été modifié et est prêt à être enregistré dans la base de données

committed :le fichier est enregistré dans votre base de données.
"

shouldloop=true
while $shouldloop
do
	read -p "entrer y pour passer a la suite " strtotest
	shouldloop=false

	if [ $strtotest == 'y' ]
	then
		clear

	elif [ $strtotest == 'Y' ]
	then
		clear

	else
		echo -e " \n prenez votre temps...\n "
		shouldloop=true
	fi
done


#création d'un working directory pour le tuto
mkdir gtt-workdir
cd gtt-workdir

touch README.txt
echo "ce dossier gtt-dir existe car vous avez utilisé tuto-git. il doit contenir les outputs des commande passées et devrait être supprimé à la fin du tutoriel. Si vous lisez ce message, c'est que vous avez quitté le tuto de manière prématuré, ou que quelque chose c'est mal passé... En tout les cas vous pouvez supprimer ce dossier sans soucis." > README.txt

clear
sleeep 3

