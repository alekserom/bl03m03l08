#!/bin/bash
string1=$(whoami)
string2=root
if [ $string1 = root ] 
	then 	
		echo "You are $string1"
  if ! grep -q backports "/etc/apt/sources.list" 
	then
		echo "deb http://deb.debian.org/debian bullseye-backports main" >> /etc/apt/sources.list
fi
apt update
apt install apache2
apt install python3
apt install openssh-server
apt install ssmtp

sudo service ssh start
apache2
else echo "Please login superuser"

fi
if ! [ -f "/home/alex/log.txt" ]
	then
		touch /home/alex/log.txt; chmod +rwx /home/alex/log.txt;
fi


Year=`date +%Y`
Month=`date +%m`
Day=`date +%d`
Hour=`date +%H`
Minute=`date +%M`
Second=`date +%S`
whoami >> /home/alex/log.txt
echo "Run date and time: $Day-$Month-$Year $Hour:$Minute:$Second" >> /home/alex/log.txt
echo "" >> /home/alex/log.txt

sendmail username@gmail.com  < /home/alex/log.txt




