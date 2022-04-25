#!/bin/bash
# Cow_HighSchool (1 --> n^2)

Argument=$1

clear

for (( i=1; i<$Argument; i++))
do
  cowsay $(( i * i ))
  sleep 1
done
cowsay -s $(( Argument * Argument ))
