say next ring

execute if score Temp pregen_radius = Temp pregen_size run say done
execute if score Temp pregen_radius = Temp pregen_size run function pregenerator:stop

execute if score Temp pregen_stage matches 1..4 run scoreboard players add Temp pregen_radius 16
execute if score Temp pregen_stage matches 1..4 run scoreboard players operation Current_radius pregen_display = Temp pregen_radius
execute if score Temp pregen_stage matches 1..4 run function pregenerator:ring_setup
