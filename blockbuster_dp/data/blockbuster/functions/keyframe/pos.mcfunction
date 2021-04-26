scoreboard players operation #temp global = @s time
function blockbuster:keyframe/from_pos
scoreboard players set @e[type=area_effect_cloud,tag=keyframe,scores={temp=3}] temp 2
scoreboard players operation #temp global = @s time
function blockbuster:keyframe/to_pos
scoreboard players set @e[type=area_effect_cloud,tag=keyframe,scores={temp=3}] temp 2
scoreboard players operation @s[scores={global=1}] from_pos_x = @s[scores={global=1}] to_pos_x
scoreboard players operation @s[scores={global=1}] from_pos_y = @s[scores={global=1}] to_pos_y
scoreboard players operation @s[scores={global=1}] from_pos_z = @s[scores={global=1}] to_pos_z
scoreboard players set @s[scores={global=1}] from_pos_time 0
scoreboard players set @s[scores={global=1}] pos_trans_type 1
scoreboard players set @s global 0