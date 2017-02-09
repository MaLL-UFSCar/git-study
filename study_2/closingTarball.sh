#!/bin/bash
# Author: Joao Gabriel Melo Barbirato

# api reader
#python pythonapi.py && echo "API read sucessfully!"

cd animals
totalF=$(ls -d1 */ | wc -l) # total of folders
echo $totalF
for((i=0;i<totalF;i++))
do
	animalName=$(cat $i/name.ani)
	echo $animalName | python ../pythonapi.py $i
done
cd ..

# deleting temporary files
# esperando o resto da galere

# closing tarball
# tar -cf animals/animals.tar *