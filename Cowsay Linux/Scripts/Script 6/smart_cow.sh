#!/bin/bash
# Smart Cow (Arithmetic Cow)

Argument1=$1
Symbol=$2
Argument2=$3

cowsay -e $(( $Argument1 $Symbol $Argument2  )) "$Argument1 $Symbol $Argument2"
