execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=-45..45] run scoreboard players add @s initial_rot_z 2500
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=45..135] run scoreboard players add @s initial_rot_x 2500
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=135..180] run scoreboard players remove @s initial_rot_z 2500
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=-180..-135] run scoreboard players remove @s initial_rot_z 2500
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=-135..-45] run scoreboard players remove @s initial_rot_x 2500
execute if entity @p[scores={temp=1},x_rotation=-90..-45] run scoreboard players add @s initial_rot_y 2500
execute if entity @p[scores={temp=1},x_rotation=45..90] run scoreboard players remove @s initial_rot_y 2500