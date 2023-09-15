#This is called after the 15s period.
tellraw @a {"rawtext":[{"text":"§4Seekers have been released!"}]}
structure load seeker_barrier_closed 10 57 102
setblock 18 102 -18 redstone_block
scoreboard players set timer timer 8400
execute @a[tag=hider] ~~~ playsound mob.enderdragon.growl @s ~~~ 0.05