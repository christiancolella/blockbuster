execute as @e[type=armor_stand,scores={temp=1},limit=1] run scoreboard players set @s temp 2
execute as @e[type=armor_stand,tag=block] if score @s parent_id = @e[type=armor_stand,scores={temp=2},limit=1] id run scoreboard players set @s temp 3
execute as @e[type=armor_stand,tag=locked] if score @s parent_id = @e[type=armor_stand,scores={temp=2},limit=1] id run scoreboard players set @s temp 3
scoreboard players set @e[type=armor_stand,scores={temp=2}] temp 4
execute if entity @e[type=armor_stand,scores={temp=1}] run function blockbuster:misc/delete_hierarchy
scoreboard players set @e[type=armor_stand,scores={temp=3}] temp 1
execute if entity @e[type=armor_stand,tag=is_parent,scores={temp=1}] run function blockbuster:misc/delete_hierarchy