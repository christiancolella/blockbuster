# hide
execute as @s[scores={edit=6}] run function blockbuster:execute/action/hide

# delete
execute if entity @s[scores={edit=8}] run kill @e[type=area_effect_cloud,tag=ray]
execute as @e[type=armor_stand,tag=locked,scores={selected=2,edit=8}] run kill @s[scores={edit=8}]

# delete hierarchy
scoreboard players set @e[type=armor_stand] temp 0
execute as @s[scores={edit=59}] run function blockbuster:execute/action/delete_hierarchy
execute as @e[type=armor_stand,tag=locked,tag=delete_hierarchy] run function blockbuster:execute/action/delete_hierarchy

# copy
execute as @s[scores={edit=55}] run function blockbuster:execute/locked/copy

# collision box
tag @s[scores={edit=57}] add has_collision
tag @s[scores={edit=58}] remove has_collision