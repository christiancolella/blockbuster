# pass data to selected stand
scoreboard players set @e[type=armor_stand,tag=block] edit 0

execute as @e[type=armor_stand,tag=ray] at @s positioned ~ ~-0.75 ~ if entity @e[type=armor_stand,tag=block,distance=..0.5,limit=1,sort=nearest] run scoreboard players set @e[type=armor_stand,tag=block,distance=..0.5,limit=1,sort=nearest] temp 1
execute as @e[type=armor_stand,tag=ray] run scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=1}] edit = @s edit
tag @e[type=armor_stand,tag=block,scores={temp=1}] add glow

## relay to parent
tag @e[type=armor_stand] remove parent_glow
execute as @e[type=armor_stand,tag=block] if score @s self_uuid_0 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] parent_uuid_0 if score @s self_uuid_1 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] parent_uuid_1 if score @s self_uuid_2 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] parent_uuid_2 if score @s self_uuid_3 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] parent_uuid_3 run tag @s add parent_glow

## relay to player
execute as @e[type=armor_stand,tag=ray] at @s positioned ~ ~-0.75 ~ if entity @e[type=armor_stand,tag=block,tag=has_parent,distance=..0.5,limit=1] run scoreboard players set @p[scores={edit=1,temp=1}] edit 2
execute as @e[type=armor_stand,tag=ray] at @s positioned ~ ~-0.75 ~ if entity @e[type=armor_stand,tag=block,tag=!has_parent,distance=..0.5,limit=1] run scoreboard players set @p[scores={edit=2,temp=1}] edit 1

scoreboard players set @e[type=armor_stand,tag=block] temp 0

## add parent
execute as @e[type=armor_stand,tag=ray,tag=action,scores={edit=4}] at @s positioned ~ ~-0.75 ~ as @e[type=armor_stand,tag=block,distance=..0.5,limit=1] run scoreboard players set @s temp 1
execute as @e[type=armor_stand,tag=block,nbt={ArmorItems:[{id:"minecraft:netherite_boots",Count:1b,tag:{CustomModelData:4}},{},{},{}]}] run scoreboard players set @s temp 1
execute as @e[type=armor_stand,tag=block,nbt={ArmorItems:[{id:"minecraft:netherite_boots",Count:1b,tag:{CustomModelData:4}},{},{},{}]}] at @s run scoreboard players set @p edit 3
tag @e[type=armor_stand,tag=block,scores={temp=1}] add awaiting_parent
scoreboard players operation @p[scores={temp=1}] parent_uuid_0 = @e[type=armor_stand,tag=block,scores={temp=1}] self_uuid_0
scoreboard players operation @p[scores={temp=1}] parent_uuid_1 = @e[type=armor_stand,tag=block,scores={temp=1}] self_uuid_1
scoreboard players operation @p[scores={temp=1}] parent_uuid_2 = @e[type=armor_stand,tag=block,scores={temp=1}] self_uuid_2
scoreboard players operation @p[scores={temp=1}] parent_uuid_3 = @e[type=armor_stand,tag=block,scores={temp=1}] self_uuid_3
scoreboard players set @e[type=armor_stand,tag=block] temp 0

