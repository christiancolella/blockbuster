# tag selected
execute as @e[type=area_effect_cloud,tag=ray] at @s positioned ~ ~-0.75 ~ if entity @e[type=armor_stand,tag=block,tag=!hidden,distance=..0.5,limit=1,sort=nearest] run tag @e[type=armor_stand,tag=block,tag=!hidden,distance=..0.5,limit=1,sort=nearest] add selected

# execute
scoreboard players set @e[type=armor_stand,tag=block] temp 0
execute as @e[type=area_effect_cloud,tag=ray] at @s positioned ~ ~-0.75 ~ if entity @e[type=armor_stand,tag=block,tag=!hidden,distance=..0.5] run function blockbuster:ray/execute

## unhide all
execute as @e[type=area_effect_cloud,tag=ray,tag=execute,scores={edit=7}] run scoreboard players set @e[type=armor_stand,tag=block,tag=hidden] temp 1
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run data modify entity @s ArmorItems[3] set from entity @s ArmorItems[2]
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run data merge entity @s {Marker:0b}
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run tag @s remove hidden
scoreboard players set @e[type=armor_stand,tag=block] temp 0

## stop all
execute as @e[type=area_effect_cloud,tag=ray,tag=execute,scores={edit=53}] run scoreboard players set @e[type=armor_stand,tag=block] play 0

# paste
execute as @e[type=area_effect_cloud,tag=ray,tag=execute,scores={edit=56}] run tag @p[tag=copy,scores={temp=1}] remove copy
execute as @e[type=area_effect_cloud,tag=ray,tag=execute,scores={edit=1}] run tag @p[tag=copy,scores={temp=1}] remove copy

# kill ray
execute as @e[type=area_effect_cloud,tag=ray] at @s positioned ~ ~-0.75 ~ if entity @e[type=armor_stand,tag=block,tag=!hidden,distance=..0.5] run kill @s
execute as @e[type=area_effect_cloud,tag=ray] if score #steps global matches 128.. run kill @s

# repeat
scoreboard players add #steps global 1
execute as @e[type=area_effect_cloud,tag=ray] at @s run tp @s ^ ^ ^0.5
execute if entity @e[type=area_effect_cloud,tag=ray] run function blockbuster:ray/cast
scoreboard players set #steps global 0