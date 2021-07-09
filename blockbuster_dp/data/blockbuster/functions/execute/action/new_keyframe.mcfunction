execute at @s run summon area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["new_keyframe"]}

# position
scoreboard players operation @e[type=area_effect_cloud,tag=new_keyframe] parent_id = @s[scores={edit=29}] id
scoreboard players operation @e[type=area_effect_cloud,tag=new_keyframe] time = @s[scores={edit=29}] time
scoreboard players operation @e[type=area_effect_cloud,tag=new_keyframe] initial_pos_x = @s[scores={edit=29}] initial_pos_x
scoreboard players operation @e[type=area_effect_cloud,tag=new_keyframe] initial_pos_y = @s[scores={edit=29}] initial_pos_y
scoreboard players operation @e[type=area_effect_cloud,tag=new_keyframe] initial_pos_z = @s[scores={edit=29}] initial_pos_z
execute if entity @s[scores={edit=29}] run scoreboard players set @e[type=area_effect_cloud,tag=new_keyframe] keyframe_type 1

# rotation
scoreboard players operation @e[type=area_effect_cloud,tag=new_keyframe] parent_id = @s[scores={edit=30}] id
scoreboard players operation @e[type=area_effect_cloud,tag=new_keyframe] time = @s[scores={edit=30}] time
scoreboard players operation @e[type=area_effect_cloud,tag=new_keyframe] initial_rot_x = @s[scores={edit=30}] initial_rot_x
scoreboard players operation @e[type=area_effect_cloud,tag=new_keyframe] initial_rot_y = @s[scores={edit=30}] initial_rot_y
scoreboard players operation @e[type=area_effect_cloud,tag=new_keyframe] initial_rot_z = @s[scores={edit=30}] initial_rot_z
execute if entity @s[scores={edit=30}] run scoreboard players set @e[type=area_effect_cloud,tag=new_keyframe] keyframe_type 3

# position and rotation
scoreboard players operation @e[type=area_effect_cloud,tag=new_keyframe] parent_id = @s[scores={edit=31}] id
scoreboard players operation @e[type=area_effect_cloud,tag=new_keyframe] time = @s[scores={edit=31}] time
scoreboard players operation @e[type=area_effect_cloud,tag=new_keyframe] initial_pos_x = @s[scores={edit=31}] initial_pos_x
scoreboard players operation @e[type=area_effect_cloud,tag=new_keyframe] initial_pos_y = @s[scores={edit=31}] initial_pos_y
scoreboard players operation @e[type=area_effect_cloud,tag=new_keyframe] initial_pos_z = @s[scores={edit=31}] initial_pos_z
scoreboard players operation @e[type=area_effect_cloud,tag=new_keyframe] initial_rot_x = @s[scores={edit=31}] initial_rot_x
scoreboard players operation @e[type=area_effect_cloud,tag=new_keyframe] initial_rot_y = @s[scores={edit=31}] initial_rot_y
scoreboard players operation @e[type=area_effect_cloud,tag=new_keyframe] initial_rot_z = @s[scores={edit=31}] initial_rot_z
execute if entity @s[scores={edit=31}] run scoreboard players set @e[type=area_effect_cloud,tag=new_keyframe] keyframe_type 2

scoreboard players set @e[type=area_effect_cloud,tag=new_keyframe] transition_type 1
tag @e[tag=new_keyframe] add keyframe
tag @e[tag=new_keyframe] remove new_keyframe
