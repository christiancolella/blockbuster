execute as @e[type=armor_stand,tag=block,scores={temp=1},limit=1] run scoreboard players set @s temp 2
execute as @e[type=armor_stand,tag=block] if score @s parent_uuid_0 = @e[type=armor_stand,tag=block,scores={temp=2},limit=1] self_uuid_0 if score @s parent_uuid_1 = @e[type=armor_stand,tag=block,scores={temp=2},limit=1] self_uuid_1 if score @s parent_uuid_2 = @e[type=armor_stand,tag=block,scores={temp=2},limit=1] self_uuid_2 if score @s parent_uuid_3 = @e[type=armor_stand,tag=block,scores={temp=2},limit=1] self_uuid_3 run scoreboard players set @s temp 3

execute as @e[type=armor_stand,tag=block,scores={temp=3}] store result entity @s ArmorItems[0].tag.InitialPos[0] int 1 run data get entity @e[type=armor_stand,tag=block,scores={global=1},limit=1] Pos[0] 1000
execute as @e[type=armor_stand,tag=block,scores={temp=3}] store result entity @s ArmorItems[0].tag.InitialPos[1] int 1 run data get entity @e[type=armor_stand,tag=block,scores={global=1},limit=1] Pos[1] 1000
execute as @e[type=armor_stand,tag=block,scores={temp=3}] store result entity @s ArmorItems[0].tag.InitialPos[2] int 1 run data get entity @e[type=armor_stand,tag=block,scores={global=1},limit=1] Pos[2] 1000

scoreboard players set @e[type=armor_stand,tag=block,scores={temp=3}] temp 4
scoreboard players set @e[type=armor_stand,tag=block,scores={temp=2}] temp 0
execute if entity @e[type=armor_stand,tag=block,scores={temp=1}] run function blockbuster:misc/locking

scoreboard players set @e[type=armor_stand,tag=block,scores={temp=4}] temp 1
execute if entity @e[type=armor_stand,tag=block,scores={temp=1}] run function blockbuster:misc/locking