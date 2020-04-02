#!/bin/bash
#uzivatel x ma tento shell y, a proto se neprihlasi | prihlasi
#awk -F: '{print "uzivatel " $1 " ma tento shell " $7 }' /etc/passwd
#cut -d ':' -f1,7 /etc/passwd | tail -n1 | sed 's/:/ /g'

while read line; do
	who=$(echo $line | cut -d ':' -f1)
	where=$(echo $line | cut -d ':' -f7) 
	message="neprihlasi"
	if [ $where == '/bin/bash' ]; then
		message="prihlasi"
	fi
	echo "uzivatel $who ma tento shell $where, a proto se $message"
done < /etc/passwd
