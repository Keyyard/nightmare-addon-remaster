#This is called after the initial countdown,
#before the 15 second scatter period.
tag @a remove firstseeker
tag @a remove seeker
tag @a remove hider

tag @a remove waiting
tag @r add seeker
tag @a[tag=seeker] add firstseeker
tag @a[tag=!seeker] add hider

#pre-update scoreboard values
scoreboard players set count "game_hiders" 0
execute @a[tag=hider] ~~~ scoreboard players add count "game_hiders" 1
scoreboard players set count_seeker "game_hiders" 0
execute @a[tag=seeker] ~~~ scoreboard players add count_seeker "game_hiders" 1

tellraw @a {"rawtext":[{"text":"§e§lSeeker " },{ "selector": "@a[tag=seeker]" }, { "text": "§r§e will be released after 15 seconds!"}]}

title @a times 20 160 30

title @a[tag=seeker] subtitle §cCapture the hiders.
title @a[tag=seeker] title §l§4Seeker

title @a[tag=!seeker] subtitle §aHide from Seekers for as long as possible.
title @a[tag=!seeker] title §l§2Hider
music play record.13 1 2

time set midnight
weather rain

#structure save seeker_barrier_closed 10 57 102 12 64 108 disk
#structure save seeker_barrier_open 10 57 102 12 64 108 disk
#closed=no door; open=yes door
#structure load seeker_barrier_closed 10 57 102
structure load seeker_barrier_open 10 57 102

tp @a[tag=!seeker] 69.25 64.00 26.78
tp @a[tag=seeker] 4 61 105