tag @p[scores={temp=1}] add copy

execute if entity @e[type=armor_stand,tag=locked,tag=has_parent,scores={temp=1}] run function blockbuster:copy/locked_find_root
scoreboard players set @e[type=armor_stand,tag=locked,scores={temp=2}] temp 0

execute as @e[type=armor_stand,tag=locked,scores={temp=1}] run scoreboard players set @p[scores={temp=1}] edit 2
execute as @e[type=armor_stand,tag=locked,scores={temp=1}] at @s run summon armor_stand ~ ~ ~ {Small:1b,Invisible:1b,NoGravity:1b,ShowArms:1b,NoBasePlate:1b,Pose:{RightArm:[0.0f,0.0f,-30.0f],LeftArm:[0.0f,0.0f,30.0f],RightLeg:[180.0f,0.0f,0.0f],LeftLeg:[180.0f,0.0f,0.0f]},ArmorItems:[{id:"minecraft:melon",Count:1b,tag:{Temp:[0],TempDouble:[0.0d],InitialPos:[0,0,0]}},{},{},{id:"minecraft:diamond_block",Count:1b}],DisabledSlots:4079166,Tags:["locked","new_copy"]}

scoreboard players set @e[type=armor_stand,tag=locked,tag=new_copy] play 1
scoreboard players operation @e[type=armor_stand,tag=locked,tag=new_copy] anim_length = @e[type=armor_stand,tag=locked,scores={temp=1}] anim_length

data modify entity @e[type=armor_stand,tag=locked,tag=new_copy,limit=1] ArmorItems set from entity @e[type=armor_stand,tag=locked,scores={temp=1},limit=1] ArmorItems
execute if entity @e[type=armor_stand,tag=locked,tag=hidden,scores={temp=1}] run tag @e[type=armor_stand,tag=locked,tag=new_copy] add hidden
execute if entity @e[type=armor_stand,tag=locked,tag=has_collision,scores={temp=1}] run tag @e[type=armor_stand,tag=locked,tag=new_copy] add has_collision

execute if entity @e[type=armor_stand,tag=locked,scores={temp=1}] store result score @p[scores={temp=1}] parent_uuid_0 run data get entity @e[type=armor_stand,tag=locked,tag=new_copy,limit=1] UUID[0]
execute if entity @e[type=armor_stand,tag=locked,scores={temp=1}] store result score @p[scores={temp=1}] parent_uuid_1 run data get entity @e[type=armor_stand,tag=locked,tag=new_copy,limit=1] UUID[1]
execute if entity @e[type=armor_stand,tag=locked,scores={temp=1}] store result score @p[scores={temp=1}] parent_uuid_2 run data get entity @e[type=armor_stand,tag=locked,tag=new_copy,limit=1] UUID[2]
execute if entity @e[type=armor_stand,tag=locked,scores={temp=1}] store result score @p[scores={temp=1}] parent_uuid_3 run data get entity @e[type=armor_stand,tag=locked,tag=new_copy,limit=1] UUID[3]

scoreboard players set @e[type=armor_stand,tag=locked,tag=new_copy] temp 9
tag @e[type=armor_stand,tag=locked,tag=new_copy] remove new_copy
execute if entity @e[type=armor_stand,tag=locked,scores={temp=1}] run function blockbuster:copy/locked_main
scoreboard players set @e[type=armor_stand,tag=locked] temp 0