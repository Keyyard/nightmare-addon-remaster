# This is called when seeker wins.
title @a subtitle Hiders eliminated
title @a times 20 100 30

title @a[tag=seeker] actionbar You are awareded 100 candies for winning.
title @a[tag=firstseeker] actionbar You are awareded 400 candies for being the first seeker.
title @a[tag=seeker] title §l§aVictory

scoreboard players add @a[tag=seeker] candy 100
scoreboard players add @a[tag=firstseeker] candy 400
function events/game_end