scoreboard players operation @s self_pos_x = @e[type=armor_stand,tag=last_selected,scores={temp=1},limit=1] self_pos_x
scoreboard players operation @s self_pos_y = @e[type=armor_stand,tag=last_selected,scores={temp=1},limit=1] self_pos_y
scoreboard players operation @s self_pos_z = @e[type=armor_stand,tag=last_selected,scores={temp=1},limit=1] self_pos_z

scoreboard players operation @s self_pos_x += @s initial_pos_x
scoreboard players operation @s self_pos_y += @s initial_pos_y
scoreboard players operation @s self_pos_z += @s initial_pos_z

execute store result entity @s Pos[0] double 0.001 run scoreboard players get @s self_pos_x
execute store result entity @s Pos[1] double 0.001 run scoreboard players get @s self_pos_y
execute store result entity @s Pos[2] double 0.001 run scoreboard players get @s self_pos_z
