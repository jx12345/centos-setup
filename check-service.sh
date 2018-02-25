if [ "`systemctl is-active $1`" != "active" ]
then
	systemctl restart mariadb
	echo '$1 restarted' | mail -s "$1 restarted" email@gmail.com
	exit 0
fi

