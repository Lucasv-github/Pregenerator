#Round to nearest chunk
scoreboard players operation Temp pregen_size /= 16 reg_1
scoreboard players operation Temp pregen_size *= 16 reg_1

#Starting at the extended circle 32 to prevent touching the forceloaded 0, 0 and messing up armorstand summons
scoreboard players set Temp pregen_radius 32
scoreboard players operation End_radius pregen_display = Temp pregen_size

scoreboard players operation Temp reg_1 = Temp pregen_size
scoreboard players operation Temp reg_1 /= 8 reg_1
scoreboard players operation Temp reg_1 *= Temp reg_1

scoreboard players operation Generate_total pregen_display = Temp reg_1

function pregenerator:ring_setup

scoreboard players set Loaded pregen_display 0
scoreboard players set Generated pregen_display 0
scoreboard players set Elapsed_seconds pregen_display 0
scoreboard players set Estimate_seconds pregen_display 0

scoreboard objectives setdisplay sidebar pregen_display

#Here we spawn the armor stands originally
forceload add 0 0

tellraw @a {"text":"Chunk loading started, this might be laggy and might take a while","bold":true,"color":"gold"}

scoreboard players set @s pregen_start 0