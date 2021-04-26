execute as @e[type=armor_stand,tag=locked,scores={temp=0},limit=1] run scoreboard players set @s temp 1
execute as @e[type=armor_stand,tag=locked] if score @s parent_uuid_0 = @e[type=armor_stand,tag=locked,scores={temp=1},limit=1] self_uuid_0 if score @s parent_uuid_1 = @e[type=armor_stand,tag=locked,scores={temp=1},limit=1] self_uuid_1 if score @s parent_uuid_2 = @e[type=armor_stand,tag=locked,scores={temp=1},limit=1] self_uuid_2 if score @s parent_uuid_3 = @e[type=armor_stand,tag=locked,scores={temp=1},limit=1] self_uuid_3 run data modify entity @s ArmorItems[0].tag.InitialPos set from entity @e[type=armor_stand,tag=locked,scores={temp=1},limit=1] ArmorItems[0].tag.InitialPos

scoreboard players set @e[type=armor_stand,tag=locked,scores={temp=1}] temp 2

execute if entity @e[type=armor_stand,tag=locked,scores={temp=0}] run function blockbuster:parent/locked/send_animation