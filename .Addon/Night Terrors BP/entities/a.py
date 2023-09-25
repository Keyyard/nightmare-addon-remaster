import os
newname = ""
for file in os.listdir("."):
    print (file)
    if file.endswith(".json") and not file.endswith(".behavior.json"):
        newname = file.replace(".json",".behavior.json")
        os.rename(file, newname)
