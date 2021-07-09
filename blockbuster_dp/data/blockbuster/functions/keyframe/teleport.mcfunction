scoreboard players set @e[type=armor_stand,tag=block] temp 0
scoreboard players set @s temp 1
execute as @e[type=area_effect_cloud,tag=keyframe] if score @s parent_id = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] id run tp @s @e[type=armor_stand,tag=block,scores={temp=1},limit=1]
