# new block

## from armor stand
execute as @e[type=armor_stand,tag=block,nbt={HandItems:[{id:"minecraft:bee_spawn_egg",Count:1b,tag:{CustomModelData:1}},{}]}] run function blockbuster:misc/new_block/from_stand

## from spawn egg
execute as @e[type=armor_stand,tag=new_block] run function blockbuster:misc/new_block/from_egg

# edit mode
scoreboard players set @e[type=armor_stand] temp 0
scoreboard players set @e[type=armor_stand] global 0
execute at @e[type=armor_stand,tag=has_collision] positioned ~ ~0.726 ~ if block ~ ~ ~ barrier run setblock ~ ~ ~ air
function blockbuster:edit

# check relations and add tags
tag @e[type=armor_stand,tag=block] remove is_parent
tag @e[type=armor_stand,tag=block] remove has_parent
scoreboard players set @e[type=armor_stand] temp 0
execute if entity @e[type=armor_stand,tag=block] run function blockbuster:parent/relation

scoreboard players set #depth global 0
scoreboard players set @e[type=armor_stand,tag=block] temp 0
scoreboard players set @e[type=armor_stand,tag=block,tag=!has_parent] temp 1
scoreboard players set @e[type=armor_stand,tag=block] depth -1
scoreboard players set @e[type=armor_stand,tag=block,tag=!has_parent] depth 0
execute if entity @e[type=armor_stand,tag=block,tag=has_parent] run function blockbuster:parent/depth
scoreboard players operation #maxdepth global = #depth global
scoreboard players remove #maxdepth global 1

# animate
scoreboard players set @e[type=armor_stand,tag=block] temp 0
function blockbuster:parent/send_animation

scoreboard players set @e[type=armor_stand,tag=block] temp 0
scoreboard players set @e[type=armor_stand,tag=block] global 0
execute if entity @e[type=armor_stand,tag=block] run function blockbuster:animate

# compute and apply parented transformations
scoreboard players set @e[type=armor_stand,tag=block] temp 0
scoreboard players set @e[type=armor_stand,tag=block] global 0
scoreboard players set #depth global 0
execute if entity @e[type=armor_stand,tag=block] run function blockbuster:transform
execute as @e[type=armor_stand,tag=block] run function blockbuster:transform/apply

execute as @e[type=armor_stand] store success score @s has_rot run data get entity @s Pose.Head
execute as @e[type=armor_stand] if score @s has_rot matches 0 run data merge entity @s {Pose:{Head:[0.001f,0.001f,0.001f]}}

execute at @e[type=armor_stand,tag=block,tag=has_collision] positioned ~ ~0.726 ~ if block ~ ~ ~ air run setblock ~ ~ ~ barrier

# locking
scoreboard players set @e[type=armor_stand,tag=block] temp 0
scoreboard players set @e[type=armor_stand,tag=block] global 0
execute as @e[type=armor_stand,tag=block,tag=locking,tag=!new_locking] run function blockbuster:misc/locking

scoreboard players set @e[type=armor_stand,tag=new_locking] time -1
tag @e[type=armor_stand,tag=new_locking] add locking
tag @e[type=armor_stand,tag=new_locking] remove new_locking

# locked
execute as @e[type=armor_stand,tag=locked] run function blockbuster:misc/locked
