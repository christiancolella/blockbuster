execute as @e[type=area_effect_cloud,tag=keyframe,scores={temp=2,keyframe_type=1..2}] if score @s time = #temp global run scoreboard players set @s temp 3
execute if entity @e[type=area_effect_cloud,tag=keyframe,scores={temp=3}] run scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=1}] from_pos_x = @e[type=area_effect_cloud,tag=keyframe,scores={temp=3}] initial_pos_x
execute if entity @e[type=area_effect_cloud,tag=keyframe,scores={temp=3}] run scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=1}] from_pos_y = @e[type=area_effect_cloud,tag=keyframe,scores={temp=3}] initial_pos_y
execute if entity @e[type=area_effect_cloud,tag=keyframe,scores={temp=3}] run scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=1}] from_pos_z = @e[type=area_effect_cloud,tag=keyframe,scores={temp=3}] initial_pos_z
execute if entity @e[type=area_effect_cloud,tag=keyframe,scores={temp=3}] run scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=1}] from_pos_time = #temp global
execute if entity @e[type=area_effect_cloud,tag=keyframe,scores={temp=3}] run scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=1}] pos_trans_type = @e[type=area_effect_cloud,tag=keyframe,scores={temp=3}] transition_type
scoreboard players remove #temp global 1
execute unless entity @e[type=area_effect_cloud,tag=keyframe,scores={temp=3}] if score #temp global matches -1 run scoreboard players set @e[type=armor_stand,tag=block,scores={temp=1}] global 1
execute unless entity @e[type=area_effect_cloud,tag=keyframe,scores={temp=3}] unless score #temp global matches -1 run function blockbuster:keyframe/from_pos
scoreboard players set @e[type=area_effect_cloud,tag=keyframe,scores={temp=3}] temp 2