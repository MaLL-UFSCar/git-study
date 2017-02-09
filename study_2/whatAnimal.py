import sys
import json,requests

fl = open('animals/jv.txt', 'r')
a = json.loads(fl.read())
name = sys.argv[1]
for i in range(0,len(a["animals"])):
    if(a["animals"][i]["name"] == name):
        print(a["animals"][i]["animal name"])
