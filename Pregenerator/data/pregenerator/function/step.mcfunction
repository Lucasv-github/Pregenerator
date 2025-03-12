tellraw @a ["",{"text":"Generating: X: "},{"score":{"name":"Temp","objective":"pregen_x"}},{"text":" Y: "},{"score":{"name":"Temp","objective":"pregen_y"}}]

function pregenerator:summon_adjusted

execute if score Temp pregen_stage matches 1 run scoreboard players remove Temp pregen_x 16
execute if score Temp pregen_stage matches 2 run scoreboard players remove Temp pregen_y 16

execute if score Temp pregen_stage matches 3 run scoreboard players add Temp pregen_x 16
execute if score Temp pregen_stage matches 4 run scoreboard players add Temp pregen_y 16

execute if score Temp pregen_stage matches 1 if score Temp pregen_x = Temp pregen_x_min run function pregenerator:top_done
execute if score Temp pregen_stage matches 2 if score Temp pregen_y = Temp pregen_y_min run function pregenerator:left_done
execute if score Temp pregen_stage matches 3 if score Temp pregen_x = Temp pregen_x_max run function pregenerator:right_done
execute if score Temp pregen_stage matches 4 if score Temp pregen_y = Temp pregen_y_max run function pregenerator:up_done

