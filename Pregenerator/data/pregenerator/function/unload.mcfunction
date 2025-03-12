say unloading

execute at @s run forceload remove ~ ~
scoreboard players remove Loaded pregen_display 1

scoreboard players add Generated pregen_display 1

kill @s