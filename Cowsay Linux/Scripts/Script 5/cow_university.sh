\#!/bin/bash
# Cow_University (Prime Numbers)

Argument=$1
# flag for identification of prime numbers
flag=1

clear

for (( i=2; i<$Argument; i++ ))
do
  for (( j=$(( $i / 2 )); j>1; j-- ))
  do
	if [[ $(( $i % $j )) -eq 0 ]]
	then
		flag=0
		break
	fi
	if [[ $j -eq 2 && $(( $i % $j )) -ne 0 ]]
        then
                flag=1
        fi
  done
  if [[ $flag -eq 1 ]]
  then
	cowsay $i
	sleep 1
  fi
done
