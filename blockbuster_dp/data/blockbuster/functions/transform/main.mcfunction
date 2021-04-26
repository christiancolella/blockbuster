# compute render corrections

## offset scale = 18 + 0.8 * omega
scoreboard players operation @s temp = @s parent_omega_x
execute if score @s temp matches ..-1 run scoreboard players operation @s temp *= #-1 constants
scoreboard players operation @s correction_scale = @s temp
scoreboard players operation @s temp = @s parent_omega_y
execute if score @s temp matches ..-1 run scoreboard players operation @s temp *= #-1 constants
execute if score @s temp > @s correction_scale run scoreboard players operation @s correction_scale = @s temp
scoreboard players operation @s temp = @s parent_omega_z
execute if score @s temp matches ..-1 run scoreboard players operation @s temp *= #-1 constants
execute if score @s temp > @s correction_scale run scoreboard players operation @s correction_scale = @s temp
scoreboard players operation @s correction_scale *= #800 constants
scoreboard players operation @s correction_scale /= #1000 constants
scoreboard players operation @s correction_scale += #18000 constants

## matrix scale = 1 - 0.002 * omega

### x
scoreboard players operation @s temp = @s parent_omega_x
execute if score @s temp matches ..-1 run scoreboard players operation @s temp *= #-1 constants
scoreboard players operation @s temp *= #2 constants
scoreboard players operation @s temp /= #1000 constants
scoreboard players operation @s temp -= #1000 constants
scoreboard players operation @s temp *= #-1 constants
scoreboard players operation @s matrix_scale_y = @s temp
scoreboard players operation @s matrix_scale_z = @s temp

### y
scoreboard players operation @s temp = @s parent_omega_y
execute if score @s temp matches ..-1 run scoreboard players operation @s temp *= #-1 constants
scoreboard players operation @s temp *= #2 constants
scoreboard players operation @s temp /= #1000 constants
scoreboard players operation @s temp -= #1000 constants
scoreboard players operation @s temp *= #-1 constants
scoreboard players operation @s matrix_scale_x = @s temp
execute if score @s temp < @s matrix_scale_z run scoreboard players operation @s matrix_scale_z = @s temp

### z
scoreboard players operation @s temp = @s parent_omega_z
execute if score @s temp matches ..-1 run scoreboard players operation @s temp *= #-1 constants
scoreboard players operation @s temp *= #2 constants
scoreboard players operation @s temp /= #1000 constants
scoreboard players operation @s temp -= #1000 constants
scoreboard players operation @s temp *= #-1 constants
execute if score @s temp < @s matrix_scale_x run scoreboard players operation @s matrix_scale_x = @s temp
execute if score @s temp < @s matrix_scale_y run scoreboard players operation @s matrix_scale_y = @s temp

## x
scoreboard players set @s correction_x 0

scoreboard players operation @s temp = @s parent_omega_y
scoreboard players operation @s temp *= @s initial_pos_y
scoreboard players operation @s temp /= #1000 constants
scoreboard players operation @s temp *= @s parent_sin_x
scoreboard players operation @s temp /= #1000 constants
scoreboard players operation @s correction_x += @s temp

scoreboard players operation @s temp = @s parent_omega_y
scoreboard players operation @s temp *= @s initial_pos_z
scoreboard players operation @s temp /= #1000 constants
scoreboard players operation @s temp *= @s parent_cos_x
scoreboard players operation @s temp /= #1000 constants
scoreboard players operation @s correction_x += @s temp

scoreboard players operation @s temp = @s parent_omega_z
scoreboard players operation @s temp *= @s initial_pos_y
scoreboard players operation @s temp /= #1000 constants
scoreboard players operation @s temp *= @s parent_cos_x
scoreboard players operation @s temp /= #1000 constants
scoreboard players operation @s temp *= @s parent_cos_y
scoreboard players operation @s temp /= #1000 constants
scoreboard players operation @s correction_x -= @s temp

scoreboard players operation @s temp = @s parent_omega_z
scoreboard players operation @s temp *= @s initial_pos_z
scoreboard players operation @s temp /= #1000 constants
scoreboard players operation @s temp *= @s parent_sin_x
scoreboard players operation @s temp /= #1000 constants
scoreboard players operation @s temp *= @s parent_cos_y
scoreboard players operation @s temp /= #1000 constants
scoreboard players operation @s correction_x += @s temp

scoreboard players operation @s correction_x *= #1000 constants
scoreboard players operation @s correction_x /= @s correction_scale
scoreboard players operation @s correction_x += @s initial_pos_x


## y
scoreboard players set @s correction_y 0

