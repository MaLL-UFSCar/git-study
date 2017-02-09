import json

f=open("f.txt", "r")
info=f.read()
f.close()
vector = info.split(" ")

data={
    "animals": []
}

a=len(vector)
for i in range (0,a,2):
    	data["animals"].append({"name":vector[i+1], "size":vector[i]})

c=len(data["animals"])
data["animals"][c-1]["name"]=data["animals"][c-1]["name"].replace("\n","")
with open('jv.txt', 'w') as outfile:
    json.dump(data, outfile)
