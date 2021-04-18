execute as @a[scores={temp=0},limit=1] run scoreboard players set @s temp 1

# summon ray
execute as @a[scores={temp=1}] at @s run summon area_effect_cloud ~ ~1.625 ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["ray"]}
execute as @a[scores={temp=1}] run data modify entity @e[type=area_effect_cloud,tag=ray,limit=1] Rotation set from entity @s Rotation

# state transitions
scoreboard players set @a[scores={click=1..,temp=1}] temp 2
execute if entity @a[scores={temp=2}] run function blockbuster:inventory/transitions
scoreboard players set @a[scores={temp=2}] temp 1

# move copied block
scoreboard players set @e[type=armor_stand,tag=block] temp 0
execute as @e[type=armor_stand,tag=block] if score @s self_uuid_0 = @p[tag=copy,scores={temp=1}] parent_uuid_0 if score @s self_uuid_1 = @p[tag=copy,scores={temp=1}] parent_uuid_1 if score @s self_uuid_2 = @p[tag=copy,scores={temp=1}] parent_uuid_2 if score @s self_uuid_3 = @p[tag=copy,scores={temp=1}] parent_uuid_3 run scoreboard players set @s temp 1
execute as @p[scores={temp=1}] at @s positioned ~ ~1.625 ~ positioned ^ ^ ^5 align xyz positioned ~0.5 ~-0.226 ~0.5 run tp @e[type=armor_stand,tag=block,scores={temp=1}] ~ ~ ~
execute as @e[type=armor_stand,tag=block,scores={temp=1}] store result score @s initial_pos_x run data get entity @s Pos[0] 1000
execute as @e[type=armor_stand,tag=block,scores={temp=1}] store result score @s initial_pos_y run data get entity @s Pos[1] 1000
execute as @e[type=armor_stand,tag=block,scores={temp=1}] store result score @s initial_pos_z run data get entity @s Pos[2] 1000

# send data to ray
scoreboard players operation @e[type=area_effect_cloud,tag=ray] edit = @a[scores={temp=1}] global
execute as @a[scores={click=1..,temp=1}] run tag @e[type=area_effect_cloud,tag=ray] add execute

## unhide all
execute as @e[type=area_effect_cloud,tag=ray,tag=execute,scores={edit=7}] run scoreboard players set @e[type=armor_stand,tag=block,tag=hidden] temp 1
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run data modify entity @s ArmorItems[3] set from entity @s ArmorItems[2]
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run data merge entity @s {Marker:0b}
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run tag @s remove hidden
scoreboard players set @e[type=armor_stand,tag=block] temp 0

## stop all
execute as @e[type=area_effect_cloud,tag=ray,tag=execute,scores={edit=53}] run scoreboard players set @e[type=armor_stand,tag=block] play 0

## paste
execute as @e[type=area_effect_cloud,tag=ray,tag=execute,scores={edit=56}] run tag @p[tag=copy,scores={temp=1}] remove copy
execute as @e[type=area_effect_cloud,tag=ray,tag=execute,scores={edit=1}] run tag @p[tag=copy,scores={temp=1}] remove copy

scoreboard players set #steps global 0
function blockbuster:ray/cast
scoreboard players set @a[scores={temp=1}] click 0

# repeat
scoreboard players set @a[scores={temp=1}] temp 2
execute if entity @a[scores={temp=0}] run function blockbuster:ray/setup
scoreboard players set @a temp 0