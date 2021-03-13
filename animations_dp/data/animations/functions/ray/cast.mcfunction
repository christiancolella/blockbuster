# pass data to selected stand
tag @e[type=armor_stand,tag=block] remove add_parent
tag @e[type=armor_stand,tag=block] remove select_parent
tag @e[type=armor_stand,tag=block] remove delete

execute as @e[type=armor_stand,tag=ray] at @s positioned ~ ~-1.5 ~ if entity @e[type=armor_stand,tag=block,distance=..0.5,limit=1,sort=nearest] run scoreboard players set @e[type=armor_stand,tag=block,distance=..0.5,limit=1,sort=nearest] temp 1
execute as @e[type=armor_stand,tag=ray,tag=add_parent] run tag @e[type=armor_stand,tag=block,scores={temp=1}] add add_parent
execute as @e[type=armor_stand,tag=ray,tag=select_parent] run tag @e[type=armor_stand,tag=block,scores={temp=1}] add select_parent
execute as @e[type=armor_stand,tag=ray,tag=delete] run tag @e[type=armor_stand,tag=block,scores={temp=1}] add delete
tag @e[type=armor_stand,tag=block,scores={temp=1}] add glow
scoreboard players set @e[type=armor_stand,tag=block] temp 0

## add parent
execute as @e[type=armor_stand,tag=ray,tag=add_parent,tag=action] at @s positioned ~ ~-1.5 ~ as @e[type=armor_stand,tag=block,distance=..0.5,limit=1] run scoreboard players set @s temp 1
execute as @e[type=armor_stand,tag=block,nbt={ArmorItems:[{id:"minecraft:netherite_boots",Count:1b,tag:{CustomModelData:2}},{},{},{}]}] run scoreboard players set @s temp 1
tag @e[type=armor_stand,tag=block,scores={temp=1}] add awaiting_parent
scoreboard players operation @a[scores={temp=1}] parent_uuid_0 = @e[type=armor_stand,tag=block,scores={temp=1}] self_uuid_0
scoreboard players operation @a[scores={temp=1}] parent_uuid_1 = @e[type=armor_stand,tag=block,scores={temp=1}] self_uuid_1
scoreboard players operation @a[scores={temp=1}] parent_uuid_2 = @e[type=armor_stand,tag=block,scores={temp=1}] self_uuid_2
scoreboard players operation @a[scores={temp=1}] parent_uuid_3 = @e[type=armor_stand,tag=block,scores={temp=1}] self_uuid_3
scoreboard players set @e[type=armor_stand,tag=block] temp 0

## select parent
execute as @e[type=armor_stand,tag=ray,tag=select_parent,tag=action] at @s positioned ~ ~-1.5 ~ as @e[type=armor_stand,tag=block,distance=..0.5,limit=1] run scoreboard players set @s temp 1
execute as @e[type=armor_stand,tag=block,nbt={ArmorItems:[{id:"minecraft:netherite_boots",Count:1b,tag:{CustomModelData:3}},{},{},{}]}] run scoreboard players set @s temp 1
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

## delete
execute as @e[type=armor_stand,tag=ray,tag=delete,tag=action] at @s positioned ~ ~-1.5 ~ as @e[type=armor_stand,tag=block,distance=..0.5,limit=1] run kill @s
execute as @e[type=armor_stand,tag=block,nbt={ArmorItems:[{id:"minecraft:netherite_boots",Count:1b,tag:{CustomModelData:4}},{},{},{}]}] run kill @s

# kill ray
execute as @e[type=armor_stand,tag=ray] at @s positioned ~ ~-1.5 ~ if entity @e[type=armor_stand,tag=block,distance=..0.5] run kill @s
execute as @e[type=armor_stand,tag=ray] if score @s steps matches 128.. run kill @s
execute as @e[type=armor_stand,tag=block] run data modify entity @s ArmorItems[0] set value {}

# repeat
scoreboard players add @e[type=armor_stand,tag=ray] steps 1
execute as @e[type=armor_stand,tag=ray] at @s run tp @s ^ ^ ^0.5
execute if entity @e[type=armor_stand,tag=ray] run function animations:ray/cast