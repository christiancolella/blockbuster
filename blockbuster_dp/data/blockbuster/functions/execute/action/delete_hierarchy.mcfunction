scoreboard players set @s temp 1
scoreboard players set @e[type=armor_stand] global 0
execute if entity @s[tag=is_parent] run function blockbuster:misc/delete_hierarchy
kill @e[type=armor_stand,scores={temp=1}]
kill @e[type=armor_stand,scores={temp=4}]
scoreboard players set @e[type=armor_stand] temp 0