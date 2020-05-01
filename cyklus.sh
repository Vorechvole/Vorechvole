#!/bin/bash

cat /root/passwd | while read line; do
  cut -d ":" -f1,4 | grep 
done

