execute as @e[type=armor_stand,tag=block,scores={temp=7},limit=1] run scoreboard players set @s temp 1
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run scoreboard players set @e[type=armor_stand,tag=block,scores={temp=8},limit=1] temp 9

execute as @e[type=armor_stand,tag=block,scores={temp=9}] store result score @s id run data get entity @s UUID[0]

execute as @e[type=armor_stand,tag=block] if score @s parent_id = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] id run scoreboard players set @s temp 2
execute as @e[type=armor_stand,tag=block,scores={temp=2}] at @s run summon armor_stand ~ ~ ~ {Small:1b,Invisible:1b,NoGravity:1b,ShowArms:1b,NoBasePlate:1b,Pose:{RightArm:[0.0f,0.0f,-30.0f],LeftArm:[0.0f,0.0f,30.0f],RightLeg:[180.0f,0.0f,0.0f],LeftLeg:[180.0f,0.0f,0.0f]},ArmorItems:[{id:"minecraft:melon",Count:1b,tag:{Temp:[0],TempDouble:[0.0d],InitialPos:[0,0,0]}},{},{},{id:"minecraft:diamond_block",Count:1b}],DisabledSlots:4079166,Tags:["block","new_copy"]}
scoreboard players set @e[type=armor_stand,tag=block,tag=new_copy] temp 0
execute if entity @e[type=armor_stand,tag=block,scores={temp=9}] run scoreboard players operation @e[type=armor_stand,tag=block,tag=new_copy] parent_id = @e[type=armor_stand,tag=block,tag=new_copy] id
function blockbuster:copy/children
tag @e[type=armor_stand,tag=block,tag=new_copy] remove new_copy

execute as @e[type=area_effect_cloud,tag=keyframe] if score @s parent_id = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] id run scoreboard players set @s temp 1
execute as @e[type=area_effect_cloud,tag=keyframe,scores={temp=1}] at @s run summon area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["keyframe","new_copy"]}
scoreboard players set @e[type=area_effect_cloud,tag=keyframe,tag=new_copy] temp 0
execute if entity @e[type=armor_stand,tag=block,scores={temp=9}] run scoreboard players operation @e[type=area_effect_cloud,tag=keyframe,tag=new_copy] parent_id = @e[type=area_effect_cloud,tag=keyframe,tag=new_copy] id
function blockbuster:copy/keyframes
tag @e[type=area_effect_cloud,tag=keyframe,tag=new_copy] remove new_copy

scoreboard players set @e[type=armor_stand,tag=block,scores={temp=1}] temp 0
scoreboard players set @e[type=armor_stand,tag=block,scores={temp=9}] temp 0
execute if entity @e[type=armor_stand,tag=block,scores={temp=7}] run function blockbuster:copy/main

scoreboard players set @e[type=armor_stand,tag=block,scores={temp=5}] temp 7
scoreboard players set @e[type=armor_stand,tag=block,scores={temp=6}] temp 8
execute if entity @e[type=armor_stand,tag=block,scores={temp=7}] run function blockbuster:copy/main
