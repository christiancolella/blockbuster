execute as @e[type=area_effect_cloud,tag=keyframe,scores={temp=2,keyframe_type=2..3}] if score @s time = #temp global run scoreboard players set @s temp 3
execute if entity @e[type=area_effect_cloud,tag=keyframe,scores={temp=3}] run scoreboard players operation @s from_rot_x = @e[type=area_effect_cloud,tag=keyframe,scores={temp=3}] initial_rot_x
execute if entity @e[type=area_effect_cloud,tag=keyframe,scores={temp=3}] run scoreboard players operation @s from_rot_y = @e[type=area_effect_cloud,tag=keyframe,scores={temp=3}] initial_rot_y
execute if entity @e[type=area_effect_cloud,tag=keyframe,scores={temp=3}] run scoreboard players operation @s from_rot_z = @e[type=area_effect_cloud,tag=keyframe,scores={temp=3}] initial_rot_z
execute if entity @e[type=area_effect_cloud,tag=keyframe,scores={temp=3}] run scoreboard players operation @s from_rot_time = #temp global
execute if entity @e[type=area_effect_cloud,tag=keyframe,scores={temp=3}] run scoreboard players operation @s rot_trans_type = @e[type=area_effect_cloud,tag=keyframe,scores={temp=3}] transition_type
scoreboard players remove #temp global 1
execute unless entity @e[type=area_effect_cloud,tag=keyframe,scores={temp=3}] if score #temp global matches -1 run scoreboard players set @s global 1
execute unless entity @e[type=area_effect_cloud,tag=keyframe,scores={temp=3}] unless score #temp global matches -1 run function blockbuster:keyframe/from_rot