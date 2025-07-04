scoreboard objectives add pregen_x dummy
scoreboard objectives add pregen_y dummy

scoreboard objectives add pregen_m_x dummy
scoreboard objectives add pregen_m_y dummy

scoreboard objectives add pregen_s_y dummy
scoreboard objectives add pregen_c_y dummy

scoreboard objectives add reg_1 dummy
scoreboard objectives add reg_2 dummy
scoreboard objectives add reg_3 dummy

scoreboard players set 8 reg_1 8
scoreboard players set 16 reg_1 16
scoreboard players set 100 reg_1 100

scoreboard objectives add pregen_x_min dummy
scoreboard objectives add pregen_y_min dummy

scoreboard objectives add pregen_x_max dummy
scoreboard objectives add pregen_y_max dummy

scoreboard objectives add pregen_radius dummy
scoreboard objectives add pregen_size trigger

scoreboard objectives add pregen_stage dummy

scoreboard objectives add pregen_step dummy
scoreboard objectives add pregen_speed dummy
scoreboard players set Temp pregen_speed 1

scoreboard objectives add pregen_tick dummy

scoreboard objectives add pregen_start trigger
scoreboard objectives add pregen_stop trigger

scoreboard objectives add pregen_debug trigger
execute unless score pregen_settings pregen_debug matches -2147483647.. run scoreboard players set pregen_settings pregen_debug 0
execute unless score Temp pregen_stage matches -2147483647.. run scoreboard players set Temp pregen_stage 0

scoreboard objectives add pregen_display dummy "Pregenerator info"

team add pregen_green ""
team modify pregen_green color green

team add pregen_blue ""
team modify pregen_blue color blue

team add pregen_yellow ""
team modify pregen_yellow color yellow

team add pregen_red ""
team modify pregen_red color red

team join pregen_green Generate_total
team join pregen_green Generated

team join pregen_red Estimate_seconds
team join pregen_red Elapsed_seconds

team join pregen_yellow End_radius
team join pregen_yellow Current_radius

team join pregen_blue Loaded

tellraw @a {"text":"Pregenerator (1.14.4, 1.15.x, 1.16.x, 1.17.x, 1.18.x, 1.19.x, 1.20.x, 1.21.x)-7 Loaded","bold":true,"color":"gold"}
