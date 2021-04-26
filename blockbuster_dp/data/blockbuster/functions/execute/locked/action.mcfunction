# hide
execute as @s[scores={edit=6}] run function blockbuster:execute/action/hide

# delete
scoreboard players set @e[type=armor_stand] temp 0

scoreboard players set @s[scores={edit=8}] temp 1
scoreboard players set @s[scores={edit=59}] temp 1
execute if entity @s[tag=has_parent,scores={temp=1}] run function blockbuster:parent/locked/find_root
scoreboard players set @e[type=armor_stand,tag=locked,scores={temp=2}] temp 0
execute as @e[type=armor_stand,tag=locked,scores={temp=1}] run function blockbuster:execute/action/delete_hierarchy

execute as @e[type=armor_stand,tag=locked,tag=delete_hierarchy] run function blockbuster:execute/action/delete_hierarchy

# copy
execute as @s[scores={edit=55}] run function blockbuster:execute/locked/copy

# collision box
tag @s[scores={edit=57}] add has_collision
tag @s[scores={edit=58}] remove has_collision