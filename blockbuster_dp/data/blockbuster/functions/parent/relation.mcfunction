scoreboard players set @e[type=armor_stand,tag=block] temp 0
scoreboard players set @s temp 1
execute as @e[type=armor_stand,tag=block] if score @e[type=armor_stand,scores={temp=1},limit=1] parent_id = @s id run tag @s add is_parent
execute as @e[type=armor_stand,tag=block] if score @e[type=armor_stand,scores={temp=1},limit=1] parent_id = @s id run tag @e[type=armor_stand,scores={temp=1}] add has_parent
