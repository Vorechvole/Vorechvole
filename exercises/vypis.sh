#!/bin/bash
#ip a s | grep inet | grep -v -e 'inet6' -e '127.0.0.1' | awk '{print "Tvoje IP adresa je " $2 }' | cut -d '/' -f1 	
ip a s | grep "inet\ " | grep -v '127.0.0.1' | awk '{print "Tvoje IP adresa je " $2 }' | cut -d '/' -f1

