execute unless score pregen_settings pregen_debug matches 0 run say unloading

execute at @s run forceload remove ~ ~
scoreboard players remove Loaded pregen_display 1

scoreboard players add Generated pregen_display 1

kill @s