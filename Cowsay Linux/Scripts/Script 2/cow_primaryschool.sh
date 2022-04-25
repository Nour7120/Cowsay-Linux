#!/bin/bash
# Cow_PrimarySchool (1 --> n)

Argument=$1

clear

for (( i=1; i<$Argument; i++))
do
  cowsay $i
  sleep 1
done
cowsay -s $Argument
