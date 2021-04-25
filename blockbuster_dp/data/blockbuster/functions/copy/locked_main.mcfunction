execute as @e[type=armor_stand,tag=locked,scores={temp=7},limit=1] run scoreboard players set @s temp 1
execute as @e[type=armor_stand,tag=locked,scores={temp=1}] run scoreboard players set @e[type=armor_stand,tag=locked,scores={temp=8},limit=1] temp 9

execute as @e[type=armor_stand,tag=locked,scores={temp=9}] store result score @s self_uuid_0 run data get entity @s UUID[0]
execute as @e[type=armor_stand,tag=locked,scores={temp=9}] store result score @s self_uuid_1 run data get entity @s UUID[1]
execute as @e[type=armor_stand,tag=locked,scores={temp=9}] store result score @s self_uuid_2 run data get entity @s UUID[2]
execute as @e[type=armor_stand,tag=locked,scores={temp=9}] store result score @s self_uuid_3 run data get entity @s UUID[3]

execute as @e[type=armor_stand,tag=locked] if score @s parent_uuid_0 = @e[type=armor_stand,tag=locked,scores={temp=1},limit=1] self_uuid_0 if score @s parent_uuid_1 = @e[type=armor_stand,tag=locked,scores={temp=1},limit=1] self_uuid_1 if score @s parent_uuid_2 = @e[type=armor_stand,tag=locked,scores={temp=1},limit=1] self_uuid_2 if score @s parent_uuid_3 = @e[type=armor_stand,tag=locked,scores={temp=1},limit=1] self_uuid_3 run scoreboard players set @s temp 2
execute as @e[type=armor_stand,tag=locked,scores={temp=2}] at @s run summon armor_stand ~ ~ ~ {Small:1b,Invisible:1b,NoGravity:1b,ShowArms:1b,NoBasePlate:1b,Pose:{RightArm:[0.0f,0.0f,-30.0f],LeftArm:[0.0f,0.0f,30.0f],RightLeg:[180.0f,0.0f,0.0f],LeftLeg:[180.0f,0.0f,0.0f]},DisabledSlots:4079166,Tags:["locked","new_copy"]}
scoreboard players set @e[type=armor_stand,tag=locked,tag=new_copy] temp 0
execute if entity @e[type=armor_stand,tag=locked,scores={temp=9}] run scoreboard players operation @e[type=armor_stand,tag=locked,tag=new_copy] parent_uuid_0 = @e[type=armor_stand,tag=locked,scores={temp=9}] self_uuid_0
execute if entity @e[type=armor_stand,tag=locked,scores={temp=9}] run scoreboard players operation @e[type=armor_stand,tag=locked,tag=new_copy] parent_uuid_1 = @e[type=armor_stand,tag=locked,scores={temp=9}] self_uuid_1
execute if entity @e[type=armor_stand,tag=locked,scores={temp=9}] run scoreboard players operation @e[type=armor_stand,tag=locked,tag=new_copy] parent_uuid_2 = @e[type=armor_stand,tag=locked,scores={temp=9}] self_uuid_2
execute if entity @e[type=armor_stand,tag=locked,scores={temp=9}] run scoreboard players operation @e[type=armor_stand,tag=locked,tag=new_copy] parent_uuid_3 = @e[type=armor_stand,tag=locked,scores={temp=9}] self_uuid_3
function blockbuster:copy/locked_children
tag @e[type=armor_stand,tag=locked,tag=new_copy] remove new_copy

scoreboard players set @e[type=armor_stand,tag=locked,scores={temp=1}] temp 0
scoreboard players set @e[type=armor_stand,tag=locked,scores={temp=9}] temp 0
execute if entity @e[type=armor_stand,tag=locked,scores={temp=7}] run function blockbuster:copy/locked_main

scoreboard players set @e[type=armor_stand,tag=locked,scores={temp=5}] temp 7
scoreboard players set @e[type=armor_stand,tag=locked,scores={temp=6}] temp 8
execute if entity @e[type=armor_stand,tag=locked,scores={temp=7}] run function blockbuster:copy/locked_main
