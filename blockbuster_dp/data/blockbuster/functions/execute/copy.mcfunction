tag @p[scores={temp=1}] add copy
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run scoreboard players set @p[scores={temp=1}] edit 2
execute as @e[type=armor_stand,tag=block,scores={temp=1}] at @s run summon armor_stand ~ ~ ~ {Small:1b,Invisible:1b,NoGravity:1b,ShowArms:1b,NoBasePlate:1b,Pose:{RightArm:[0.0f,0.0f,-30.0f],LeftArm:[0.0f,0.0f,30.0f],RightLeg:[180.0f,0.0f,0.0f],LeftLeg:[180.0f,0.0f,0.0f]},DisabledSlots:4079166,Tags:["block","new_copy"]}

execute as @e[type=armor_stand,tag=new_copy] store result score @s initial_pos_x run data get entity @s Pos[0] 1000
execute as @e[type=armor_stand,tag=new_copy] store result score @s initial_pos_y run data get entity @s Pos[1] 1000
execute as @e[type=armor_stand,tag=new_copy] store result score @s initial_pos_z run data get entity @s Pos[2] 1000

execute if entity @e[type=armor_stand,tag=block,scores={temp=1}] run scoreboard players operation @e[type=armor_stand,tag=block,tag=new_copy] initial_rot_x = @e[type=armor_stand,tag=block,scores={temp=1}] initial_rot_x
execute if entity @e[type=armor_stand,tag=block,scores={temp=1}] run scoreboard players operation @e[type=armor_stand,tag=block,tag=new_copy] initial_rot_y = @e[type=armor_stand,tag=block,scores={temp=1}] initial_rot_y
execute if entity @e[type=armor_stand,tag=block,scores={temp=1}] run scoreboard players operation @e[type=armor_stand,tag=block,tag=new_copy] initial_rot_z = @e[type=armor_stand,tag=block,scores={temp=1}] initial_rot_z

scoreboard players set @e[type=armor_stand,tag=block,scores={temp=1}] parent_matrix_0 1000
scoreboard players set @e[type=armor_stand,tag=block,scores={temp=1}] parent_matrix_1 0
scoreboard players set @e[type=armor_stand,tag=block,scores={temp=1}] parent_matrix_2 0
scoreboard players set @e[type=armor_stand,tag=block,scores={temp=1}] parent_matrix_3 0
scoreboard players set @e[type=armor_stand,tag=block,scores={temp=1}] parent_matrix_4 1000
scoreboard players set @e[type=armor_stand,tag=block,scores={temp=1}] parent_matrix_5 0
scoreboard players set @e[type=armor_stand,tag=block,scores={temp=1}] parent_matrix_6 0
scoreboard players set @e[type=armor_stand,tag=block,scores={temp=1}] parent_matrix_7 0
scoreboard players set @e[type=armor_stand,tag=block,scores={temp=1}] parent_matrix_8 1000

execute if entity @e[type=armor_stand,tag=block,tag=hidden,scores={temp=1}] run tag @e[type=armor_stand,tag=block,tag=new_copy] add hidden
execute if entity @e[type=armor_stand,tag=block,tag=has_collision,scores={temp=1}] run tag @e[type=armor_stand,tag=block,tag=new_copy] add has_collision

execute if entity @e[type=armor_stand,tag=block,scores={temp=1}] run scoreboard players operation @e[type=armor_stand,tag=block,tag=new_copy] anim_length = @e[type=armor_stand,tag=block,scores={temp=1}] anim_length
execute if entity @e[type=armor_stand,tag=block,scores={temp=1}] run scoreboard players operation @e[type=armor_stand,tag=block,tag=new_copy] time = @e[type=armor_stand,tag=block,scores={temp=1}] time
execute if entity @e[type=armor_stand,tag=block,scores={temp=1}] run scoreboard players operation @e[type=armor_stand,tag=block,tag=new_copy] play = @e[type=armor_stand,tag=block,scores={temp=1}] play
execute if entity @e[type=armor_stand,tag=block,scores={temp=1}] run data modify entity @e[type=armor_stand,tag=block,tag=new_copy,limit=1] ArmorItems set from entity @e[type=armor_stand,tag=block,scores={temp=1},limit=1] ArmorItems

execute if entity @e[type=armor_stand,tag=block,scores={temp=1}] store result score @p[scores={temp=1}] parent_uuid_0 run data get entity @e[type=armor_stand,tag=block,tag=new_copy,limit=1] UUID[0]
execute if entity @e[type=armor_stand,tag=block,scores={temp=1}] store result score @p[scores={temp=1}] parent_uuid_1 run data get entity @e[type=armor_stand,tag=block,tag=new_copy,limit=1] UUID[1]
execute if entity @e[type=armor_stand,tag=block,scores={temp=1}] store result score @p[scores={temp=1}] parent_uuid_2 run data get entity @e[type=armor_stand,tag=block,tag=new_copy,limit=1] UUID[2]
execute if entity @e[type=armor_stand,tag=block,scores={temp=1}] store result score @p[scores={temp=1}] parent_uuid_3 run data get entity @e[type=armor_stand,tag=block,tag=new_copy,limit=1] UUID[3]

scoreboard players set @e[type=armor_stand,tag=block,tag=new_copy] temp 9
tag @e[type=armor_stand,tag=block,tag=new_copy] remove new_copy
scoreboard players set @e[type=area_effect_cloud,tag=keyframe] temp 0
execute if entity @e[type=armor_stand,tag=block,scores={temp=1}] run function blockbuster:copy/main
scoreboard players set @e[type=area_effect_cloud,tag=keyframe] temp 0
scoreboard players set @e[type=armor_stand,tag=block] temp 0