scoreboard players operation @s temp = @s parent_omega_x
scoreboard players operation @s temp *= @s initial_pos_z
scoreboard players operation @s temp /= #1000 constants
scoreboard players operation @s correction_y -= @s temp

scoreboard players operation @s temp = @s parent_omega_z
scoreboard players operation @s temp *= @s initial_pos_x
scoreboard players operation @s temp /= #1000 constants
scoreboard players operation @s temp *= @s parent_cos_x
scoreboard players operation @s temp /= #1000 constants
scoreboard players operation @s temp *= @s parent_cos_y
scoreboard players operation @s temp /= #1000 constants
scoreboard players operation @s correction_y += @s temp

scoreboard players operation @s temp = @s parent_omega_z
scoreboard players operation @s temp *= @s initial_pos_z
scoreboard players operation @s temp /= #1000 constants
scoreboard players operation @s temp *= @s parent_sin_y
scoreboard players operation @s temp /= #1000 constants
scoreboard players operation @s correction_y += @s temp

scoreboard players operation @s temp = @s parent_omega_y
scoreboard players operation @s temp *= @s initial_pos_x
scoreboard players operation @s temp /= #1000 constants
scoreboard players operation @s temp *= @s parent_sin_x
scoreboard players operation @s temp /= #1000 constants
scoreboard players operation @s correction_y -= @s temp

scoreboard players operation @s correction_y *= #1000 constants
scoreboard players operation @s correction_y /= @s correction_scale
scoreboard players operation @s correction_y += @s initial_pos_y

## z
scoreboard players set @s correction_z 0

scoreboard players operation @s temp = @s parent_omega_x
scoreboard players operation @s temp *= @s initial_pos_y
scoreboard players operation @s temp /= #1000 constants
scoreboard players operation @s correction_z += @s temp

scoreboard players operation @s temp = @s parent_omega_y
scoreboard players operation @s temp *= @s initial_pos_x
scoreboard players operation @s temp /= #1000 constants
scoreboard players operation @s temp *= @s parent_cos_x
scoreboard players operation @s temp /= #1000 constants
scoreboard players operation @s correction_z -= @s temp

scoreboard players operation @s temp = @s parent_omega_z
scoreboard players operation @s temp *= @s initial_pos_x
scoreboard players operation @s temp /= #1000 constants
scoreboard players operation @s temp *= @s parent_sin_x
scoreboard players operation @s temp /= #1000 constants
scoreboard players operation @s temp *= @s parent_cos_y
scoreboard players operation @s temp /= #1000 constants
scoreboard players operation @s correction_z -= @s temp

scoreboard players operation @s temp = @s parent_omega_z
scoreboard players operation @s temp *= @s initial_pos_y
scoreboard players operation @s temp /= #1000 constants
scoreboard players operation @s temp *= @s parent_sin_y
scoreboard players operation @s temp /= #1000 constants
scoreboard players operation @s correction_z -= @s temp

scoreboard players operation @s correction_z *= #1000 constants
scoreboard players operation @s correction_z /= @s correction_scale
scoreboard players operation @s correction_z += @s initial_pos_z

# apply transformations

## x position component
scoreboard players operation @s self_pos_x = @s parent_pos_x
scoreboard players operation @s temp = @s correction_x
scoreboard players operation @s temp *= @s parent_matrix_0
scoreboard players operation @s temp /= #1000 constants
scoreboard players operation @s temp *= @s matrix_scale_x
scoreboard players operation @s temp /= #1000 constants
scoreboard players operation @s self_pos_x += @s temp
scoreboard players operation @s temp = @s correction_y
scoreboard players operation @s temp *= @s parent_matrix_1
scoreboard players operation @s temp /= #1000 constants
scoreboard players operation @s temp *= @s matrix_scale_x
scoreboard players operation @s temp /= #1000 constants
scoreboard players operation @s self_pos_x += @s temp
scoreboard players operation @s temp = @s correction_z
scoreboard players operation @s temp *= @s parent_matrix_2
scoreboard players operation @s temp /= #1000 constants
scoreboard players operation @s temp *= @s matrix_scale_x
scoreboard players operation @s temp /= #1000 constants
scoreboard players operation @s self_pos_x += @s temp

