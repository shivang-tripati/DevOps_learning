#!/bin/bash

#Arguments can be passed to the script when it is executed, by writing them as a space-delimited list following the script file name.

echo "File name is $0" # holds the current script
echo $3 # $3 holds banana
Data=$5
echo "A $Data costs just $6."
echo $# #The variable $# holds the number of arguments passed to the script


