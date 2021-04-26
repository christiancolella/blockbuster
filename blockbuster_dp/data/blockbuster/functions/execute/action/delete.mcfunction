scoreboard players set @s temp 1
execute as @e[type=armor_stand,tag=block] if score @s parent_uuid_0 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_0 if score @s parent_uuid_1 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_1 if score @s parent_uuid_2 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_2 if score @s parent_uuid_3 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_3 run scoreboard players set @s temp 2

scoreboard players set @e[type=armor_stand,tag=block] global 0
function blockbuster:parent/on_delete
scoreboard players set @e[type=armor_stand,tag=block,scores={temp=4}] temp 2

execute as @e[type=armor_stand,tag=block,scores={temp=2}] run function blockbuster:misc/delete

kill @s
scoreboard players set @e[type=armor_stand,tag=block] temp 0