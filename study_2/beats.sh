#!/bin/bash

#Unpacking .tar.gz
tar -vzxf animals.tar.gz

#Getting how much files we have
QTD=$(find animals/ -maxdepth 1 -type f | wc -l)


#Getting name and size from files
QTD2=`expr $QTD + $QTD`
var2=`ls -sh animals`

names2=($var2)

#Sending to python a file with name and size
b=""
a=2
while [ $a -lt $QTD2 ]
do
    b="$b ${names2[$a]}"
    a=`expr $a + 1`
done

echo $b > f.txt

python senses.py
rm f.txt


#Getting files names
var=`ls animals/`
names=($var)


a=0
#Creating directories in animals
while [ $a -lt $QTD ]
do
   mkdir animals/$a
   a=`expr $a + 1`
done

#Moving files to those directories
a=0
while [ $a -lt $QTD ]
do
   $(mv animals/${names[a]} animals/$a)
   a=`expr $a + 1`
done

 mv jv.txt animals/
