scoreboard players set @s temp 1
tag @p[scores={temp=1}] add copy
scoreboard players set @p[scores={temp=1}] edit 2
execute at @s run summon armor_stand ~ ~ ~ {Small:1b,Invisible:1b,NoGravity:1b,ShowArms:1b,NoBasePlate:1b,Pose:{RightArm:[0.0f,0.0f,-30.0f],LeftArm:[0.0f,0.0f,30.0f],RightLeg:[180.0f,0.0f,0.0f],LeftLeg:[180.0f,0.0f,0.0f]},ArmorItems:[{id:"minecraft:melon",Count:1b,tag:{Temp:[0],TempDouble:[0.0d],InitialPos:[0,0,0]}},{},{},{id:"minecraft:diamond_block",Count:1b}],DisabledSlots:4079166,Tags:["block","new_copy"]}

execute as @e[type=armor_stand,tag=new_copy] store result score @s initial_pos_x run data get entity @s Pos[0] 1000
execute as @e[type=armor_stand,tag=new_copy] store result score @s initial_pos_y run data get entity @s Pos[1] 1000
execute as @e[type=armor_stand,tag=new_copy] store result score @s initial_pos_z run data get entity @s Pos[2] 1000

scoreboard players operation @e[type=armor_stand,tag=block,tag=new_copy] initial_rot_x = @s initial_rot_x
scoreboard players operation @e[type=armor_stand,tag=block,tag=new_copy] initial_rot_y = @s initial_rot_y
scoreboard players operation @e[type=armor_stand,tag=block,tag=new_copy] initial_rot_z = @s initial_rot_z

scoreboard players set @s parent_matrix_0 1000
scoreboard players set @s parent_matrix_1 0
scoreboard players set @s parent_matrix_2 0
scoreboard players set @s parent_matrix_3 0
scoreboard players set @s parent_matrix_4 1000
scoreboard players set @s parent_matrix_5 0
scoreboard players set @s parent_matrix_6 0
scoreboard players set @s parent_matrix_7 0
scoreboard players set @s parent_matrix_8 1000

execute if entity @s[tag=hidden] run tag @e[type=armor_stand,tag=block,tag=new_copy] add hidden
execute if entity @s[tag=has_collision] run tag @e[type=armor_stand,tag=block,tag=new_copy] add has_collision

scoreboard players operation @e[type=armor_stand,tag=block,tag=new_copy] anim_length = @s anim_length
scoreboard players operation @e[type=armor_stand,tag=block,tag=new_copy] time = @s time
scoreboard players operation @e[type=armor_stand,tag=block,tag=new_copy] play = @s play
data modify entity @e[type=armor_stand,tag=block,tag=new_copy,limit=1] ArmorItems set from entity @s ArmorItems

execute store result score @p[scores={temp=1}] parent_uuid_0 run data get entity @e[type=armor_stand,tag=block,tag=new_copy,limit=1] UUID[0]
execute store result score @p[scores={temp=1}] parent_uuid_1 run data get entity @e[type=armor_stand,tag=block,tag=new_copy,limit=1] UUID[1]
execute store result score @p[scores={temp=1}] parent_uuid_2 run data get entity @e[type=armor_stand,tag=block,tag=new_copy,limit=1] UUID[2]
execute store result score @p[scores={temp=1}] parent_uuid_3 run data get entity @e[type=armor_stand,tag=block,tag=new_copy,limit=1] UUID[3]

scoreboard players set @e[type=armor_stand,tag=block,tag=new_copy] temp 9
tag @e[type=armor_stand,tag=block,tag=new_copy] remove new_copy
scoreboard players set @e[type=area_effect_cloud,tag=keyframe] temp 0
execute if entity @s run function blockbuster:copy/main
scoreboard players set @e[type=area_effect_cloud,tag=keyframe] temp 0
scoreboard players set @e[type=armor_stand,tag=block] temp 0