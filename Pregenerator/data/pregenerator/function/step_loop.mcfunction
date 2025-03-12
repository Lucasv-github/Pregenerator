function pregenerator:step

scoreboard players add Temp pregen_step 1
execute if score Temp pregen_step < Temp pregen_speed run function pregenerator:step_loop
execute if score Temp pregen_step >= Temp pregen_speed run scoreboard players set Temp pregen_step 0