#!/bin/bash
if ! [ -d "/archive" ]
	then
		mkdir /archive; 
		tar  cpf /archive/backup-`date '+%d-%B-%Y'`.tar /var/log /etc/vsftpd.conf /etc/ssh/sshd_config /home 
	else
		tar cpNf /archive/backup-`date '+%d-%B-%Y'`.tar /var/log /etc/vsftpd.conf /etc/ssh/sshd_config /home 
fi

cd /
tar dvf /archive/backup-`date '+%d-%B-%Y'`.tar  
