execute unless score pregen_settings pregen_debug matches 0 run say done
scoreboard players set Temp pregen_stage 0

#Remove the original summon loaded
execute at @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=pregenerator_middle] run forceload remove ~ ~
kill @e[type=minecraft:armor_stand,tag=pregenerator_middle]

tellraw @a {"text":"Chunk loading entirely done","bold":true,"color":"gold"}