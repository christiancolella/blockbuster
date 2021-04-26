scoreboard players add #temp global 1
execute if score #temp global > @s anim_length run scoreboard players operation @s to_pos_x = @s from_pos_x
execute if score #temp global > @s anim_length run scoreboard players operation @s to_pos_y = @s from_pos_y
execute if score #temp global > @s anim_length run scoreboard players operation @s to_pos_z = @s from_pos_z
execute if score #temp global > @s anim_length run scoreboard players operation @s to_pos_time = @s anim_length
execute as @e[type=area_effect_cloud,tag=keyframe,scores={temp=2,keyframe_type=1..2}] if score @s time = #temp global run scoreboard players set @s temp 3
execute if entity @e[type=area_effect_cloud,tag=keyframe,scores={temp=3}] run scoreboard players operation @s to_pos_x = @e[type=area_effect_cloud,tag=keyframe,scores={temp=3}] initial_pos_x
execute if entity @e[type=area_effect_cloud,tag=keyframe,scores={temp=3}] run scoreboard players operation @s to_pos_y = @e[type=area_effect_cloud,tag=keyframe,scores={temp=3}] initial_pos_y
execute if entity @e[type=area_effect_cloud,tag=keyframe,scores={temp=3}] run scoreboard players operation @s to_pos_z = @e[type=area_effect_cloud,tag=keyframe,scores={temp=3}] initial_pos_z
execute if entity @e[type=area_effect_cloud,tag=keyframe,scores={temp=3}] run scoreboard players operation @s to_pos_time = #temp global
execute unless entity @e[type=area_effect_cloud,tag=keyframe,scores={temp=3}] unless score #temp global > @s anim_length run function blockbuster:keyframe/to_pos