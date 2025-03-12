execute if score Temp pregen_stage matches 1..5 run scoreboard players add Elapsed_seconds pregen_display 1

#Estimate some time
scoreboard players operation Temp reg_1 = Generated pregen_display
scoreboard players operation Temp reg_1 *= 100 reg_1
scoreboard players operation Temp reg_1 /= Generate_total pregen_display

scoreboard players operation Temp reg_3 = Temp reg_1
scoreboard players operation Temp reg_2 = 100 reg_1
scoreboard players operation Temp reg_2 -= Temp reg_1

scoreboard players operation Temp reg_1 = Elapsed_seconds pregen_display
scoreboard players operation Temp reg_1 *= 100 reg_1
scoreboard players operation Temp reg_1 /= Temp reg_3

scoreboard players operation Temp reg_1 *= Temp reg_2
scoreboard players operation Temp reg_1 /= 100 reg_1

execute if score Temp reg_1 matches 0.. run scoreboard players operation Estimate_seconds pregen_display = Temp reg_1
