# +0.05 seconds
scoreboard players set @s[scores={edit=49}] temp 1

scoreboard players operation #temp global = @s[scores={temp=1}] time
execute as @e[type=area_effect_cloud,tag=keyframe] if score @s parent_id = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] id if score @s time = #temp global run scoreboard players set @s temp 1
scoreboard players add #temp global 1
execute as @e[type=area_effect_cloud,tag=keyframe] if score @s parent_id = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] id if score @s time = #temp global run scoreboard players set @s temp 2
execute as @s[scores={temp=1}] unless score @s time = @s anim_length unless entity @e[type=area_effect_cloud,tag=keyframe,scores={temp=2}] run scoreboard players set @e[type=area_effect_cloud,tag=keyframe,scores={temp=1}] temp 3

scoreboard players add @e[type=area_effect_cloud,tag=keyframe,scores={temp=3}] time 1
execute if entity @e[type=area_effect_cloud,tag=keyframe,scores={temp=3}] run scoreboard players add @s[scores={temp=1}] time 1
execute if entity @e[type=area_effect_cloud,tag=keyframe,scores={temp=3}] run scoreboard players set @s[scores={temp=1}] global 1

scoreboard players set @e[type=armor_stand,tag=block] temp 0
scoreboard players set @e[type=area_effect_cloud,tag=keyframe] temp 0

# -0.05 seconds
scoreboard players set @s[scores={edit=50}] temp 1

scoreboard players operation #temp global = @s[scores={temp=1}] time
execute as @e[type=area_effect_cloud,tag=keyframe] if score @s parent_id = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] id if score @s time = #temp global run scoreboard players set @s temp 1
scoreboard players remove #temp global 1
execute as @e[type=area_effect_cloud,tag=keyframe] if score @s parent_id = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] id if score @s time = #temp global run scoreboard players set @s temp 2
execute as @s[scores={temp=1}] unless score @s time matches 0 unless entity @e[type=area_effect_cloud,tag=keyframe,scores={temp=2}] run scoreboard players set @e[type=area_effect_cloud,tag=keyframe,scores={temp=1}] temp 3

scoreboard players remove @e[type=area_effect_cloud,tag=keyframe,scores={temp=3}] time 1
execute if entity @e[type=area_effect_cloud,tag=keyframe,scores={temp=3}] run scoreboard players remove @s[scores={temp=1}] time 1
execute if entity @e[type=area_effect_cloud,tag=keyframe,scores={temp=3}] run scoreboard players set @s[scores={temp=1}] global 1

scoreboard players set @e[type=armor_stand,tag=block] temp 0
scoreboard players set @e[type=area_effect_cloud,tag=keyframe] temp 0

# jump to previous keyframe
scoreboard players set @s[scores={edit=51}] temp 1
execute as @e[type=area_effect_cloud,tag=keyframe] if score @s parent_id = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] id run scoreboard players set @s temp 2
execute as @s[scores={temp=1}] unless score @s time matches 0 run scoreboard players remove @s time 1

execute as @s[scores={temp=1}] run scoreboard players operation #temp global = @s time
execute as @s[scores={temp=1}] run function blockbuster:keyframe/from_pos
scoreboard players set @e[type=area_effect_cloud,tag=keyframe,scores={temp=3}] temp 2
execute as @s[scores={temp=1}] run scoreboard players operation #temp global = @s time
execute as @s[scores={temp=1}] run function blockbuster:keyframe/from_rot
scoreboard players set @e[type=area_effect_cloud,tag=keyframe,scores={temp=3}] temp 2

execute as @s[scores={temp=1}] if score @s from_pos_time >= @s from_rot_time run scoreboard players operation @s time = @s from_pos_time
execute as @s[scores={temp=1}] if score @s from_pos_time < @s from_rot_time run scoreboard players operation @s time = @s from_rot_time
execute as @s[scores={temp=1}] run scoreboard players set @s global 1

scoreboard players set @e[type=armor_stand,tag=block] temp 0
scoreboard players set @e[type=area_effect_cloud,tag=keyframe] temp 0

# jump to next keyframe
scoreboard players set @s[scores={edit=52}] temp 1
execute as @e[type=area_effect_cloud,tag=keyframe] if score @s parent_id = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] id run scoreboard players set @s temp 2

execute as @s[scores={temp=1}] run scoreboard players operation #temp global = @s time
execute as @s[scores={temp=1}] run function blockbuster:keyframe/to_pos
scoreboard players set @e[type=area_effect_cloud,tag=keyframe,scores={temp=3}] temp 2
execute as @s[scores={temp=1}] run scoreboard players operation #temp global = @s time
execute as @s[scores={temp=1}] run function blockbuster:keyframe/to_rot
scoreboard players set @e[type=area_effect_cloud,tag=keyframe,scores={temp=3}] temp 2

execute as @s[scores={temp=1}] run scoreboard players operation #temp global = @s time
execute as @s[scores={temp=1}] if score @s to_pos_time <= @s to_rot_time run scoreboard players operation @s time = @s to_pos_time
execute as @s[scores={temp=1}] if score @s to_pos_time > @s to_rot_time run scoreboard players operation @s time = @s to_rot_time
execute as @s[scores={temp=1}] if score @s time = @s anim_length run scoreboard players operation @s time = #temp global
execute as @s[scores={temp=1}] run scoreboard players set @s global 1

scoreboard players set @e[type=armor_stand,tag=block] temp 0
scoreboard players set @e[type=area_effect_cloud,tag=keyframe] temp 0
