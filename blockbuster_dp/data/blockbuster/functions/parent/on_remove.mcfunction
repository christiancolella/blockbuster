execute as @e[type=armor_stand,tag=block] if score @s id = @e[type=armor_stand,tag=block,scores={global=1},limit=1] parent_id run scoreboard players set @s global 2
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=1}] initial_pos_x += @e[type=armor_stand,tag=block,tag=has_parent,scores={global=2}] initial_pos_x
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=1}] initial_pos_x -= @e[type=armor_stand,tag=block,tag=!has_parent,scores={global=2}] initial_pos_x
execute if entity @e[type=armor_stand,tag=block,tag=!has_parent,scores={global=2}] run scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=1}] initial_pos_x *= #-1 constants
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=1}] initial_pos_y += @e[type=armor_stand,tag=block,scores={global=2}] initial_pos_y
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=1}] initial_pos_z += @e[type=armor_stand,tag=block,scores={global=2}] initial_pos_z

execute as @e[type=area_effect_cloud,tag=keyframe,scores={temp=1}] run scoreboard players operation @s initial_pos_x += @e[type=armor_stand,tag=block,tag=has_parent,scores={global=2}] initial_pos_x
execute as @e[type=area_effect_cloud,tag=keyframe,scores={temp=1}] run scoreboard players operation @s initial_pos_x -= @e[type=armor_stand,tag=block,tag=!has_parent,scores={global=2}] initial_pos_x
execute as @e[type=area_effect_cloud,tag=keyframe,scores={temp=1}] if entity @e[type=armor_stand,tag=block,tag=!has_parent,scores={global=2},limit=1] run scoreboard players operation @s initial_pos_x *= #-1 constants
execute as @e[type=area_effect_cloud,tag=keyframe,scores={temp=1}] run scoreboard players operation @s initial_pos_y += @e[type=armor_stand,tag=block,scores={global=2}] initial_pos_y
execute as @e[type=area_effect_cloud,tag=keyframe,scores={temp=1}] run scoreboard players operation @s initial_pos_z += @e[type=armor_stand,tag=block,scores={global=2}] initial_pos_z

scoreboard players set @e[type=armor_stand,tag=block,scores={global=1}] global 0
scoreboard players set @e[type=armor_stand,tag=block,scores={global=2}] global 1
execute if entity @e[type=armor_stand,tag=block,tag=has_parent,scores={global=1}] run function blockbuster:parent/on_remove