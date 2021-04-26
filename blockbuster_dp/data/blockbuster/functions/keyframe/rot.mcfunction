scoreboard players operation #temp global = @s time
function blockbuster:keyframe/from_rot
scoreboard players set @e[type=area_effect_cloud,tag=keyframe,scores={temp=3}] temp 2
scoreboard players operation #temp global = @s time
function blockbuster:keyframe/to_rot
scoreboard players set @e[type=area_effect_cloud,tag=keyframe,scores={temp=3}] temp 2
scoreboard players operation @s[scores={global=1}] from_rot_x = @s[scores={global=1}] to_rot_x
scoreboard players operation @s[scores={global=1}] from_rot_y = @s[scores={global=1}] to_rot_y
scoreboard players operation @s[scores={global=1}] from_rot_z = @s[scores={global=1}] to_rot_z
scoreboard players set @s[scores={global=1}] from_rot_time 0
scoreboard players set @s[scores={global=1}] rot_trans_type 1
scoreboard players set @s global 0