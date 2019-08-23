
shouldloop=true


while $shouldloop
do
	read -p "please input XXX or YYY : " strtotest
	shouldloop=false

	if [ $strtotest == 'XXX' ]
	then
		clear
		echo "you have typed XXX : "

	elif [ $strtotest == 'YYY' ]
	then
		clear
		echo "you have typed YYY : "

	else
		clear
		sleep 1
		echo "try again"
		shouldloop=true
	fi
done
