# new block

## from armor stand
execute if entity @e[type=armor_stand,tag=block,nbt={HandItems:[{id:"minecraft:bee_spawn_egg",Count:1b,tag:{CustomModelData:1}},{}]}] run function blockbuster:misc/new_block/from_stand

## from spawn egg
execute if entity @e[type=armor_stand,tag=new_block] run function blockbuster:misc/new_block/from_egg

# collision box
scoreboard players set @e[type=armor_stand,tag=block] temp 0
function blockbuster:misc/collision_box

# edit mode
scoreboard players set @e[type=armor_stand,tag=block] temp 0
scoreboard players set @e[type=armor_stand,tag=block] global 0
function blockbuster:edit

# check relations and add tags
tag @e[type=armor_stand,tag=block] remove is_parent
tag @e[type=armor_stand,tag=block] remove has_parent
scoreboard players set @e[type=armor_stand,tag=block] temp 0
function blockbuster:parent/relation

scoreboard players set #depth global 0
scoreboard players set @e[type=armor_stand,tag=block,tag=!has_parent] temp 1
scoreboard players set @e[type=armor_stand,tag=block] depth -1
scoreboard players set @e[type=armor_stand,tag=block,tag=!has_parent] depth 0
function blockbuster:parent/depth

# animate
scoreboard players set @e[type=armor_stand,tag=block] temp 0
scoreboard players set @e[type=armor_stand,tag=block] global 0
function blockbuster:animate

# compute and apply parented transformations

## set identity matrix if no parent
scoreboard players set @e[type=armor_stand,tag=block] temp 0
scoreboard players set @e[type=armor_stand,tag=block] global 0
scoreboard players set #depth global 0
function blockbuster:transform

## merge transformations
execute as @e[type=armor_stand,tag=block,tag=has_parent] run scoreboard players operation @s temp = @s parent_vel_x
execute as @e[type=armor_stand,tag=block,tag=!has_parent] run scoreboard players operation @s temp = @s self_vel_x
execute as @e[type=armor_stand,tag=block] run scoreboard players operation @s temp *= #150 constants
execute as @e[type=armor_stand,tag=block] run scoreboard players operation @s temp /= #100 constants
execute as @e[type=armor_stand,tag=block] run scoreboard players operation @s self_pos_x += @s temp
execute as @e[type=armor_stand,tag=block] store result entity @s Pos[0] double 0.001 run scoreboard players get @s self_pos_x

execute as @e[type=armor_stand,tag=block,tag=has_parent] run scoreboard players operation @s temp = @s parent_vel_y
execute as @e[type=armor_stand,tag=block,tag=!has_parent] run scoreboard players operation @s temp = @s self_vel_y
execute as @e[type=armor_stand,tag=block] run scoreboard players operation @s temp *= #150 constants
execute as @e[type=armor_stand,tag=block] run scoreboard players operation @s temp /= #100 constants
execute as @e[type=armor_stand,tag=block] run scoreboard players operation @s self_pos_y += @s temp
execute as @e[type=armor_stand,tag=block] store result entity @s Pos[1] double 0.001 run scoreboard players get @s self_pos_y

execute as @e[type=armor_stand,tag=block,tag=has_parent] run scoreboard players operation @s temp = @s parent_vel_z
execute as @e[type=armor_stand,tag=block,tag=!has_parent] run scoreboard players operation @s temp = @s self_vel_z
execute as @e[type=armor_stand,tag=block] run scoreboard players operation @s temp *= #150 constants
execute as @e[type=armor_stand,tag=block] run scoreboard players operation @s temp /= #100 constants
execute as @e[type=armor_stand,tag=block] run scoreboard players operation @s self_pos_z += @s temp
execute as @e[type=armor_stand,tag=block] store result entity @s Pos[2] double 0.001 run scoreboard players get @s self_pos_z

execute as @e[type=armor_stand,tag=block] store success score @s has_rot run data get entity @s Pose.Head
execute as @e[type=armor_stand,tag=block] if score @s has_rot matches 0 run data merge entity @s {Pose:{Head:[0.001f,0.001f,0.001f]}}

execute as @e[type=armor_stand,tag=block] store result entity @s Pose.Head[0] float 0.001 run scoreboard players get @s self_rot_x
execute as @e[type=armor_stand,tag=block] store result entity @s Pose.Head[1] float 0.001 run scoreboard players get @s self_rot_y
execute as @e[type=armor_stand,tag=block] store result entity @s Pose.Head[2] float 0.001 run scoreboard players get @s self_rot_z

# collision box continued
execute as @e[type=armor_stand,tag=block,tag=has_collision] run scoreboard players operation @s last_self_pos_x = @s self_pos_x
execute as @e[type=armor_stand,tag=block,tag=has_collision] run scoreboard players operation @s last_self_pos_y = @s self_pos_y
execute as @e[type=armor_stand,tag=block,tag=has_collision] run scoreboard players operation @s last_self_pos_y += #726 constants
execute as @e[type=armor_stand,tag=block,tag=has_collision] run scoreboard players operation @s last_self_pos_z = @s self_pos_z
execute at @e[type=armor_stand,tag=block,tag=has_collision] positioned ~ ~0.726 ~ if block ~ ~ ~ air run setblock ~ ~ ~ barrier
