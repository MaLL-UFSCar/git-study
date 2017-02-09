	#!/bin/bash

#creating a json file with the names of animals  
python pythondamalldade.py

cd animals
#get a number of directories in the paste animals
num=$(ls -d1 */ | wc -l)
echo $num
cd ..
#creating the file name.ani, with name of animal, in the directory of animal image 
for ((b=0;b <= num ; b++))
do
    nameFile=$(ls animals/$b/)
    name=$(python whatAnimal.py $nameFile )
    echo $name > animals/$b/name.ani
done
