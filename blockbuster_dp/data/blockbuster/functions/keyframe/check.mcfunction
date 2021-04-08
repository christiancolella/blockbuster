execute as @e[type=armor_stand,tag=block,scores={temp=0},limit=1] run scoreboard players set @s temp 1
execute as @e[type=armor_stand,tag=keyframe] if score @s parent_uuid_0 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_0 if score @s parent_uuid_1 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_1 if score @s parent_uuid_2 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_2 if score @s parent_uuid_3 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_3 run tag @e[type=armor_stand,tag=block,scores={temp=1}] add has_keyframe
execute as @e[type=armor_stand,tag=keyframe,scores={keyframe_type=1..2}] if score @s parent_uuid_0 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_0 if score @s parent_uuid_1 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_1 if score @s parent_uuid_2 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_2 if score @s parent_uuid_3 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_3 run tag @e[type=armor_stand,tag=block,scores={temp=1}] add has_pos_keyframe
execute as @e[type=armor_stand,tag=keyframe,scores={keyframe_type=2..3}] if score @s parent_uuid_0 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_0 if score @s parent_uuid_1 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_1 if score @s parent_uuid_2 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_2 if score @s parent_uuid_3 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_3 run tag @e[type=armor_stand,tag=block,scores={temp=1}] add has_rot_keyframe
scoreboard players set @e[type=armor_stand,tag=block,scores={temp=1}] temp 2
execute if entity @e[type=armor_stand,tag=block,scores={temp=0}] run function blockbuster:keyframe/check
scoreboard players set @e[type=armor_stand,tag=block] temp 0