execute as @e[type=area_effect_cloud,tag=ray] at @s positioned ~ ~-0.75 ~ if entity @e[type=armor_stand,tag=locked,tag=!hidden,tag=!locking,distance=..0.5,limit=1,sort=nearest] run scoreboard players set @e[type=armor_stand,tag=locked,tag=!hidden,distance=..0.5,limit=1,sort=nearest] selected 1
execute as @e[type=area_effect_cloud,tag=ray,tag=execute] run scoreboard players set @e[type=armor_stand,tag=locked,scores={selected=1}] selected 2

# hitbox
tag @e[type=armor_stand,tag=locked,scores={selected=1..2}] add selected
scoreboard players set @e[type=armor_stand,tag=locked,tag=selected] temp 1

## summon new hitbox stands
execute if entity @e[type=armor_stand,tag=locked,tag=!last_selected,scores={temp=1}] run function blockbuster:execute/new_hitbox

## teleport existing hitbox stands
execute if entity @e[type=armor_stand,tag=locked,tag=last_selected,scores={temp=1}] run function blockbuster:execute/teleport_hitbox

scoreboard players set @e[type=armor_stand,tag=locked] temp 0

# pass data to selected stand
execute if entity @p[scores={edit=1..,temp=1}] run function blockbuster:execute/locked/send_data

# hide
scoreboard players set @e[type=armor_stand,tag=locked,scores={selected=2,edit=6}] temp 1
execute if entity @e[type=armor_stand,tag=locked,scores={selected=2,edit=6}] run function blockbuster:execute/hide

# delete
execute as @e[type=armor_stand,tag=locked,scores={selected=2,edit=8}] run kill @s
execute if entity @e[type=armor_stand,tag=locked,scores={selected=2,edit=8}] run kill @e[type=area_effect_cloud,tag=ray]

# delete hierarchy
scoreboard players set @e[type=armor_stand] temp 0
scoreboard players set @e[type=armor_stand,tag=locked,scores={selected=2,edit=59}] temp 1
scoreboard players set @e[type=armor_stand,tag=locked,tag=delete_hierarchy] temp 1
execute if entity @e[type=armor_stand,tag=locked,scores={selected=2,edit=59}] run function blockbuster:execute/delete_hierarchy
execute if entity @e[type=armor_stand,tag=locked,tag=delete_hierarchy] run function blockbuster:execute/delete_hierarchy

# copy
scoreboard players set @e[type=armor_stand,tag=locked,scores={selected=2,edit=55}] temp 1
execute if entity @e[type=armor_stand,tag=locked,scores={selected=2,edit=55}] run function blockbuster:execute/locked/copy

# collision box
tag @e[type=armor_stand,tag=locked,scores={selected=2,edit=57}] add has_collision
tag @e[type=armor_stand,tag=locked,scores={selected=2,edit=58}] remove has_collision

# actionbar text
function blockbuster:execute/locked/actionbar

scoreboard players set @e[type=armor_stand,tag=locked] selected 0