# AUTHOR: Joao Gabriel Melo Barbirato
# DESCRIPTION: this program connects to the Animal's json, collects it's dictionary and uses a dictionary API to search for the animal's definition. 

import json, requests, sys # necessary libraries

animalName = (raw_input(''));
animalName = animalName.split(" ");
aux = " "
for i in animalName:
	aux = aux+"+"+i
animalName = aux
animalFolder = sys.argv[1]

# reading created JSON

url = "https://en.wikipedia.org//w/api.php?action=query&format=json&prop=extracts&list=wikisets&meta=wikibase&titles="+animalName+"&exintro=1&explaintext=1&wsfrom="+animalName+"&wsprop=&wsorderbyname=1" # api's url

response = requests.get(url) # requesting response from the dictionary's api
animal = json.loads(response.content) # dictionary's json-dictionary format

#print ((animal['query']['pages']).values())[0]['extract']

animalFile = open(str(animalFolder)+"/definition.ani","w") # opening definition's write file 
animalFile.write(((animal['query']['pages']).values())[0]['extract']) # definition of an animal in API
animalFile.close()