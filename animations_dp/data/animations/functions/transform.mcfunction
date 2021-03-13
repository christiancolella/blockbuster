# compute parented transformations
function animations:compute_matrix
function animations:retrieve_from_parent

## x position component
execute as @e[type=armor_stand,tag=has_parent] run scoreboard players operation @s self_pos_x = @s parent_pos_x
execute as @e[type=armor_stand,tag=has_parent] run scoreboard players operation @s temp = @s initial_offset_x
execute as @e[type=armor_stand,tag=has_parent] run scoreboard players operation @s temp *= @s parent_matrix_0
execute as @e[type=armor_stand,tag=has_parent] run scoreboard players operation @s temp /= #1000 constants
execute as @e[type=armor_stand,tag=has_parent] run scoreboard players operation @s temp *= #-1 constants
execute as @e[type=armor_stand,tag=has_parent] run scoreboard players operation @s self_pos_x += @s temp
execute as @e[type=armor_stand,tag=has_parent] run scoreboard players operation @s temp = @s initial_offset_y
execute as @e[type=armor_stand,tag=has_parent] run scoreboard players operation @s temp *= @s parent_matrix_1
execute as @e[type=armor_stand,tag=has_parent] run scoreboard players operation @s temp /= #1000 constants
execute as @e[type=armor_stand,tag=has_parent] run scoreboard players operation @s temp *= #-1 constants
execute as @e[type=armor_stand,tag=has_parent] run scoreboard players operation @s self_pos_x += @s temp
execute as @e[type=armor_stand,tag=has_parent] run scoreboard players operation @s temp = @s initial_offset_z
execute as @e[type=armor_stand,tag=has_parent] run scoreboard players operation @s temp *= @s parent_matrix_2
execute as @e[type=armor_stand,tag=has_parent] run scoreboard players operation @s temp /= #1000 constants
execute as @e[type=armor_stand,tag=has_parent] run scoreboard players operation @s temp *= #-1 constants
execute as @e[type=armor_stand,tag=has_parent] run scoreboard players operation @s self_pos_x += @s temp

## y position component
execute as @e[type=armor_stand,tag=has_parent] run scoreboard players operation @s self_pos_y = @s parent_pos_y
execute as @e[type=armor_stand,tag=has_parent] run scoreboard players operation @s temp = @s initial_offset_x
execute as @e[type=armor_stand,tag=has_parent] run scoreboard players operation @s temp *= @s parent_matrix_3
execute as @e[type=armor_stand,tag=has_parent] run scoreboard players operation @s temp /= #1000 constants
execute as @e[type=armor_stand,tag=has_parent] run scoreboard players operation @s self_pos_y += @s temp
execute as @e[type=armor_stand,tag=has_parent] run scoreboard players operation @s temp = @s initial_offset_y
execute as @e[type=armor_stand,tag=has_parent] run scoreboard players operation @s temp *= @s parent_matrix_4
execute as @e[type=armor_stand,tag=has_parent] run scoreboard players operation @s temp /= #1000 constants
execute as @e[type=armor_stand,tag=has_parent] run scoreboard players operation @s self_pos_y += @s temp
execute as @e[type=armor_stand,tag=has_parent] run scoreboard players operation @s temp = @s initial_offset_z
execute as @e[type=armor_stand,tag=has_parent] run scoreboard players operation @s temp *= @s parent_matrix_5
execute as @e[type=armor_stand,tag=has_parent] run scoreboard players operation @s temp /= #1000 constants
execute as @e[type=armor_stand,tag=has_parent] run scoreboard players operation @s self_pos_y += @s temp

## z position component
execute as @e[type=armor_stand,tag=has_parent] run scoreboard players operation @s self_pos_z = @s parent_pos_z
execute as @e[type=armor_stand,tag=has_parent] run scoreboard players operation @s temp = @s initial_offset_x
execute as @e[type=armor_stand,tag=has_parent] run scoreboard players operation @s temp *= @s parent_matrix_6
execute as @e[type=armor_stand,tag=has_parent] run scoreboard players operation @s temp /= #1000 constants
execute as @e[type=armor_stand,tag=has_parent] run scoreboard players operation @s self_pos_z += @s temp
execute as @e[type=armor_stand,tag=has_parent] run scoreboard players operation @s temp = @s initial_offset_y
execute as @e[type=armor_stand,tag=has_parent] run scoreboard players operation @s temp *= @s parent_matrix_7
execute as @e[type=armor_stand,tag=has_parent] run scoreboard players operation @s temp /= #1000 constants
execute as @e[type=armor_stand,tag=has_parent] run scoreboard players operation @s self_pos_z += @s temp
execute as @e[type=armor_stand,tag=has_parent] run scoreboard players operation @s temp = @s initial_offset_z
execute as @e[type=armor_stand,tag=has_parent] run scoreboard players operation @s temp *= @s parent_matrix_8
execute as @e[type=armor_stand,tag=has_parent] run scoreboard players operation @s temp /= #1000 constants
execute as @e[type=armor_stand,tag=has_parent] run scoreboard players operation @s self_pos_z += @s temp

## rotation
execute as @e[type=armor_stand,tag=has_parent] run scoreboard players operation @s self_rot_x = @s parent_rot_x
execute as @e[type=armor_stand,tag=has_parent] run scoreboard players operation @s self_rot_x += @s initial_rot_x
execute as @e[type=armor_stand,tag=has_parent] run scoreboard players operation @s self_rot_y = @s parent_rot_y
execute as @e[type=armor_stand,tag=has_parent] run scoreboard players operation @s self_rot_y += @s initial_rot_y
execute as @e[type=armor_stand,tag=has_parent] run scoreboard players operation @s self_rot_z = @s parent_rot_z
execute as @e[type=armor_stand,tag=has_parent] run scoreboard players operation @s self_rot_z += @s initial_rot_z

# merge transformations
execute as @e[type=armor_stand,tag=has_parent] store result entity @s Pos[0] double 0.001 run scoreboard players get @s self_pos_x
execute as @e[type=armor_stand,tag=has_parent] store result entity @s Pos[1] double 0.001 run scoreboard players get @s self_pos_y
execute as @e[type=armor_stand,tag=has_parent] store result entity @s Pos[2] double 0.001 run scoreboard players get @s self_pos_z
execute as @e[type=armor_stand,tag=has_parent] store result entity @s Pose.Head[0] float 0.001 run scoreboard players get @s self_rot_x
execute as @e[type=armor_stand,tag=has_parent] store result entity @s Pose.Head[1] float 0.001 run scoreboard players get @s self_rot_y
execute as @e[type=armor_stand,tag=has_parent] store result entity @s Pose.Head[2] float 0.001 run scoreboard players get @s self_rot_z