# set up scores
execute as @e[type=armor_stand,tag=block] store result score @s self_uuid_0 run data get entity @s UUID[0]
execute as @e[type=armor_stand,tag=block] store result score @s self_uuid_1 run data get entity @s UUID[1]
execute as @e[type=armor_stand,tag=block] store result score @s self_uuid_2 run data get entity @s UUID[2]
execute as @e[type=armor_stand,tag=block] store result score @s self_uuid_3 run data get entity @s UUID[3]

execute as @e[type=armor_stand,tag=block] store result score @s self_pos_x run data get entity @s Pos[0] 1000
execute as @e[type=armor_stand,tag=block] store result score @s self_pos_y run data get entity @s Pos[1] 1000
execute as @e[type=armor_stand,tag=block] store result score @s self_pos_z run data get entity @s Pos[2] 1000

execute as @e[type=armor_stand,tag=block] store success score @s has_rot run data get entity @s Pose.Head
execute as @e[type=armor_stand,tag=block] if score @s has_rot matches 0 run data merge entity @s {Pose:{Head:[0.001f,0.001f,0.001f]}}

execute as @e[type=armor_stand,tag=block] store result score @s self_rot_x run data get entity @s Pose.Head[0] 1000
execute as @e[type=armor_stand,tag=block] store result score @s self_rot_y run data get entity @s Pose.Head[1] 1000
execute as @e[type=armor_stand,tag=block] store result score @s self_rot_z run data get entity @s Pose.Head[2] 1000

# check relations and add tags
tag @e[type=armor_stand,tag=block] remove is_parent
tag @e[type=armor_stand,tag=block] remove has_parent
function animations:test_for_parent

# compute and apply parented transformations
function animations:transform

# edit mode
function animations:edit