execute as @e[type=armor_stand,tag=block] if score @s depth = #depth global run scoreboard players set @s global 1

# compute transformations
function animations:compute_trig
function animations:compute_matrix
function animations:retrieve_from_parent

# compute render corrections

## x
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players set @s correction_x 0

execute as @e[type=armor_stand,tag=has_parent,scores={global=1}] run scoreboard players operation @s temp = @s parent_omega_y
execute as @e[type=armor_stand,tag=has_parent,scores={global=1}] run scoreboard players operation @s temp *= @s initial_offset_y
execute as @e[type=armor_stand,tag=has_parent,scores={global=1}] run scoreboard players operation @s temp /= #1000 constants
execute as @e[type=armor_stand,tag=has_parent,scores={global=1}] run scoreboard players operation @s temp *= @s parent_sin_x
execute as @e[type=armor_stand,tag=has_parent,scores={global=1}] run scoreboard players operation @s temp /= #1000 constants
execute as @e[type=armor_stand,tag=has_parent,scores={global=1}] run scoreboard players operation @s correction_x += @s temp

execute as @e[type=armor_stand,tag=has_parent,scores={global=1}] run scoreboard players operation @s temp = @s parent_omega_y
execute as @e[type=armor_stand,tag=has_parent,scores={global=1}] run scoreboard players operation @s temp *= @s initial_offset_z
execute as @e[type=armor_stand,tag=has_parent,scores={global=1}] run scoreboard players operation @s temp /= #1000 constants
execute as @e[type=armor_stand,tag=has_parent,scores={global=1}] run scoreboard players operation @s temp *= @s parent_cos_x
execute as @e[type=armor_stand,tag=has_parent,scores={global=1}] run scoreboard players operation @s temp /= #1000 constants
execute as @e[type=armor_stand,tag=has_parent,scores={global=1}] run scoreboard players operation @s correction_x += @s temp

execute as @e[type=armor_stand,tag=has_parent,scores={global=1}] run scoreboard players operation @s temp = @s parent_omega_z
execute as @e[type=armor_stand,tag=has_parent,scores={global=1}] run scoreboard players operation @s temp *= @s initial_offset_y
execute as @e[type=armor_stand,tag=has_parent,scores={global=1}] run scoreboard players operation @s temp /= #1000 constants
execute as @e[type=armor_stand,tag=has_parent,scores={global=1}] run scoreboard players operation @s temp *= @s parent_cos_x
execute as @e[type=armor_stand,tag=has_parent,scores={global=1}] run scoreboard players operation @s temp /= #1000 constants
execute as @e[type=armor_stand,tag=has_parent,scores={global=1}] run scoreboard players operation @s temp *= @s parent_cos_y
execute as @e[type=armor_stand,tag=has_parent,scores={global=1}] run scoreboard players operation @s temp /= #1000 constants
execute as @e[type=armor_stand,tag=has_parent,scores={global=1}] run scoreboard players operation @s correction_x -= @s temp

execute as @e[type=armor_stand,tag=has_parent,scores={global=1}] run scoreboard players operation @s temp = @s parent_omega_z
execute as @e[type=armor_stand,tag=has_parent,scores={global=1}] run scoreboard players operation @s temp *= @s initial_offset_z
execute as @e[type=armor_stand,tag=has_parent,scores={global=1}] run scoreboard players operation @s temp /= #1000 constants
execute as @e[type=armor_stand,tag=has_parent,scores={global=1}] run scoreboard players operation @s temp *= @s parent_sin_x
execute as @e[type=armor_stand,tag=has_parent,scores={global=1}] run scoreboard players operation @s temp /= #1000 constants
execute as @e[type=armor_stand,tag=has_parent,scores={global=1}] run scoreboard players operation @s temp *= @s parent_cos_y
execute as @e[type=armor_stand,tag=has_parent,scores={global=1}] run scoreboard players operation @s temp /= #1000 constants
execute as @e[type=armor_stand,tag=has_parent,scores={global=1}] run scoreboard players operation @s correction_x += @s temp

execute as @e[type=armor_stand,tag=has_parent,scores={global=1}] run scoreboard players operation @s correction_x /= #24 constants
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s correction_x += @s initial_offset_x


## y
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players set @s correction_y 0

