#!/bin/bash
# Cow_College (Fibonnaci Numbers)

Argument=$1
# 1st number of fibonacci series
a=0
# 2nd number of fibonacci series
b=1

clear
cowsay "$a "
sleep 1
cowsay "$b "
sleep 1
for (( i=2; i<$Argument; i++ ))
do
  fib=$(( a + b ))
  if [[ $fib -le $Argument && $(( $b + $fib )) -ge $Argument ]]
  then
	cowsay -s $fib
	break
  else
	cowsay $fib
	a=$b
	b=$fib
	sleep 1
  fi
done
