execute as @e[type=armor_stand,tag=block,scores={global=1,temp=0},limit=1] run scoreboard players set @s temp 1
execute as @e[type=armor_stand,tag=block] if score @s parent_id = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] id run scoreboard players set @s temp 2

execute as @e[type=armor_stand,tag=block,scores={temp=1},limit=1] run function blockbuster:parent/transform_send

scoreboard players set @e[type=armor_stand,tag=block,scores={temp=1}] temp 3
scoreboard players set @e[type=armor_stand,tag=block,scores={temp=2}] temp 0

execute if entity @e[type=armor_stand,tag=block,scores={global=1,temp=0}] run function blockbuster:parent/transform_main