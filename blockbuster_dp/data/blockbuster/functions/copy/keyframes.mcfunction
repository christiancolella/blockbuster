scoreboard players set @e[type=area_effect_cloud,tag=keyframe,scores={temp=1},limit=1] temp 2
scoreboard players set @e[type=area_effect_cloud,tag=keyframe,tag=new_copy,scores={temp=0},limit=1] temp 3

scoreboard players operation @e[type=area_effect_cloud,tag=keyframe,scores={temp=3}] initial_pos_x = @e[type=area_effect_cloud,tag=keyframe,scores={temp=2}] initial_pos_x
scoreboard players operation @e[type=area_effect_cloud,tag=keyframe,scores={temp=3}] initial_pos_y = @e[type=area_effect_cloud,tag=keyframe,scores={temp=2}] initial_pos_y
scoreboard players operation @e[type=area_effect_cloud,tag=keyframe,scores={temp=3}] initial_pos_z = @e[type=area_effect_cloud,tag=keyframe,scores={temp=2}] initial_pos_z
scoreboard players operation @e[type=area_effect_cloud,tag=keyframe,scores={temp=3}] initial_rot_x = @e[type=area_effect_cloud,tag=keyframe,scores={temp=2}] initial_rot_x
scoreboard players operation @e[type=area_effect_cloud,tag=keyframe,scores={temp=3}] initial_rot_y = @e[type=area_effect_cloud,tag=keyframe,scores={temp=2}] initial_rot_y
scoreboard players operation @e[type=area_effect_cloud,tag=keyframe,scores={temp=3}] initial_rot_z = @e[type=area_effect_cloud,tag=keyframe,scores={temp=2}] initial_rot_z
scoreboard players operation @e[type=area_effect_cloud,tag=keyframe,scores={temp=3}] time = @e[type=area_effect_cloud,tag=keyframe,scores={temp=2}] time
scoreboard players operation @e[type=area_effect_cloud,tag=keyframe,scores={temp=3}] keyframe_type = @e[type=area_effect_cloud,tag=keyframe,scores={temp=2}] keyframe_type
scoreboard players operation @e[type=area_effect_cloud,tag=keyframe,scores={temp=3}] transition_type = @e[type=area_effect_cloud,tag=keyframe,scores={temp=2}] transition_type

scoreboard players set @e[type=area_effect_cloud,tag=keyframe,scores={temp=2..3}] temp 4
execute if entity @e[type=area_effect_cloud,tag=keyframe,scores={temp=1}] run function blockbuster:copy/keyframes
