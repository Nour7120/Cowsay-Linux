#!/bin/bash
# Cow_Kindergarten (1 --> 10)

clear

for i in {1..9}
do
  cowsay $i
  sleep 1
done
cowsay -s 10
