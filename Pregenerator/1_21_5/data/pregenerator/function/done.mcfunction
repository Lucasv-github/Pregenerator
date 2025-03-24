execute unless score pregen_settings pregen_debug matches 0 run say done
scoreboard players set Temp pregen_stage 0

#Remove the original summon loaded
forceload remove 0 0

tellraw @a {text:"Chunk loading entirely done",bold:true,color:"gold"}