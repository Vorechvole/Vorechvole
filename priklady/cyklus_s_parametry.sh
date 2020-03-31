#!/bin/bash

if [ "$#" -ne 2 ]; then
	echo "nespravny pocet parametru"
else
	echo "spravny pocet parametru"
fi

jmeno=$1
prijmeni=$2

echo "Jmeno = $jmeno"
echo "Prijmeni = $prijmeni"
echo "Pocet parametru = $#"
