execute as @e[type=area_effect_cloud,tag=keyframe,scores={temp=0},limit=1] run scoreboard players set @s temp 1
execute as @e[type=armor_stand,tag=block] if score @s self_uuid_0 = @e[type=area_effect_cloud,tag=keyframe,scores={temp=1},limit=1] parent_uuid_0 if score @s self_uuid_1 = @e[type=area_effect_cloud,tag=keyframe,scores={temp=1},limit=1] parent_uuid_1 if score @s self_uuid_1 = @e[type=area_effect_cloud,tag=keyframe,scores={temp=1},limit=1] parent_uuid_1 if score @s self_uuid_1 = @e[type=area_effect_cloud,tag=keyframe,scores={temp=1},limit=1] parent_uuid_1 run scoreboard players set @e[type=area_effect_cloud,tag=keyframe,scores={temp=1}] temp 2
kill @e[type=area_effect_cloud,tag=keyframe,scores={temp=1}]
execute if entity @e[type=area_effect_cloud,tag=keyframe,scores={temp=0}] run function blockbuster:keyframe/delete
scoreboard players set @e[type=area_effect_cloud,tag=keyframe] temp 0