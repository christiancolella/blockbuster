# position
scoreboard players set @e[type=armor_stand,tag=block,scores={selected=2,edit=29}] temp 1
execute as @e[type=armor_stand,tag=block,scores={temp=1}] at @s run summon area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["new_keyframe"]}
scoreboard players operation @e[type=area_effect_cloud,tag=new_keyframe] parent_uuid_0 = @e[type=armor_stand,tag=block,scores={temp=1}] self_uuid_0
scoreboard players operation @e[type=area_effect_cloud,tag=new_keyframe] parent_uuid_1 = @e[type=armor_stand,tag=block,scores={temp=1}] self_uuid_1
scoreboard players operation @e[type=area_effect_cloud,tag=new_keyframe] parent_uuid_2 = @e[type=armor_stand,tag=block,scores={temp=1}] self_uuid_2
scoreboard players operation @e[type=area_effect_cloud,tag=new_keyframe] parent_uuid_3 = @e[type=armor_stand,tag=block,scores={temp=1}] self_uuid_3
scoreboard players operation @e[type=area_effect_cloud,tag=new_keyframe] time = @e[type=armor_stand,tag=block,scores={temp=1}] time
scoreboard players operation @e[type=area_effect_cloud,tag=new_keyframe] initial_pos_x = @e[type=armor_stand,tag=block,scores={temp=1}] initial_pos_x
scoreboard players operation @e[type=area_effect_cloud,tag=new_keyframe] initial_pos_y = @e[type=armor_stand,tag=block,scores={temp=1}] initial_pos_y
scoreboard players operation @e[type=area_effect_cloud,tag=new_keyframe] initial_pos_z = @e[type=armor_stand,tag=block,scores={temp=1}] initial_pos_z
scoreboard players set @e[type=area_effect_cloud,tag=new_keyframe] keyframe_type 1
scoreboard players set @e[type=area_effect_cloud,tag=new_keyframe] transition_type 1
tag @e[tag=new_keyframe] add keyframe
tag @e[tag=new_keyframe] remove new_keyframe
scoreboard players set @e[type=armor_stand,tag=block] temp 0

# rotation
scoreboard players set @e[type=armor_stand,tag=block,scores={selected=2,edit=30}] temp 1
execute as @e[type=armor_stand,tag=block,scores={temp=1}] at @s run summon area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["new_keyframe"]}
scoreboard players operation @e[type=area_effect_cloud,tag=new_keyframe] parent_uuid_0 = @e[type=armor_stand,tag=block,scores={temp=1}] self_uuid_0
scoreboard players operation @e[type=area_effect_cloud,tag=new_keyframe] parent_uuid_1 = @e[type=armor_stand,tag=block,scores={temp=1}] self_uuid_1
scoreboard players operation @e[type=area_effect_cloud,tag=new_keyframe] parent_uuid_2 = @e[type=armor_stand,tag=block,scores={temp=1}] self_uuid_2
scoreboard players operation @e[type=area_effect_cloud,tag=new_keyframe] parent_uuid_3 = @e[type=armor_stand,tag=block,scores={temp=1}] self_uuid_3
scoreboard players operation @e[type=area_effect_cloud,tag=new_keyframe] time = @e[type=armor_stand,tag=block,scores={temp=1}] time
scoreboard players operation @e[type=area_effect_cloud,tag=new_keyframe] initial_rot_x = @e[type=armor_stand,tag=block,scores={temp=1}] initial_rot_x
scoreboard players operation @e[type=area_effect_cloud,tag=new_keyframe] initial_rot_y = @e[type=armor_stand,tag=block,scores={temp=1}] initial_rot_y
scoreboard players operation @e[type=area_effect_cloud,tag=new_keyframe] initial_rot_z = @e[type=armor_stand,tag=block,scores={temp=1}] initial_rot_z
scoreboard players set @e[type=area_effect_cloud,tag=new_keyframe] keyframe_type 3
scoreboard players set @e[type=area_effect_cloud,tag=new_keyframe] transition_type 1
tag @e[tag=new_keyframe] add keyframe
tag @e[tag=new_keyframe] remove new_keyframe
scoreboard players set @e[type=armor_stand,tag=block] temp 0

# position and rotation
scoreboard players set @e[type=armor_stand,tag=block,scores={selected=2,edit=31}] temp 1
execute as @e[type=armor_stand,tag=block,scores={temp=1}] at @s run summon area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["new_keyframe"]}
scoreboard players operation @e[type=area_effect_cloud,tag=new_keyframe] parent_uuid_0 = @e[type=armor_stand,tag=block,scores={temp=1}] self_uuid_0
scoreboard players operation @e[type=area_effect_cloud,tag=new_keyframe] parent_uuid_1 = @e[type=armor_stand,tag=block,scores={temp=1}] self_uuid_1
scoreboard players operation @e[type=area_effect_cloud,tag=new_keyframe] parent_uuid_2 = @e[type=armor_stand,tag=block,scores={temp=1}] self_uuid_2
scoreboard players operation @e[type=area_effect_cloud,tag=new_keyframe] parent_uuid_3 = @e[type=armor_stand,tag=block,scores={temp=1}] self_uuid_3
scoreboard players operation @e[type=area_effect_cloud,tag=new_keyframe] time = @e[type=armor_stand,tag=block,scores={temp=1}] time
scoreboard players operation @e[type=area_effect_cloud,tag=new_keyframe] initial_pos_x = @e[type=armor_stand,tag=block,scores={temp=1}] initial_pos_x
scoreboard players operation @e[type=area_effect_cloud,tag=new_keyframe] initial_pos_y = @e[type=armor_stand,tag=block,scores={temp=1}] initial_pos_y
scoreboard players operation @e[type=area_effect_cloud,tag=new_keyframe] initial_pos_z = @e[type=armor_stand,tag=block,scores={temp=1}] initial_pos_z
scoreboard players operation @e[type=area_effect_cloud,tag=new_keyframe] initial_rot_x = @e[type=armor_stand,tag=block,scores={temp=1}] initial_rot_x
scoreboard players operation @e[type=area_effect_cloud,tag=new_keyframe] initial_rot_y = @e[type=armor_stand,tag=block,scores={temp=1}] initial_rot_y
scoreboard players operation @e[type=area_effect_cloud,tag=new_keyframe] initial_rot_z = @e[type=armor_stand,tag=block,scores={temp=1}] initial_rot_z
scoreboard players set @e[type=area_effect_cloud,tag=new_keyframe] keyframe_type 2
scoreboard players set @e[type=area_effect_cloud,tag=new_keyframe] transition_type 1
tag @e[tag=new_keyframe] add keyframe
tag @e[tag=new_keyframe] remove new_keyframe
scoreboard players set @e[type=armor_stand,tag=block] temp 0