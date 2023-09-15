execute @p ~ ~ ~ scoreboard objectives add thingy dummy
execute @p ~ ~ ~ scoreboard players random @s thingy 1 4
execute @p[scores={thingy=1}] ~ ~ ~ give @s item:bird 1 0
execute @p[scores={thingy=2}] ~ ~ ~ give @s item:demon 1 0
execute @p[scores={thingy=3}] ~ ~ ~ give @s item:ring 1 0
execute @p[scores={thingy=4}] ~ ~ ~ give @s item:witch 1 0
execute @p ~ ~ ~ scoreboard objectives remove thingy