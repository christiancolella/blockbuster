scoreboard players set @s temp 1
execute as @e[type=armor_stand,tag=block] if score @s id = @p[scores={temp=1}] parent_id run scoreboard players set @s temp 2

scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] parent_id = @s id

scoreboard players set @e[type=armor_stand,tag=block] global 0
execute as @e[type=area_effect_cloud,tag=keyframe,scores={keyframe_type=1..2}] if score @s parent_id = @e[type=armor_stand,tag=block,scores={temp=2},limit=1] id run scoreboard players set @s temp 1
execute as @e[type=armor_stand,tag=block,scores={temp=2}] run scoreboard players set @s global 1
function blockbuster:parent/on_add

scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] last_init_pos_x = @e[type=armor_stand,tag=block,scores={temp=2}] initial_pos_x
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] last_init_pos_y = @e[type=armor_stand,tag=block,scores={temp=2}] initial_pos_y
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] last_init_pos_z = @e[type=armor_stand,tag=block,scores={temp=2}] initial_pos_z

tag @e[type=armor_stand,tag=block,scores={temp=2}] remove awaiting_parent
scoreboard players set @p[scores={temp=1}] edit 17
scoreboard players set @e[type=area_effect_cloud,tag=keyframe] temp 0
scoreboard players set @e[type=armor_stand,tag=block] global 0
scoreboard players set @e[type=armor_stand,tag=block] temp 0