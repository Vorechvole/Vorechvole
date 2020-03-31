#!/bin/bash
# zadani: provest ping (ping -c4) na vsechny IP adresy v subnetu, ve kterem je skript spusten
# podminky: urcit subnet, ve for cyklu provest ping -c4 $target        

cidr_to_netmask() {
        value=$(( 0xffffffff ^ ((1 << (32 - $1)) - 1) ))
        echo "$(( (value >> 24) & 0xff )).$(( (value >> 16) & 0xff )).$(( (value >> 8) & 0xff )).$(( value & 0xff ))"
}

IP_RAW_DATA=$(ip -o -f inet a s|grep -v "127.0.0.1")

IP_ADDR=$(awk '{print $4}' <<< "$IP_RAW_DATA" | cut -d/ -f1)
IP_CIDR=$(awk '{print $4}' <<< "$IP_RAW_DATA" | cut -d/ -f2)
IP_MASK=$(cidr_to_netmask $IP_CIDR)
IP_BROADCAST=$(awk '{print $6}' <<< "$IP_RAW_DATA")

IFS=. read -r i1 i2 i3 i4 <<< "$IP_ADDR"
IFS=. read -r m1 m2 m3 m4 <<< "$IP_MASK"
IFS=. read -r b1 b2 b3 b4 <<< "$IP_BROADCAST"

n1="$((i1 & m1))" 
n2="$((i2 & m2))"
n3="$((i3 & m3))"
n4="$((i4 & m4))"

#pocet klientu
C_COUNT="$((b4 - n4))"

echo "ip=$IP_ADDR"
echo "mask=$IP_MASK"
echo "net=$n1.$n2.$n3.$n4"
echo "broadcast=$IP_BROADCAST"
echo "clients=$C_COUNT"
