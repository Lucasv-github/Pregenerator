execute unless score pregen_settings pregen_debug matches 0 run say stop

scoreboard players set Temp pregen_stage 5
scoreboard players set @s pregen_stop 0

tellraw @a {"text":"Chunk loading done, cleanup might still take a few seconds","bold":true,"color":"gold"}