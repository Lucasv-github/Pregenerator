scoreboard players operation Temp pregen_x_max = Temp pregen_radius
scoreboard players operation Temp pregen_y_max = Temp pregen_radius

scoreboard players set Temp pregen_x_min 0
scoreboard players set Temp pregen_y_min 0

scoreboard players operation Temp pregen_x_min -= Temp pregen_radius
scoreboard players operation Temp pregen_y_min -= Temp pregen_radius

scoreboard players operation Temp pregen_x = Temp pregen_x_max
scoreboard players operation Temp pregen_y = Temp pregen_y_max

scoreboard players set Temp pregen_stage 1