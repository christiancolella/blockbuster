# set up scores
scoreboard players set @e[type=armor_stand,tag=block] temp 0

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

# angular velocity
execute as @e[type=armor_stand,tag=block] run scoreboard players operation @s self_omega_x = @s initial_rot_x
execute as @e[type=armor_stand,tag=block] run scoreboard players operation @s self_omega_x -= @s last_rot_x
execute as @e[type=armor_stand,tag=block] if score @s self_omega_x matches 180000.. run scoreboard players operation @s self_omega_x -= #360000 constants
execute as @e[type=armor_stand,tag=block] if score @s self_omega_x matches ..-180000 run scoreboard players operation @s self_omega_x += #360000 constants

execute as @e[type=armor_stand,tag=block] run scoreboard players operation @s self_omega_y = @s initial_rot_y
execute as @e[type=armor_stand,tag=block] run scoreboard players operation @s self_omega_y -= @s last_rot_y
execute as @e[type=armor_stand,tag=block] if score @s self_omega_y matches 180000.. run scoreboard players operation @s self_omega_y -= #360000 constants
execute as @e[type=armor_stand,tag=block] if score @s self_omega_y matches ..-180000 run scoreboard players operation @s self_omega_y += #360000 constants

execute as @e[type=armor_stand,tag=block] run scoreboard players operation @s self_omega_z = @s initial_rot_z
execute as @e[type=armor_stand,tag=block] run scoreboard players operation @s self_omega_z -= @s last_rot_z
execute as @e[type=armor_stand,tag=block] if score @s self_omega_z matches 180000.. run scoreboard players operation @s self_omega_z -= #360000 constants
execute as @e[type=armor_stand,tag=block] if score @s self_omega_z matches ..-180000 run scoreboard players operation @s self_omega_z += #360000 constants

execute as @e[type=armor_stand,tag=block] run scoreboard players operation @s last_rot_x = @s initial_rot_x
execute as @e[type=armor_stand,tag=block] run scoreboard players operation @s last_rot_y = @s initial_rot_y
execute as @e[type=armor_stand,tag=block] run scoreboard players operation @s last_rot_z = @s initial_rot_z

# check relations and add tags
tag @e[type=armor_stand,tag=block] remove is_parent
tag @e[type=armor_stand,tag=block] remove has_parent
function animations:test_for_parent

scoreboard players set @e[type=armor_stand,tag=block] depth -1
scoreboard players set @e[type=armor_stand,tag=block,tag=!has_parent] depth 0
scoreboard players set #depth global 0
scoreboard players set @e[type=armor_stand,tag=block,tag=!has_parent] temp 1
function animations:depth

# compute and apply parented transformations

## set identity matrix if no parent
scoreboard players set @e[type=armor_stand,tag=!has_parent] parent_matrix_0 1000
scoreboard players set @e[type=armor_stand,tag=!has_parent] parent_matrix_1 0
scoreboard players set @e[type=armor_stand,tag=!has_parent] parent_matrix_2 0
scoreboard players set @e[type=armor_stand,tag=!has_parent] parent_matrix_3 0
scoreboard players set @e[type=armor_stand,tag=!has_parent] parent_matrix_4 1000
scoreboard players set @e[type=armor_stand,tag=!has_parent] parent_matrix_5 0
scoreboard players set @e[type=armor_stand,tag=!has_parent] parent_matrix_6 0
scoreboard players set @e[type=armor_stand,tag=!has_parent] parent_matrix_7 0
scoreboard players set @e[type=armor_stand,tag=!has_parent] parent_matrix_8 1000

scoreboard players set #depth global 0
function animations:transform

## merge transformations
execute as @e[type=armor_stand,tag=block] store result entity @s Pos[0] double 0.001 run scoreboard players get @s self_pos_x
execute as @e[type=armor_stand,tag=block] store result entity @s Pos[1] double 0.001 run scoreboard players get @s self_pos_y
execute as @e[type=armor_stand,tag=block] store result entity @s Pos[2] double 0.001 run scoreboard players get @s self_pos_z
execute as @e[type=armor_stand,tag=block] store result entity @s Pose.Head[0] float 0.001 run scoreboard players get @s self_rot_x
execute as @e[type=armor_stand,tag=block] store result entity @s Pose.Head[1] float 0.001 run scoreboard players get @s self_rot_y
execute as @e[type=armor_stand,tag=block] store result entity @s Pose.Head[2] float 0.001 run scoreboard players get @s self_rot_z

# edit mode
function animations:edit