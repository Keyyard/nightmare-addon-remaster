scoreboard players set count "game_hiders" 0
execute @a[tag=hider] ~~~ scoreboard players add count "game_hiders" 1

#im too lazy
scoreboard players set count_seeker "game_hiders" 0
execute @a[tag=seeker] ~~~ scoreboard players add count_seeker "game_hiders" 1

execute @a[tag=seeker,tag=hider] ~~~ function events/hider_to_seeker

effect @a[tag=seeker] night_vision 30 1 true

scoreboard players remove timer timer 1

#calculate the seconds left
scoreboard players operation seconds timer = timer timer
scoreboard players operation seconds timer /= tps timer

#calculate the minute
scoreboard players operation min timer = seconds timer
scoreboard players operation min timer /= spm timer

#calculate the second
scoreboard players operation sec timer = seconds timer
scoreboard players operation sec timer %= spm timer

############
#REFERENCES#
############

##obj timer - timer related values
#tps - ticks per sec, static value(20), used for division
#spm - seconds per min, static value(60), used for division
#timer - ticks until game end
#seconds - seconds until game end, ONLY USE THIS FOR DISPLAY
#min - minutes left until game end, ONLY USE THIS FOR DISPLAY
#sec - seconds left until min is updated, ONLY USE THIS FOR DISPLAY
##obj game_hiders - game variables
#count - hider count
#count_seeker - seeker count