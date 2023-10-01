import os
#items, entity and blocks
items_folder = os.listdir("items")
entity_folder = os.listdir("entity")
blocks_folder = os.listdir("blocks")
#items
print ("Items list:")
for item in items_folder:
    print (item[:-4],end=", ")
print ("")
#entity
print ("Entity list:")
for entity in entity_folder:
    print (entity[:-4],end=", ")
print ("")
#blocks
print ("Blocks list:")
for block in blocks_folder:
    print (block[:-4],end=", ")