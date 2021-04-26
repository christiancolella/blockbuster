# execute
execute as @e[type=area_effect_cloud,tag=ray] at @s positioned ~ ~-0.75 ~ if entity @e[type=armor_stand,tag=block,tag=!hidden,distance=..0.5] run function blockbuster:execute/main
execute as @e[type=area_effect_cloud,tag=ray] at @s positioned ~ ~-0.75 ~ if entity @e[type=armor_stand,tag=locked,tag=!hidden,distance=..0.5] run function blockbuster:execute/locked/main

# kill ray
execute as @e[type=area_effect_cloud,tag=ray] if score #steps global matches 64.. run kill @s

# repeat
scoreboard players add #steps global 1
execute as @e[type=area_effect_cloud,tag=ray] at @s run tp @s ^ ^ ^0.5
execute if entity @e[type=area_effect_cloud,tag=ray] run function blockbuster:ray/cast