## y position component
scoreboard players operation @s self_pos_y = @s parent_pos_y
scoreboard players operation @s temp = @s correction_x
scoreboard players operation @s temp *= @s parent_matrix_3
scoreboard players operation @s temp /= #1000 constants
scoreboard players operation @s temp *= @s matrix_scale_y
scoreboard players operation @s temp /= #1000 constants
scoreboard players operation @s self_pos_y += @s temp
scoreboard players operation @s temp = @s correction_y
scoreboard players operation @s temp *= @s parent_matrix_4
scoreboard players operation @s temp /= #1000 constants
scoreboard players operation @s temp *= @s matrix_scale_y
scoreboard players operation @s temp /= #1000 constants
scoreboard players operation @s self_pos_y += @s temp
scoreboard players operation @s temp = @s correction_z
scoreboard players operation @s temp *= @s parent_matrix_5
scoreboard players operation @s temp /= #1000 constants
scoreboard players operation @s temp *= @s matrix_scale_y
scoreboard players operation @s temp /= #1000 constants
scoreboard players operation @s self_pos_y += @s temp

## z position component
scoreboard players operation @s self_pos_z = @s parent_pos_z
scoreboard players operation @s temp = @s correction_x
scoreboard players operation @s temp *= @s parent_matrix_6
scoreboard players operation @s temp /= #1000 constants
scoreboard players operation @s temp *= @s matrix_scale_z
scoreboard players operation @s temp /= #1000 constants
scoreboard players operation @s self_pos_z += @s temp
scoreboard players operation @s temp = @s correction_y
scoreboard players operation @s temp *= @s parent_matrix_7
scoreboard players operation @s temp /= #1000 constants
scoreboard players operation @s temp *= @s matrix_scale_z
scoreboard players operation @s temp /= #1000 constants
scoreboard players operation @s self_pos_z += @s temp
scoreboard players operation @s temp = @s correction_z
scoreboard players operation @s temp *= @s parent_matrix_8
scoreboard players operation @s temp /= #1000 constants
scoreboard players operation @s temp *= @s matrix_scale_z
scoreboard players operation @s temp /= #1000 constants
scoreboard players operation @s self_pos_z += @s temp

## rotation
scoreboard players operation @s self_rot_x = @s parent_rot_x
scoreboard players operation @s self_rot_x += @s initial_rot_x
scoreboard players operation @s self_rot_y = @s parent_rot_y
scoreboard players operation @s self_rot_y += @s initial_rot_y
scoreboard players operation @s self_rot_z = @s parent_rot_z
scoreboard players operation @s self_rot_z += @s initial_rot_z

# velocity
scoreboard players operation @s self_vel_x = @s initial_pos_x
scoreboard players operation @s self_vel_x -= @s last_init_pos_x
scoreboard players operation @s last_init_pos_x = @s initial_pos_x

scoreboard players operation @s self_vel_y = @s initial_pos_y
scoreboard players operation @s self_vel_y -= @s last_init_pos_y
scoreboard players operation @s last_init_pos_y = @s initial_pos_y

scoreboard players operation @s self_vel_z = @s initial_pos_z
scoreboard players operation @s self_vel_z -= @s last_init_pos_z
scoreboard players operation @s last_init_pos_z = @s initial_pos_z

# angular velocity
scoreboard players operation @s self_omega_x = @s parent_omega_x
scoreboard players operation @s temp = @s initial_rot_x
scoreboard players operation @s temp %= #360000 constants
scoreboard players operation @s self_omega_x += @s temp
scoreboard players operation @s self_omega_x -= @s last_rot_x
execute if score @s self_omega_x matches 180000.. run scoreboard players operation @s self_omega_x -= #360000 constants
execute if score @s self_omega_x matches ..-180000 run scoreboard players operation @s self_omega_x += #360000 constants
scoreboard players operation @s last_rot_x = @s temp

scoreboard players operation @s self_omega_y = @s parent_omega_y
scoreboard players operation @s temp = @s initial_rot_y
scoreboard players operation @s temp %= #360000 constants
scoreboard players operation @s self_omega_y += @s temp
scoreboard players operation @s self_omega_y -= @s last_rot_y
execute if score @s self_omega_y matches 180000.. run scoreboard players operation @s self_omega_y -= #360000 constants
execute if score @s self_omega_y matches ..-180000 run scoreboard players operation @s self_omega_y += #360000 constants
scoreboard players operation @s last_rot_y = @s temp

scoreboard players operation @s self_omega_z = @s parent_omega_z
scoreboard players operation @s temp = @s initial_rot_z
scoreboard players operation @s temp %= #360000 constants
scoreboard players operation @s self_omega_z += @s temp
scoreboard players operation @s self_omega_z -= @s last_rot_z
execute if score @s self_omega_z matches 180000.. run scoreboard players operation @s self_omega_z -= #360000 constants
execute if score @s self_omega_z matches ..-180000 run scoreboard players operation @s self_omega_z += #360000 constants
scoreboard players operation @s last_rot_z = @s temp