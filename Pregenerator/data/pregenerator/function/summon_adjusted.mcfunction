summon minecraft:armor_stand 0 100 0 {Tags:["pregen_marker_temp"]}

scoreboard players operation Temp reg_1 = Temp pregen_x
scoreboard players operation Temp reg_2 = Temp pregen_y

#Adjust into middle of chunk
#scoreboard players remove Temp reg_1 8
#scoreboard players remove Temp reg_2 8

scoreboard players add Temp reg_1 24
scoreboard players add Temp reg_2 24

execute as @e[type=minecraft:armor_stand,tag=pregen_marker_temp] run function pregenerator:teleport_load