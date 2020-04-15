#!/bin/bash

for nazev in *; do
  if [ -d $nazev ]; then
    echo "$nazev je adresar."
  else
    echo "$nazev je soubor."
  fi
done

