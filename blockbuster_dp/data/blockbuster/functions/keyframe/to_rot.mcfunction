scoreboard players add #temp global 1
execute as @e[type=armor_stand,tag=block,scores={temp=1}] if score #temp global > @s anim_length run scoreboard players operation @s to_rot_x = @s from_rot_x
execute as @e[type=armor_stand,tag=block,scores={temp=1}] if score #temp global > @s anim_length run scoreboard players operation @s to_rot_y = @s from_rot_y
execute as @e[type=armor_stand,tag=block,scores={temp=1}] if score #temp global > @s anim_length run scoreboard players operation @s to_rot_z = @s from_rot_z
execute as @e[type=armor_stand,tag=block,scores={temp=1}] if score #temp global > @s anim_length run scoreboard players operation @s to_rot_time = @s anim_length
execute as @e[type=armor_stand,tag=keyframe,scores={temp=2,keyframe_type=2..3}] if score @s time = #temp global run scoreboard players set @s temp 3
execute if entity @e[type=armor_stand,tag=keyframe,scores={temp=3}] run scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=1}] to_rot_x = @e[type=armor_stand,tag=keyframe,scores={temp=3}] initial_rot_x
execute if entity @e[type=armor_stand,tag=keyframe,scores={temp=3}] run scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=1}] to_rot_y = @e[type=armor_stand,tag=keyframe,scores={temp=3}] initial_rot_y
execute if entity @e[type=armor_stand,tag=keyframe,scores={temp=3}] run scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=1}] to_rot_z = @e[type=armor_stand,tag=keyframe,scores={temp=3}] initial_rot_z
execute if entity @e[type=armor_stand,tag=keyframe,scores={temp=3}] run scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=1}] to_rot_time = #temp global
execute unless entity @e[type=armor_stand,tag=keyframe,scores={temp=3}] unless score #temp global > @e[type=armor_stand,tag=block,scores={temp=1},limit=1] anim_length run function blockbuster:keyframe/to_rot
scoreboard players set @e[type=armor_stand,tag=keyframe,scores={temp=3}] temp 2