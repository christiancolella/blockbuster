execute as @a[scores={temp=0},limit=1] run scoreboard players set @s temp 1

# summon ray
execute as @a[scores={temp=1}] at @s run summon area_effect_cloud ~ ~1.625 ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["ray"]}
execute as @a[scores={temp=1}] run data modify entity @e[type=area_effect_cloud,tag=ray,limit=1] Rotation set from entity @s Rotation

# state transitions
scoreboard players set @a[scores={click=1..,temp=1}] temp 2

## enter edit mode
execute as @a[scores={global=-1,temp=2}] run scoreboard players set @s edit 1

## exit
execute as @a[scores={edit=1,global=1,temp=2}] run replaceitem entity @s hotbar.0 air
execute as @a[scores={edit=1,global=1,temp=2}] run replaceitem entity @s hotbar.1 air
execute as @a[scores={edit=1,global=1,temp=2}] run replaceitem entity @s hotbar.2 air
execute as @a[scores={edit=1,global=1,temp=2}] run replaceitem entity @s hotbar.3 air
execute as @a[scores={edit=1,global=1,temp=2}] run replaceitem entity @s hotbar.4 air
execute as @a[scores={edit=1,global=1,temp=2}] run replaceitem entity @s hotbar.5 air
execute as @a[scores={edit=1,global=1,temp=2}] run replaceitem entity @s hotbar.6 air
execute as @a[scores={edit=1,global=1,temp=2}] run replaceitem entity @s hotbar.7 air
execute as @a[scores={edit=1,global=1,temp=2}] run replaceitem entity @s hotbar.8 air
execute as @a[scores={edit=1,global=1,temp=2}] run scoreboard players set @s edit 0

## home
execute as @a[scores={edit=1,global=2,temp=2}] run scoreboard players set @s edit 4
execute as @a[scores={edit=1,global=3,temp=2}] run scoreboard players set @s edit 5
execute as @a[scores={edit=1,global=54,temp=2}] run scoreboard players set @s edit 17

## transform
execute as @a[scores={edit=4,global=10,temp=2}] run scoreboard players set @s edit 13
execute as @a[scores={edit=4,global=11,temp=2}] run scoreboard players set @s edit 14
execute as @a[scores={edit=4,global=1,temp=2}] run scoreboard players set @s edit 1

## animate
execute as @a[scores={edit=5..6,global=20,temp=2}] run scoreboard players set @s edit 7
execute as @a[scores={edit=5..6,global=2,temp=2}] run scoreboard players set @s edit 9
execute as @a[scores={edit=5..6,global=21,temp=2}] run scoreboard players set @s edit 10
execute as @a[scores={edit=5..6,global=1,temp=2}] run scoreboard players set @s edit 1

## timeline
execute as @a[scores={edit=7,global=22,temp=2}] run scoreboard players set @s edit 8
execute as @a[scores={edit=7,global=1,temp=2}] run scoreboard players set @s edit 5

## animation length
execute as @a[scores={edit=8,global=1,temp=2}] run scoreboard players set @s edit 7

## transform from animate
execute as @a[scores={edit=9,global=10,temp=2}] run scoreboard players set @s edit 15
execute as @a[scores={edit=9,global=11,temp=2}] run scoreboard players set @s edit 16
execute as @a[scores={edit=9,global=1,temp=2}] run scoreboard players set @s edit 5

## keyframe
execute as @a[scores={edit=11,global=33,temp=2}] run scoreboard players set @s edit 12
execute as @a[scores={edit=10..11,global=1,temp=2}] run scoreboard players set @s edit 5

## transitions
execute as @a[scores={edit=12,global=1,temp=2}] run scoreboard players set @s edit 10

## move
execute as @a[scores={edit=13,global=1,temp=2}] run scoreboard players set @s edit 4

## rotate
execute as @a[scores={edit=14,global=1,temp=2}] run scoreboard players set @s edit 4

## move from animate
execute as @a[scores={edit=15,global=1,temp=2}] run scoreboard players set @s edit 9

## rotate from animate
execute as @a[scores={edit=16,global=1,temp=2}] run scoreboard players set @s edit 9

## options
execute as @a[scores={edit=17..20,global=1,temp=2}] run scoreboard players set @s edit 1

## copy
execute as @a[scores={edit=2,global=56,temp=2}] run scoreboard players set @s edit 17
execute as @a[scores={edit=2,global=1,temp=2}] as @e[type=armor_stand,tag=block] if score @s self_uuid_0 = @p[scores={temp=2}] parent_uuid_0 if score @s self_uuid_1 = @p[scores={temp=2}] parent_uuid_1 if score @s self_uuid_2 = @p[scores={temp=2}] parent_uuid_2 if score @s self_uuid_3 = @p[scores={temp=2}] parent_uuid_3 run tag @s add delete_hierarchy
execute as @a[scores={edit=2,global=1,temp=2}] run scoreboard players set @s edit 17
execute as @a[scores={edit=2,global=1,temp=2}] run scoreboard players set @s global 0

## parent
execute as @a[scores={edit=3,global=1,temp=2}] as @e[type=armor_stand,tag=block] if score @s self_uuid_0 = @p[scores={temp=2}] parent_uuid_0 if score @s self_uuid_1 = @p[scores={temp=2}] parent_uuid_1 if score @s self_uuid_2 = @p[scores={temp=2}] parent_uuid_2 if score @s self_uuid_3 = @p[scores={temp=2}] parent_uuid_3 run tag @s remove awaiting_parent
execute as @a[scores={edit=3,global=1,temp=2}] run scoreboard players set @s edit 17

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
function blockbuster:ray/cast
scoreboard players set @a[scores={temp=1}] click 0

# repeat
scoreboard players set @a[scores={temp=1}] temp 2
execute if entity @a[scores={temp=0}] run function blockbuster:ray/setup
scoreboard players set @a temp 0