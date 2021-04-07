execute as @e[type=armor_stand,tag=block,tag=has_keyframe,scores={temp=0},limit=1] run scoreboard players set @s temp 1
execute as @e[type=armor_stand,tag=keyframe] if score @s parent_uuid_0 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_0 if score @s parent_uuid_1 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_1 if score @s parent_uuid_2 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_2 if score @s parent_uuid_3 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_3 run scoreboard players set @s temp 2

# pos
scoreboard players operation #temp global = @e[type=armor_stand,tag=block,scores={temp=1}] time
function blockbuster:keyframe/from_pos
scoreboard players operation #temp global = @e[type=armor_stand,tag=block,scores={temp=1}] time
function blockbuster:keyframe/to_pos
execute as @e[type=armor_stand,tag=block,scores={temp=1,global=1}] run scoreboard players operation @s from_pos_x = @s to_pos_x
execute as @e[type=armor_stand,tag=block,scores={temp=1,global=1}] run scoreboard players operation @s from_pos_y = @s to_pos_y
execute as @e[type=armor_stand,tag=block,scores={temp=1,global=1}] run scoreboard players operation @s from_pos_z = @s to_pos_z
execute as @e[type=armor_stand,tag=block,scores={temp=1,global=1}] run scoreboard players set @s from_pos_time 0
scoreboard players set @e[type=armor_stand,tag=block] global 0

# rot
scoreboard players operation #temp global = @e[type=armor_stand,tag=block,scores={temp=1}] time
function blockbuster:keyframe/from_rot
scoreboard players operation #temp global = @e[type=armor_stand,tag=block,scores={temp=1}] time
function blockbuster:keyframe/to_rot
execute as @e[type=armor_stand,tag=block,scores={temp=1,global=1}] run scoreboard players operation @s from_rot_x = @s to_rot_x
execute as @e[type=armor_stand,tag=block,scores={temp=1,global=1}] run scoreboard players operation @s from_rot_y = @s to_rot_y
execute as @e[type=armor_stand,tag=block,scores={temp=1,global=1}] run scoreboard players operation @s from_rot_z = @s to_rot_z
execute as @e[type=armor_stand,tag=block,scores={temp=1,global=1}] run scoreboard players set @s from_rot_time 0
scoreboard players set @e[type=armor_stand,tag=block] global 0

scoreboard players set @e[type=armor_stand,tag=block,scores={temp=1}] temp 4
scoreboard players set @e[type=armor_stand,tag=keyframe,scores={temp=2}] temp 4
execute if entity @e[type=armor_stand,tag=block,tag=has_keyframe,scores={temp=0}] run function blockbuster:keyframe/search
scoreboard players set @e[type=armor_stand,tag=block] temp 0
scoreboard players set @e[type=armor_stand,tag=keyframe] temp 0