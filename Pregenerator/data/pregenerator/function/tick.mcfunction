scoreboard players enable @a[tag=pregenerator_admin] pregen_size
scoreboard players enable @a[tag=pregenerator_admin] pregen_start
scoreboard players enable @a[tag=pregenerator_admin] pregen_stop
scoreboard players enable @a[tag=pregenerator_admin] pregen_debug

execute if score Temp pregen_stage matches 5 unless entity @e[type=armor_stand,tag=pregen_marker_wait_ground] run function pregenerator:done
execute if score Temp pregen_stage matches 1..5 as @e[type=armor_stand,tag=pregen_marker_wait_ground,nbt={OnGround:1b}] run function pregenerator:unload
execute if score Temp pregen_stage matches 1..4 run function pregenerator:step_loop

scoreboard players add Temp pregen_tick 1

execute as @a[scores={pregen_start=1..}] run function pregenerator:start
execute as @a[scores={pregen_stop=1..}] run function pregenerator:stop
execute as @a[scores={pregen_size=1..}] run function pregenerator:size_changed

execute if score Temp pregen_tick matches 21.. run function pregenerator:second
execute if score Temp pregen_tick matches 21.. run scoreboard players set Temp pregen_tick 0