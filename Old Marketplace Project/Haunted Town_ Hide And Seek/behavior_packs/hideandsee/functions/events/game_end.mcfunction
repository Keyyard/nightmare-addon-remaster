# This is called common to both game endings.

setblock 18 102 -18 air 
#disable game run flag
setblock 18 102 -15 air 
#disable game start flag

tag @a remove firstseeker
tag @a remove seeker
tag @a remove hider

effect @a clear
scoreboard players set timer timer 0

tp @a 21 106 5

weather clear
time set day