scoreboard players set Temp pregen_radius 16
scoreboard players operation End_radius pregen_display = Temp pregen_size

function pregenerator:ring_setup

scoreboard players set Loaded pregen_display 0
scoreboard players set Generated pregen_display 0

scoreboard objectives setdisplay sidebar pregen_display

#Here we spawn the armor stands originally
forceload add 0 0