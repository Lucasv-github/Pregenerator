scoreboard players operation Temp pregen_size = @s pregen_size

tellraw @s ["",{"text":"You are about to generate the world: ","bold":true,"color":"gold"},{"score":{"name":"Temp","objective":"pregen_size"},"bold":true,"color":"dark_red"},{"text":" blocks in every direction, do you want to continue? ","bold":true,"color":"gold"},{"text":"Click to start","bold":true,"color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger pregen_start set 1"}}]

scoreboard players set @s pregen_size 0