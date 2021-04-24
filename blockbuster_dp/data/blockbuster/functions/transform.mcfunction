execute as @e[type=armor_stand,tag=block] if score @s depth = #depth global run scoreboard players set @s global 1

# compute render corrections

## offset scale = 15.82 + 0.8 * omega
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp = @s parent_omega_x
execute as @e[type=armor_stand,tag=block,scores={global=1}] if score @s temp matches ..-1 run scoreboard players operation @s temp *= #-1 constants
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s correction_scale = @s temp
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp = @s parent_omega_y
execute as @e[type=armor_stand,tag=block,scores={global=1}] if score @s temp matches ..-1 run scoreboard players operation @s temp *= #-1 constants
execute as @e[type=armor_stand,tag=block,scores={global=1}] if score @s temp > @s correction_scale run scoreboard players operation @s correction_scale = @s temp
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp = @s parent_omega_z
execute as @e[type=armor_stand,tag=block,scores={global=1}] if score @s temp matches ..-1 run scoreboard players operation @s temp *= #-1 constants
execute as @e[type=armor_stand,tag=block,scores={global=1}] if score @s temp > @s correction_scale run scoreboard players operation @s correction_scale = @s temp
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s correction_scale *= #800 constants
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s correction_scale /= #1000 constants
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s correction_scale += #18000 constants

## matrix scale = 1 - 0.002 * omega

### x
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp = @s parent_omega_x
execute as @e[type=armor_stand,tag=block,scores={global=1}] if score @s temp matches ..-1 run scoreboard players operation @s temp *= #-1 constants
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp *= #2 constants
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp /= #1000 constants
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp -= #1000 constants
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp *= #-1 constants
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s matrix_scale_y = @s temp
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s matrix_scale_z = @s temp

### y
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp = @s parent_omega_y
execute as @e[type=armor_stand,tag=block,scores={global=1}] if score @s temp matches ..-1 run scoreboard players operation @s temp *= #-1 constants
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp *= #2 constants
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp /= #1000 constants
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp -= #1000 constants
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp *= #-1 constants
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s matrix_scale_x = @s temp
execute as @e[type=armor_stand,tag=block,scores={global=1}] if score @s temp < @s matrix_scale_z run scoreboard players operation @s matrix_scale_z = @s temp

### z
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp = @s parent_omega_z
execute as @e[type=armor_stand,tag=block,scores={global=1}] if score @s temp matches ..-1 run scoreboard players operation @s temp *= #-1 constants
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp *= #2 constants
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp /= #1000 constants
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp -= #1000 constants
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp *= #-1 constants
execute as @e[type=armor_stand,tag=block,scores={global=1}] if score @s temp < @s matrix_scale_x run scoreboard players operation @s matrix_scale_x = @s temp
execute as @e[type=armor_stand,tag=block,scores={global=1}] if score @s temp < @s matrix_scale_y run scoreboard players operation @s matrix_scale_y = @s temp

## x
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players set @s correction_x 0

execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp = @s parent_omega_y
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp *= @s initial_pos_y
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp /= #1000 constants
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp *= @s parent_sin_x
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp /= #1000 constants
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s correction_x += @s temp

execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp = @s parent_omega_y
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp *= @s initial_pos_z
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp /= #1000 constants
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp *= @s parent_cos_x
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp /= #1000 constants
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s correction_x += @s temp

execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp = @s parent_omega_z
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp *= @s initial_pos_y
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp /= #1000 constants
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp *= @s parent_cos_x
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp /= #1000 constants
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp *= @s parent_cos_y
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp /= #1000 constants
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s correction_x -= @s temp

execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp = @s parent_omega_z
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp *= @s initial_pos_z
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp /= #1000 constants
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp *= @s parent_sin_x
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp /= #1000 constants
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp *= @s parent_cos_y
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp /= #1000 constants
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s correction_x += @s temp

execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s correction_x *= #1000 constants
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s correction_x /= @s correction_scale
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s correction_x += @s initial_pos_x


## y
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players set @s correction_y 0

execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp = @s parent_omega_x
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp *= @s initial_pos_z
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp /= #1000 constants
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s correction_y -= @s temp

execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp = @s parent_omega_z
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp *= @s initial_pos_x
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp /= #1000 constants
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp *= @s parent_cos_x
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp /= #1000 constants
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp *= @s parent_cos_y
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp /= #1000 constants
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s correction_y += @s temp

execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp = @s parent_omega_z
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp *= @s initial_pos_z
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp /= #1000 constants
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp *= @s parent_sin_y
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp /= #1000 constants
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s correction_y += @s temp

execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp = @s parent_omega_y
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp *= @s initial_pos_x
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp /= #1000 constants
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp *= @s parent_sin_x
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp /= #1000 constants
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s correction_y -= @s temp

execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s correction_y *= #1000 constants
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s correction_y /= @s correction_scale
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s correction_y += @s initial_pos_y

## z
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players set @s correction_z 0

execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp = @s parent_omega_x
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp *= @s initial_pos_y
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp /= #1000 constants
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s correction_z += @s temp

execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp = @s parent_omega_y
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp *= @s initial_pos_x
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp /= #1000 constants
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp *= @s parent_cos_x
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp /= #1000 constants
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s correction_z -= @s temp

execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp = @s parent_omega_z
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp *= @s initial_pos_x
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp /= #1000 constants
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp *= @s parent_sin_x
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp /= #1000 constants
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp *= @s parent_cos_y
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp /= #1000 constants
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s correction_z -= @s temp

execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp = @s parent_omega_z
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp *= @s initial_pos_y
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp /= #1000 constants
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp *= @s parent_sin_y
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp /= #1000 constants
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s correction_z -= @s temp

execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s correction_z *= #1000 constants
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s correction_z /= @s correction_scale
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s correction_z += @s initial_pos_z

# apply transformations

## x position component
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s self_pos_x = @s parent_pos_x
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp = @s correction_x
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp *= @s parent_matrix_0
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp /= #1000 constants
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp *= @s matrix_scale_x
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp /= #1000 constants
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s self_pos_x += @s temp
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp = @s correction_y
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp *= @s parent_matrix_1
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp /= #1000 constants
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp *= @s matrix_scale_x
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp /= #1000 constants
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s self_pos_x += @s temp
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp = @s correction_z
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp *= @s parent_matrix_2
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp /= #1000 constants
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp *= @s matrix_scale_x
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp /= #1000 constants
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s self_pos_x += @s temp

## y position component
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s self_pos_y = @s parent_pos_y
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp = @s correction_x
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp *= @s parent_matrix_3
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp /= #1000 constants
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp *= @s matrix_scale_y
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp /= #1000 constants
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s self_pos_y += @s temp
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp = @s correction_y
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp *= @s parent_matrix_4
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp /= #1000 constants
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp *= @s matrix_scale_y
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp /= #1000 constants
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s self_pos_y += @s temp
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp = @s correction_z
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp *= @s parent_matrix_5
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp /= #1000 constants
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp *= @s matrix_scale_y
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp /= #1000 constants
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s self_pos_y += @s temp

## z position component
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s self_pos_z = @s parent_pos_z
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp = @s correction_x
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp *= @s parent_matrix_6
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp /= #1000 constants
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp *= @s matrix_scale_z
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp /= #1000 constants
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s self_pos_z += @s temp
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp = @s correction_y
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp *= @s parent_matrix_7
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp /= #1000 constants
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp *= @s matrix_scale_z
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp /= #1000 constants
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s self_pos_z += @s temp
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp = @s correction_z
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp *= @s parent_matrix_8
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp /= #1000 constants
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp *= @s matrix_scale_z
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp /= #1000 constants
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s self_pos_z += @s temp

## rotation
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s self_rot_x = @s parent_rot_x
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s self_rot_x += @s initial_rot_x
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s self_rot_y = @s parent_rot_y
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s self_rot_y += @s initial_rot_y
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s self_rot_z = @s parent_rot_z
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s self_rot_z += @s initial_rot_z

# angular velocity
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s self_omega_x = @s parent_omega_x
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp = @s initial_rot_x
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp %= #360000 constants
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s self_omega_x += @s temp
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s self_omega_x -= @s last_rot_x
execute as @e[type=armor_stand,tag=block,scores={global=1}] if score @s self_omega_x matches 180000.. run scoreboard players operation @s self_omega_x -= #360000 constants
execute as @e[type=armor_stand,tag=block,scores={global=1}] if score @s self_omega_x matches ..-180000 run scoreboard players operation @s self_omega_x += #360000 constants
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s last_rot_x = @s temp

execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s self_omega_y = @s parent_omega_y
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp = @s initial_rot_y
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp %= #360000 constants
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s self_omega_y += @s temp
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s self_omega_y -= @s last_rot_y
execute as @e[type=armor_stand,tag=block,scores={global=1}] if score @s self_omega_y matches 180000.. run scoreboard players operation @s self_omega_y -= #360000 constants
execute as @e[type=armor_stand,tag=block,scores={global=1}] if score @s self_omega_y matches ..-180000 run scoreboard players operation @s self_omega_y += #360000 constants
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s last_rot_y = @s temp

execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s self_omega_z = @s parent_omega_z
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp = @s initial_rot_z
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s temp %= #360000 constants
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s self_omega_z += @s temp
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s self_omega_z -= @s last_rot_z
execute as @e[type=armor_stand,tag=block,scores={global=1}] if score @s self_omega_z matches 180000.. run scoreboard players operation @s self_omega_z -= #360000 constants
execute as @e[type=armor_stand,tag=block,scores={global=1}] if score @s self_omega_z matches ..-180000 run scoreboard players operation @s self_omega_z += #360000 constants
execute as @e[type=armor_stand,tag=block,scores={global=1}] run scoreboard players operation @s last_rot_z = @s temp

# compute matrix
scoreboard players set @e[type=armor_stand,tag=block] temp 0
execute if entity @e[type=armor_stand,tag=block,tag=is_parent,scores={global=1}] run function blockbuster:transform/compute_trig
scoreboard players set @e[type=armor_stand,tag=block] temp 0
execute if entity @e[type=armor_stand,tag=block,tag=is_parent,scores={global=1}] run function blockbuster:transform/compute_matrix

# send to children
scoreboard players set @e[type=armor_stand,tag=block] temp 0
execute if entity @e[type=armor_stand,tag=block,tag=is_parent,scores={global=1}] run function blockbuster:parent/send_to_children

# repeat at next layer
scoreboard players add #depth global 1
scoreboard players set @e[type=armor_stand,tag=block] global 0
execute if score #depth global <= #maxdepth global run function blockbuster:transform