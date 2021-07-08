execute as @e[type=armor_stand,tag=block,tag=has_keyframe,scores={temp=0},limit=1] run scoreboard players set @s temp 1
execute as @e[type=area_effect_cloud,tag=keyframe] if score @s parent_id = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] id run scoreboard players set @s temp 2

# pos
execute as @e[type=armor_stand,tag=block,scores={temp=1},limit=1] run function blockbuster:keyframe/pos

# rot
execute as @e[type=armor_stand,tag=block,scores={temp=1},limit=1] run function blockbuster:keyframe/rot

scoreboard players set @e[type=armor_stand,tag=block,scores={temp=1}] temp 4
scoreboard players set @e[type=area_effect_cloud,tag=keyframe,scores={temp=2}] temp 4
execute if entity @e[type=armor_stand,tag=block,tag=has_keyframe,scores={temp=0}] run function blockbuster:keyframe/search