execute as @e[type=armor_stand,tag=has_parent,scores={global=1}] run scoreboard players operation @s temp = @s parent_omega_x
execute as @e[type=armor_stand,tag=has_parent,scores={global=1}] run scoreboard players operation @s temp *= @s initial_offset_z
execute as @e[type=armor_stand,tag=has_parent,scores={global=1}] run scoreboard players operation @s temp /= #1000 constants
execute as @e[type=armor_stand,tag=has_parent,scores={global=1}] run scoreboard players operation @s correction_y -= @s temp

execute as @e[type=armor_stand,tag=has_parent,scores={global=1}] run scoreboard players operation @s temp = @s parent_omega_z
execute as @e[type=armor_stand,tag=has_parent,scores={global=1}] run scoreboard players operation @s temp *= @s initial_offset_x
execute as @e[type=armor_stand,tag=has_parent,scores={global=1}] run scoreboard players operation @s temp /= #1000 constants
execute as @e[type=armor_stand,tag=has_parent,scores={global=1}] run scoreboard players operation @s temp *= @s parent_cos_x
execute as @e[type=armor_stand,tag=has_parent,scores={global=1}] run scoreboard players operation @s temp /= #1000 constants
execute as @e[type=armor_stand,tag=has_parent,scores={global=1}] run scoreboard players operation @s temp *= @s parent_cos_y
execute as @e[type=armor_stand,tag=has_parent,scores={global=1}] run scoreboard players operation @s temp /= #1000 constants
execute as @e[type=armor_stand,tag=has_parent,scores={global=1}] run scoreboard players operation @s correction_y += @s temp

execute as @e[type=armor_stand,tag=has_parent,scores={global=1}] run scoreboard players operation @s temp = @s parent_omega_z
execute as @e[type=armor_stand,tag=has_parent,scores={global=1}] run scoreboard players operation @s temp *= @s initial_offset_z
execute as @e[type=armor_stand,tag=has_parent,scores={global=1}] run scoreboard players operation @s temp /= #1000 constants
execute as @e[type=armor_stand,tag=has_parent,scores={global=1}] run scoreboard players operation @s temp *= @s parent_sin_y
execute as @e[type=armor_stand,tag=has_parent,scores={global=1}] run scoreboard players operation @s temp /= #1000 constants
execute as @e[type=armor_stand,tag=has_parent,scores={global=1}] run scoreboard players operation @s correction_y += @s temp

execute as @e[type=armor_stand,tag=has_parent,scores={global=1}] run scoreboard players operation @s temp = @s parent_omega_y
execute as @e[type=armor_stand,tag=has_parent,scores={global=1}] run scoreboard players operation @s temp *= @s initial_offset_x
execute as @e[type=armor_stand,tag=has_parent,scores={global=1}] run scoreboard players operation @s temp /= #1000 constants
execute as @e[type=armor_stand,tag=has_parent,scores={global=1}] run scoreboard players operation @s temp *= @s parent_sin_x
execute as @e[type=armor_stand,tag=has_parent,scores={global=1}] run scoreboard players operation @s temp /= #1000 constants
execute as @e[type=armor_stand,tag=has_parent,scores={global=1}] run scoreboard players operation @s correction_y -= @s temp

execute as @e[type=armor_stand,tag=has_parent,scores={global=1}] run scoreboard players operation @s correction_y /= #24 constants
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s correction_y += @s initial_offset_y

## z
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players set @s correction_z 0

execute as @e[type=armor_stand,tag=has_parent,scores={global=1}] run scoreboard players operation @s temp = @s parent_omega_x
execute as @e[type=armor_stand,tag=has_parent,scores={global=1}] run scoreboard players operation @s temp *= @s initial_offset_y
execute as @e[type=armor_stand,tag=has_parent,scores={global=1}] run scoreboard players operation @s temp /= #1000 constants
execute as @e[type=armor_stand,tag=has_parent,scores={global=1}] run scoreboard players operation @s correction_z += @s temp

