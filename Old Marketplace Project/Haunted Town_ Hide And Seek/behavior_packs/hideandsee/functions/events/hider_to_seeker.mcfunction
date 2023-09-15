#This is called when a hider is found and is transformed into a seeker.
#This is called as the player getting transformed(@s).
title @a times 20 100 30
title @s subtitle You are now a seeker. Go hunt them down!
title @s title §c§lCaught!

tag @s add temp_tag
playsound mob.enderdragon.growl @a[tag=!temp_tag] ~~~ 0.3
tag @s remove temp_tag

playsound block.bell.hit @a ~~~ 0.3 0.1
tp @s 4 58 105
tag @s remove hider