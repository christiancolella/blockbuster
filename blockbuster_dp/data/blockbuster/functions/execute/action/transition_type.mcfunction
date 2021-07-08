# linear
execute as @e[type=area_effect_cloud,tag=keyframe] if score @s parent_id = @e[type=armor_stand,tag=block,scores={selected=2,edit=34},limit=1] id if score @s time = @e[type=armor_stand,tag=block,scores={selected=2,edit=34},limit=1] time run scoreboard players set @s transition_type 1

# ease in
execute as @e[type=area_effect_cloud,tag=keyframe] if score @s parent_id = @e[type=armor_stand,tag=block,scores={selected=2,edit=35},limit=1] id if score @s time = @e[type=armor_stand,tag=block,scores={selected=2,edit=35},limit=1] time run scoreboard players set @s transition_type 2

# ease out
execute as @e[type=area_effect_cloud,tag=keyframe] if score @s parent_id = @e[type=armor_stand,tag=block,scores={selected=2,edit=36},limit=1] id if score @s time = @e[type=armor_stand,tag=block,scores={selected=2,edit=36},limit=1] time run scoreboard players set @s transition_type 3

# ease in and out
execute as @e[type=area_effect_cloud,tag=keyframe] if score @s parent_id = @e[type=armor_stand,tag=block,scores={selected=2,edit=37},limit=1] id if score @s time = @e[type=armor_stand,tag=block,scores={selected=2,edit=37},limit=1] time run scoreboard players set @s transition_type 4

# constant
execute as @e[type=area_effect_cloud,tag=keyframe] if score @s parent_id = @e[type=armor_stand,tag=block,scores={selected=2,edit=38},limit=1] id if score @s time = @e[type=armor_stand,tag=block,scores={selected=2,edit=38},limit=1] time run scoreboard players set @s transition_type 5