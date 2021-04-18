execute as @e[type=armor_stand,tag=block,scores={temp=1}] run data modify entity @s ArmorItems[2] set from entity @s ArmorItems[3]
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run data modify entity @s ArmorItems[3] set value {id:"minecraft:barrier",Count:1b}
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run data merge entity @s {Marker:1b}
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run tag @s add hidden
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run kill @e[type=area_effect_cloud,tag=ray]
scoreboard players set @e[type=armor_stand,tag=block] temp 0