execute as @e[type=armor_stand,tag=has_parent,scores={global=1}] run scoreboard players operation @s temp = @s parent_omega_y
execute as @e[type=armor_stand,tag=has_parent,scores={global=1}] run scoreboard players operation @s temp *= @s initial_offset_x
execute as @e[type=armor_stand,tag=has_parent,scores={global=1}] run scoreboard players operation @s temp /= #1000 constants
execute as @e[type=armor_stand,tag=has_parent,scores={global=1}] run scoreboard players operation @s temp *= @s parent_cos_x
execute as @e[type=armor_stand,tag=has_parent,scores={global=1}] run scoreboard players operation @s temp /= #1000 constants
execute as @e[type=armor_stand,tag=has_parent,scores={global=1}] run scoreboard players operation @s correction_z -= @s temp

execute as @e[type=armor_stand,tag=has_parent,scores={global=1}] run scoreboard players operation @s temp = @s parent_omega_z
execute as @e[type=armor_stand,tag=has_parent,scores={global=1}] run scoreboard players operation @s temp *= @s initial_offset_x
execute as @e[type=armor_stand,tag=has_parent,scores={global=1}] run scoreboard players operation @s temp /= #1000 constants
execute as @e[type=armor_stand,tag=has_parent,scores={global=1}] run scoreboard players operation @s temp *= @s parent_sin_x
execute as @e[type=armor_stand,tag=has_parent,scores={global=1}] run scoreboard players operation @s temp /= #1000 constants
execute as @e[type=armor_stand,tag=has_parent,scores={global=1}] run scoreboard players operation @s temp *= @s parent_cos_y
execute as @e[type=armor_stand,tag=has_parent,scores={global=1}] run scoreboard players operation @s temp /= #1000 constants
execute as @e[type=armor_stand,tag=has_parent,scores={global=1}] run scoreboard players operation @s correction_z -= @s temp

execute as @e[type=armor_stand,tag=has_parent,scores={global=1}] run scoreboard players operation @s temp = @s parent_omega_z
execute as @e[type=armor_stand,tag=has_parent,scores={global=1}] run scoreboard players operation @s temp *= @s initial_offset_y
execute as @e[type=armor_stand,tag=has_parent,scores={global=1}] run scoreboard players operation @s temp /= #1000 constants
execute as @e[type=armor_stand,tag=has_parent,scores={global=1}] run scoreboard players operation @s temp *= @s parent_sin_y
execute as @e[type=armor_stand,tag=has_parent,scores={global=1}] run scoreboard players operation @s temp /= #1000 constants
execute as @e[type=armor_stand,tag=has_parent,scores={global=1}] run scoreboard players operation @s correction_z -= @s temp

execute as @e[type=armor_stand,tag=has_parent,scores={global=1}] run scoreboard players operation @s correction_z /= #24 constants
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s correction_z += @s initial_offset_z

# apply transformations

## x position component
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s self_pos_x = @s parent_pos_x
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp = @s correction_x
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp *= @s parent_matrix_0
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp /= #1000 constants
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s self_pos_x += @s temp
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp = @s correction_y
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp *= @s parent_matrix_1
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp /= #1000 constants
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s self_pos_x += @s temp
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp = @s correction_z
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp *= @s parent_matrix_2
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp /= #1000 constants
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s self_pos_x += @s temp

## y position component
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s self_pos_y = @s parent_pos_y
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp = @s correction_x
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp *= @s parent_matrix_3
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp /= #1000 constants
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s self_pos_y += @s temp
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp = @s correction_y
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp *= @s parent_matrix_4
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp /= #1000 constants
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s self_pos_y += @s temp
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp = @s correction_z
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp *= @s parent_matrix_5
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp /= #1000 constants
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s self_pos_y += @s temp

## z position component
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s self_pos_z = @s parent_pos_z
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp = @s correction_x
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp *= @s parent_matrix_6
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp /= #1000 constants
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s self_pos_z += @s temp
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp = @s correction_y
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp *= @s parent_matrix_7
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp /= #1000 constants
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s self_pos_z += @s temp
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp = @s correction_z
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp *= @s parent_matrix_8
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp /= #1000 constants
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s self_pos_z += @s temp

## rotation
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s self_rot_x = @s parent_rot_x
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s self_rot_x += @s initial_rot_x
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s self_rot_y = @s parent_rot_y
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s self_rot_y += @s initial_rot_y
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s self_rot_z = @s parent_rot_z
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s self_rot_z += @s initial_rot_z

# repeat at next layer
scoreboard players set @e[type=armor_stand,tag=block] global 0
scoreboard players add #depth global 1
execute if score #depth global <= #maxdepth global run function animations:transform