scoreboard players set @s temp 1

# summon ray
execute at @s run summon area_effect_cloud ~ ~1.625 ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["ray"]}
execute run data modify entity @e[type=area_effect_cloud,tag=ray,limit=1] Rotation set from entity @s Rotation

# inventory
scoreboard players set @s[scores={click=1..,temp=1}] temp 2
execute as @a[scores={temp=2}] run function blockbuster:inventory/transitions
scoreboard players set @s temp 1
function blockbuster:inventory/hotbar

# move copied block

## unlocked
scoreboard players set @e[type=armor_stand,tag=block] temp 0
execute as @e[type=armor_stand,tag=block] if score @s id = @p[tag=copy,scores={temp=1}] parent_id run scoreboard players set @s temp 1
execute at @s positioned ~ ~1.625 ~ positioned ^ ^ ^5 align xyz positioned ~0.5 ~-0.226 ~0.5 run tp @e[type=armor_stand,tag=block,scores={temp=1}] ~ ~ ~

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

## locked
scoreboard players set @e[type=armor_stand,tag=locked] temp 0
execute as @e[type=armor_stand,tag=locked] if score @s id = @p[tag=copy,scores={temp=1}] parent_id run scoreboard players set @s temp 1
execute at @s positioned ~ ~1.625 ~ positioned ^ ^ ^5 align xyz positioned ~0.5 ~-0.226 ~0.5 run tp @e[type=armor_stand,tag=locked,scores={temp=1}] ~ ~ ~

execute as @e[type=armor_stand,tag=locked,scores={temp=1}] store result entity @s ArmorItems[0].tag.InitialPos[0] int 1 run data get entity @s Pos[0] 1000
execute as @e[type=armor_stand,tag=locked,scores={temp=1}] store result entity @s ArmorItems[0].tag.InitialPos[1] int 1 run data get entity @s Pos[1] 1000
execute as @e[type=armor_stand,tag=locked,scores={temp=1}] store result entity @s ArmorItems[0].tag.InitialPos[2] int 1 run data get entity @s Pos[2] 1000

execute if entity @e[type=armor_stand,tag=locked,scores={temp=1}] run function blockbuster:parent/locked/send_animation

# send data to ray
scoreboard players operation @e[type=area_effect_cloud,tag=ray] edit = @s global
execute if entity @s[scores={click=1}] run tag @e[type=area_effect_cloud,tag=ray] add execute

# show barrier on hidden block
execute at @s[scores={edit=1..}] as @e[type=armor_stand,tag=hidden,distance=..8] run data modify entity @s ArmorItems[3] set value {id:"minecraft:barrier",Count:1b}

# unhide all
execute if entity @e[type=area_effect_cloud,tag=ray,tag=execute,scores={edit=7}] as @e[type=armor_stand,tag=hidden] run function blockbuster:misc/unhide

# stop all
execute if entity @e[type=area_effect_cloud,tag=ray,tag=execute,scores={edit=53}] run scoreboard players set @e[type=armor_stand,tag=block] play 0

# paste
execute if entity @e[type=area_effect_cloud,tag=ray,tag=execute,scores={edit=56}] run tag @s remove copy
execute if entity @e[type=area_effect_cloud,tag=ray,tag=execute,scores={edit=1}] run tag @s remove copy

scoreboard players set #steps global 0
execute unless entity @s[tag=copy] run function blockbuster:ray/cast
scoreboard players set @s click 0

scoreboard players set @s temp 0