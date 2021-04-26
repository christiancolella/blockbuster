execute as @e[type=area_effect_cloud,tag=ray] at @s positioned ~ ~-0.75 ~ if entity @e[type=armor_stand,tag=locked,tag=!hidden,tag=!locking,distance=..0.5,limit=1,sort=nearest] run scoreboard players set @e[type=armor_stand,tag=locked,tag=!hidden,distance=..0.5,limit=1,sort=nearest] selected 1
execute as @e[type=area_effect_cloud,tag=ray,tag=execute] run scoreboard players set @e[type=armor_stand,tag=locked,scores={selected=1}] selected 2

# hitbox
tag @e[type=armor_stand,tag=locked,scores={selected=1..2}] add selected
scoreboard players set @e[type=armor_stand,tag=locked,tag=selected] temp 1

## summon new hitbox stands
execute as @e[type=armor_stand,tag=locked,tag=!last_selected,scores={temp=1}] run function blockbuster:execute/new_hitbox

## teleport existing hitbox stands
execute as @e[type=armor_stand,tag=locked,tag=last_selected,scores={temp=1}] run function blockbuster:execute/teleport_hitbox

scoreboard players set @e[type=armor_stand,tag=locked] temp 0

# pass data to selected stand
execute as @e[type=armor_stand,tag=locked,scores={selected=1..2},limit=1] if entity @p[scores={edit=1..,temp=1}] run function blockbuster:execute/locked/send_data

# action
execute as @e[type=armor_stand,tag=locked,scores={selected=2},limit=1] run function blockbuster:execute/locked/action

# actionbar text
execute as @e[type=area_effect_cloud,tag=ray] run function blockbuster:execute/locked/actionbar

scoreboard players set @e[type=armor_stand,tag=locked] selected 0
kill @s