## select parent
execute as @e[type=armor_stand,tag=ray,tag=action,scores={edit=9}] at @s positioned ~ ~-0.75 ~ as @e[type=armor_stand,tag=block,distance=..0.5,limit=1] run scoreboard players set @s temp 1
execute as @e[type=armor_stand,tag=block,nbt={ArmorItems:[{id:"minecraft:netherite_boots",Count:1b,tag:{CustomModelData:9}},{},{},{}]}] run scoreboard players set @s temp 1
execute as @e[type=armor_stand,tag=block,nbt={ArmorItems:[{id:"minecraft:netherite_boots",Count:1b,tag:{CustomModelData:9}},{},{},{}]}] at @s run scoreboard players set @p edit 1
execute if entity @e[type=armor_stand,tag=block,scores={temp=1}] as @e[type=armor_stand,tag=block] if score @s self_uuid_0 = @p[scores={temp=1}] parent_uuid_0 if score @s self_uuid_1 = @p[scores={temp=1}] parent_uuid_1 if score @s self_uuid_2 = @p[scores={temp=1}] parent_uuid_2 if score @s self_uuid_3 = @p[scores={temp=1}] parent_uuid_3 run scoreboard players set @s temp 2
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] parent_uuid_0 = @e[type=armor_stand,tag=block,scores={temp=1}] self_uuid_0
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] parent_uuid_1 = @e[type=armor_stand,tag=block,scores={temp=1}] self_uuid_1
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] parent_uuid_2 = @e[type=armor_stand,tag=block,scores={temp=1}] self_uuid_2
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] parent_uuid_3 = @e[type=armor_stand,tag=block,scores={temp=1}] self_uuid_3
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] initial_offset_x = @e[type=armor_stand,tag=block,scores={temp=1}] self_pos_x
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] initial_offset_x -= @e[type=armor_stand,tag=block,scores={temp=2}] self_pos_x
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] initial_offset_y = @e[type=armor_stand,tag=block,scores={temp=2}] self_pos_y
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] initial_offset_y -= @e[type=armor_stand,tag=block,scores={temp=1}] self_pos_y
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] initial_offset_z = @e[type=armor_stand,tag=block,scores={temp=2}] self_pos_z
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] initial_offset_z -= @e[type=armor_stand,tag=block,scores={temp=1}] self_pos_z
tag @e[type=armor_stand,tag=block,scores={temp=2}] remove awaiting_parent
scoreboard players set @e[type=armor_stand,tag=block] temp 0

## remove parent
execute as @e[type=armor_stand,tag=ray,tag=action,scores={edit=5}] at @s positioned ~ ~-0.75 ~ as @e[type=armor_stand,tag=block,distance=..0.5,limit=1] run scoreboard players set @s temp 1
execute as @e[type=armor_stand,tag=block,nbt={ArmorItems:[{id:"minecraft:netherite_boots",Count:1b,tag:{CustomModelData:5}},{},{},{}]}] run scoreboard players set @s temp 1
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run scoreboard players reset @s parent_uuid_0
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run scoreboard players reset @s parent_uuid_1
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run scoreboard players reset @s parent_uuid_2
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run scoreboard players reset @s parent_uuid_3
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run scoreboard players set @s parent_pos_x 0
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run scoreboard players set @s parent_pos_y 0
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run scoreboard players set @s parent_pos_z 0
execute as @e[type=armor_stand,tag=block,scores={temp=1}] store result score @s initial_offset_x run data get entity @s Pos[0] 1000
execute as @e[type=armor_stand,tag=block,scores={temp=1}] store result score @s initial_offset_y run data get entity @s Pos[1] 1000
execute as @e[type=armor_stand,tag=block,scores={temp=1}] store result score @s initial_offset_z run data get entity @s Pos[2] 1000

## delete
execute as @e[type=armor_stand,tag=ray,tag=action,scores={edit=8}] at @s positioned ~ ~-0.75 ~ as @e[type=armor_stand,tag=block,distance=..0.5,limit=1] run kill @s
execute as @e[type=armor_stand,tag=block,nbt={ArmorItems:[{id:"minecraft:netherite_boots",Count:1b,tag:{CustomModelData:8}},{},{},{}]}] run kill @s

# kill ray
execute as @e[type=armor_stand,tag=ray] at @s positioned ~ ~-0.75 ~ if entity @e[type=armor_stand,tag=block,distance=..0.5] run kill @s
execute as @e[type=armor_stand,tag=ray] if score #steps global matches 128.. run kill @s
execute as @e[type=armor_stand,tag=block] run data modify entity @s ArmorItems[0] set value {}

# repeat
scoreboard players add #steps global 1
execute as @e[type=armor_stand,tag=ray] at @s run tp @s ^ ^ ^0.5
execute if entity @e[type=armor_stand,tag=ray] run function animations:ray/cast
scoreboard players set #steps global 0