# This is called when hider wins.
title @a subtitle Time limit reached
title @a times 20 100 30

title @a[tag=seeker] actionbar You are not defeated when you lose, but are when you quit.
title @a[tag=seeker] title §l§cDefeated

title @a[tag=hider] actionbar You are awareded 500 candies for winning.
title @a[tag=hider] title §l§aVictory

scoreboard players add @a[tag=!seekers] candy 500
function events/game_end