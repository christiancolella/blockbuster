execute as @a[tag=blockbuster,scores={temp=0},limit=1] run scoreboard players set @s temp 1

# summon ray
execute as @a[scores={temp=1}] at @s run summon area_effect_cloud ~ ~1.625 ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["ray"]}
execute as @a[scores={temp=1}] run data modify entity @e[type=area_effect_cloud,tag=ray,limit=1] Rotation set from entity @s Rotation

# state transitions
scoreboard players set @a[scores={click=1..,temp=1}] temp 2
execute if entity @a[scores={temp=2}] run function blockbuster:inventory/transitions
scoreboard players set @a[scores={temp=2}] temp 1

# move copied block
scoreboard players set @e[type=armor_stand,tag=block] temp 0
scoreboard players set @e[type=area_effect_cloud,tag=keyframe] temp 0
execute as @e[type=armor_stand,tag=block] if score @s self_uuid_0 = @p[tag=copy,scores={temp=1}] parent_uuid_0 if score @s self_uuid_1 = @p[tag=copy,scores={temp=1}] parent_uuid_1 if score @s self_uuid_2 = @p[tag=copy,scores={temp=1}] parent_uuid_2 if score @s self_uuid_3 = @p[tag=copy,scores={temp=1}] parent_uuid_3 run scoreboard players set @s temp 1
execute as @p[scores={temp=1}] at @s positioned ~ ~1.625 ~ positioned ^ ^ ^5 align xyz positioned ~0.5 ~-0.226 ~0.5 run tp @e[type=armor_stand,tag=block,scores={temp=1}] ~ ~ ~
execute as @e[type=armor_stand,tag=block,scores={temp=1}] store result score @s initial_pos_x run data get entity @s Pos[0] 1000
execute as @e[type=armor_stand,tag=block,scores={temp=1}] store result score @s initial_pos_y run data get entity @s Pos[1] 1000
execute as @e[type=armor_stand,tag=block,scores={temp=1}] store result score @s initial_pos_z run data get entity @s Pos[2] 1000

scoreboard players set @e[type=armor_stand,tag=block,scores={temp=1}] parent_matrix_0 1000
scoreboard players set @e[type=armor_stand,tag=block,scores={temp=1}] parent_matrix_1 0
scoreboard players set @e[type=armor_stand,tag=block,scores={temp=1}] parent_matrix_2 0
scoreboard players set @e[type=armor_stand,tag=block,scores={temp=1}] parent_matrix_3 0
scoreboard players set @e[type=armor_stand,tag=block,scores={temp=1}] parent_matrix_4 1000
scoreboard players set @e[type=armor_stand,tag=block,scores={temp=1}] parent_matrix_5 0
scoreboard players set @e[type=armor_stand,tag=block,scores={temp=1}] parent_matrix_6 0
scoreboard players set @e[type=armor_stand,tag=block,scores={temp=1}] parent_matrix_7 0
scoreboard players set @e[type=armor_stand,tag=block,scores={temp=1}] parent_matrix_8 1000

# send data to ray
scoreboard players operation @e[type=area_effect_cloud,tag=ray] edit = @a[scores={temp=1}] global
execute as @a[scores={click=1..,temp=1}] run tag @e[type=area_effect_cloud,tag=ray] add execute

## show barrier on hidden block
execute at @a[scores={temp=1,edit=1..}] as @e[type=armor_stand,tag=hidden,distance=..8] run data modify entity @s ArmorItems[3] set value {id:"minecraft:barrier",Count:1b}

## unhide all
scoreboard players set @e[type=armor_stand,tag=block] temp 0
scoreboard players set @e[type=armor_stand,tag=locked] temp 0
execute as @e[type=area_effect_cloud,tag=ray,tag=execute,scores={edit=7}] run scoreboard players set @e[type=armor_stand,tag=hidden] temp 1
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run data modify entity @s ArmorItems[3] set from entity @s ArmorItems[2]
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run data merge entity @s {Marker:0b}
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run tag @s remove hidden

## stop all
execute as @e[type=area_effect_cloud,tag=ray,tag=execute,scores={edit=53}] run scoreboard players set @e[type=armor_stand,tag=block] play 0
execute as @e[type=area_effect_cloud,tag=ray,tag=execute,scores={edit=53}] run scoreboard players set @e[type=armor_stand,tag=locked] play 0

## paste
execute as @e[type=area_effect_cloud,tag=ray,tag=execute,scores={edit=56}] run tag @p[tag=copy,scores={temp=1}] remove copy
execute as @e[type=area_effect_cloud,tag=ray,tag=execute,scores={edit=1}] run tag @p[tag=copy,scores={temp=1}] remove copy

scoreboard players set #steps global 0
function blockbuster:ray/cast
scoreboard players set @a[scores={temp=1}] click 0

# repeat
scoreboard players set @a[scores={temp=1}] temp 2
execute if entity @a[tag=blockbuster,scores={temp=0}] run function blockbuster:ray/setup