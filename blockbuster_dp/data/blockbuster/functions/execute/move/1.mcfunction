execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=-45..45] run scoreboard players remove @e[type=armor_stand,tag=block,scores={temp=1}] initial_pos_z 2000
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=45..135] run scoreboard players add @e[type=armor_stand,tag=block,tag=!has_parent,scores={temp=1}] initial_pos_x 2000
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=45..135] run scoreboard players remove @e[type=armor_stand,tag=block,tag=has_parent,scores={temp=1}] initial_pos_x 2000
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=135..180] run scoreboard players add @e[type=armor_stand,tag=block,scores={temp=1}] initial_pos_z 2000
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=-180..-135] run scoreboard players add @e[type=armor_stand,tag=block,scores={temp=1}] initial_pos_z 2000
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=-135..-45] run scoreboard players remove @e[type=armor_stand,tag=block,tag=!has_parent,scores={temp=1}] initial_pos_x 2000
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=-135..-45] run scoreboard players add @e[type=armor_stand,tag=block,tag=has_parent,scores={temp=1}] initial_pos_x 2000
execute if entity @p[scores={temp=1},x_rotation=-90..-45] run scoreboard players remove @e[type=armor_stand,tag=block,scores={temp=1}] initial_pos_y 2000
execute if entity @p[scores={temp=1},x_rotation=45..90] run scoreboard players add @e[type=armor_stand,tag=block,scores={temp=1}] initial_pos_y 2000
scoreboard players set @e[type=armor_stand,tag=block] temp 0