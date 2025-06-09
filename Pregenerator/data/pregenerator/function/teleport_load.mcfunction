execute store result entity @s Pos[0] double 1 run scoreboard players get Temp reg_1
execute store result entity @s Pos[2] double 1 run scoreboard players get Temp reg_2

execute store result score @s pregen_s_y run data get entity @s Pos[1]

execute at @s run forceload add ~ ~
scoreboard players add Loaded pregen_display 1

#execute at @s run setblock ~ ~ ~ minecraft:redstone_block

tag @s remove pregen_marker_temp
tag @s add pregen_marker_wait_ground