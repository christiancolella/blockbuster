# pass data to selected stand
scoreboard players set @e[type=armor_stand,tag=block] edit 0

execute as @e[type=armor_stand,tag=ray] at @s positioned ~ ~-0.75 ~ if entity @e[type=armor_stand,tag=block,tag=!hidden,distance=..0.5,limit=1,sort=nearest] run scoreboard players set @e[type=armor_stand,tag=block,tag=!hidden,distance=..0.5,limit=1,sort=nearest] temp 1
execute as @e[type=armor_stand,tag=ray] run scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=1}] edit = @s edit
tag @e[type=armor_stand,tag=block,scores={temp=1}] add glow

## relay to parent
tag @e[type=armor_stand] remove parent_glow
execute as @e[type=armor_stand,tag=block,tag=!hidden] if score @s self_uuid_0 = @e[type=armor_stand,tag=block,tag=!hidden,scores={temp=1},limit=1] parent_uuid_0 if score @s self_uuid_1 = @e[type=armor_stand,tag=block,tag=!hidden,scores={temp=1},limit=1] parent_uuid_1 if score @s self_uuid_2 = @e[type=armor_stand,tag=block,tag=!hidden,scores={temp=1},limit=1] parent_uuid_2 if score @s self_uuid_3 = @e[type=armor_stand,tag=block,tag=!hidden,scores={temp=1},limit=1] parent_uuid_3 run tag @s add parent_glow

## relay to player
execute as @e[type=armor_stand,tag=ray] at @s positioned ~ ~-0.75 ~ if entity @e[type=armor_stand,tag=block,tag=!hidden,tag=has_parent,distance=..0.5,limit=1] run scoreboard players set @p[scores={edit=1,temp=1}] edit 2
execute as @e[type=armor_stand,tag=ray] at @s positioned ~ ~-0.75 ~ if entity @e[type=armor_stand,tag=block,tag=!hidden,tag=!has_parent,distance=..0.5,limit=1] run scoreboard players set @p[scores={edit=2,temp=1}] edit 1

scoreboard players set @e[type=armor_stand,tag=block] temp 0

# execute
execute as @e[type=armor_stand,tag=ray] at @s positioned ~ ~-0.75 ~ if entity @e[type=armor_stand,tag=block,tag=!hidden,distance=..0.5] run function animations:ray/execute

## unhide all
execute as @e[type=armor_stand,tag=ray,tag=execute,scores={edit=7}] run scoreboard players set @e[type=armor_stand,tag=block,tag=hidden] temp 1
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run data modify entity @s ArmorItems[3] set from entity @s ArmorItems[2]
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run data merge entity @s {Marker:0b}
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run tag @s remove hidden
scoreboard players set @e[type=armor_stand,tag=block] temp 0

# kill ray
execute as @e[type=armor_stand,tag=ray] at @s positioned ~ ~-0.75 ~ if entity @e[type=armor_stand,tag=block,tag=!hidden,distance=..0.5] run kill @s
execute as @e[type=armor_stand,tag=ray] if score #steps global matches 128.. run kill @s
execute as @e[type=armor_stand,tag=block] run data modify entity @s ArmorItems[0] set value {}

# repeat
scoreboard players add #steps global 1
execute as @e[type=armor_stand,tag=ray] at @s run tp @s ^ ^ ^0.5
execute if entity @e[type=armor_stand,tag=ray] run function animations:ray/cast
scoreboard players set #steps global 0