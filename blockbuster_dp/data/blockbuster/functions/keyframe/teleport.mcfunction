scoreboard players set @e[type=armor_stand,tag=block,tag=has_keyframe,scores={temp=0},limit=1] temp 1
execute as @e[type=armor_stand,tag=keyframe] if score @s parent_uuid_0 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_0 if score @s parent_uuid_1 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_1 if score @s parent_uuid_2 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_2 if score @s parent_uuid_3 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_3 run tp @s @e[type=armor_stand,tag=block,scores={temp=1},limit=1]
execute if entity @e[type=armor_stand,tag=block,tag=has_keyframe,scores={temp=0}] run function blockbuster:keyframe/teleport
scoreboard players set @e[type=armor_stand,tag=block] temp 0