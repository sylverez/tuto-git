#!bin/bash
clear

echo " bonjour $USER"
sleep 1
clear

echo "bienvenue dans ce tutoriel GIT"
sleep 2
clear

shouldloop=true

while $shouldloop
do

	read -p "please input y or n " delconf
	shouldloop=false
	

	if [ $delconf == 'Y' ]
       	then
		clear
		echo "you have typed a Y ! why ?"
	
	elif [ $delconf == 'n' ]
	then
		clear
		echo "you have type a N ! Neat..."
	
	else
		clear
		echo "try again"
		shouldloop=true
	fi

done
echo "now let test calling an other script...."
echo "invoking coucou.sh"
bash ./script_ressource/coucou.sh
