# execute
execute as @e[type=armor_stand,tag=ray] at @s positioned ~ ~-0.75 ~ if entity @e[type=armor_stand,tag=block,tag=!hidden,distance=..0.5] run function blockbuster:ray/execute

## unhide all
execute as @e[type=armor_stand,tag=ray,tag=execute,scores={edit=7}] run scoreboard players set @e[type=armor_stand,tag=block,tag=hidden] temp 1
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run data modify entity @s ArmorItems[3] set from entity @s ArmorItems[2]
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run data merge entity @s {Marker:0b}
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run tag @s remove hidden
scoreboard players set @e[type=armor_stand,tag=block] temp 0

## stop all
execute as @e[type=armor_stand,tag=ray,tag=execute,scores={edit=53}] run scoreboard players set @e[type=armor_stand,tag=block] play 0

# kill ray
execute as @e[type=armor_stand,tag=ray] at @s positioned ~ ~-0.75 ~ if entity @e[type=armor_stand,tag=block,tag=!hidden,distance=..0.5] run kill @s
execute as @e[type=armor_stand,tag=ray] if score #steps global matches 128.. run kill @s
execute as @e[type=armor_stand,tag=block] run data modify entity @s ArmorItems[0] set value {}

# repeat
scoreboard players add #steps global 1
execute as @e[type=armor_stand,tag=ray] at @s run tp @s ^ ^ ^0.5
execute if entity @e[type=armor_stand,tag=ray] run function blockbuster:ray/cast
scoreboard players set #steps global 0