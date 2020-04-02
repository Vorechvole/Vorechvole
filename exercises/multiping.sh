#!/bin/bash
# zadani: provest ping (ping -c4) na vsechny IP adresy v subnetu, ve kterem je skript spusten
# podminky: urcit subnet, ve for cyklu provest ping -c4 $target        




IP_ADRESA=$(ip a s |grep -i 'inet ' |grep -v '127.0.0.1'| awk '{print $2}'|cut -d'/' -f1)
echo "vase ip adresa je $IP_ADRESA"
