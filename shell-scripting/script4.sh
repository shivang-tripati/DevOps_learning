#!/bin/bash

# Code to extract the First name from the data record

DATARECORD="last=Clifford,first=Johnny Boy,state=CA"

COMMA1=`expr index "$DATARECORD" ','`  # 14 position of first comma
echo "possition of first comma1 $COMMA1"
CHOP1FIELD=${DATARECORD: $COMMA1}

echo "First chop field $CHOP1FIELD"

COMMA2=`expr index "$CHOP1FIELD" ','`
echo "possition of comma2 $COMMA2"

LEN=`expr $COMMA2 - 6 - 1`
echo "len" ${LEN}
FIRSTNAME=${CHOP1FIELD:6:$LEN}      # Johnny Boy
echo $FIRSTNAME

STRING="to be or not to be"
#Replace first occurrence of substring with replacement

STRING="to be or not to be"
echo ${STRING[@]/be/eat}        # to eat or not to be

#Replace all occurrences of substring
STRING="to be or not to be"
echo ${STRING[@]//be/eat}        # to eat or not to eat

#Delete all occurrences of substring (replace with empty string)
echo ${STRING[@]// not/}        # to be or to be
