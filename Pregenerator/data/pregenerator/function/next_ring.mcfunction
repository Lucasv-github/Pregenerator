execute if score Temp pregen_radius = Temp pregen_size run say done
execute if score Temp pregen_radius = Temp pregen_size run scoreboard players set Temp pregen_stage 0

execute unless score Temp pregen_radius = Temp pregen_size run say next ring
execute unless score Temp pregen_radius = Temp pregen_size run scoreboard players add Temp pregen_radius 16
execute unless score Temp pregen_radius = Temp pregen_size run scoreboard players operation Current_radius pregen_display = Temp pregen_radius
execute unless score Temp pregen_radius = Temp pregen_size run function pregenerator:ring_setup
