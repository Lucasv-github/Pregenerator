#execute as @e[type=minecraft:armor_stand] at @s if loaded ~ ~ ~ run function pregenerator:unload_chunk

execute as @e[type=armor_stand,tag=pregen_marker_wait_ground,nbt={OnGround:1b}] run function pregenerator:unload

execute if score Temp pregen_stage matches 1..4 run function pregenerator:step