# retrieve parent position
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] parent_pos_x = @s self_pos_x
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] parent_pos_y = @s self_pos_y
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] parent_pos_z = @s self_pos_z

# retrieve parent rotation
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] parent_rot_x = @s self_rot_x
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] parent_rot_y = @s self_rot_y
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] parent_rot_z = @s self_rot_z

# retrieve parent velocities
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] parent_vel_x = @s self_vel_x
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] parent_vel_y = @s self_vel_y
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] parent_vel_z = @s self_vel_z

execute as @e[type=armor_stand,tag=block,scores={temp=2}] run scoreboard players operation @s self_vel_x += @s parent_vel_x
execute as @e[type=armor_stand,tag=block,scores={temp=2}] run scoreboard players operation @s self_vel_y += @s parent_vel_y
execute as @e[type=armor_stand,tag=block,scores={temp=2}] run scoreboard players operation @s self_vel_z += @s parent_vel_z

scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] parent_omega_x = @s self_omega_x
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] parent_omega_y = @s self_omega_y
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] parent_omega_z = @s self_omega_z

execute as @e[type=armor_stand,tag=block,scores={temp=2}] run scoreboard players operation @s self_omega_x += @s parent_omega_x
execute as @e[type=armor_stand,tag=block,scores={temp=2}] run scoreboard players operation @s self_omega_y += @s parent_omega_y
execute as @e[type=armor_stand,tag=block,scores={temp=2}] run scoreboard players operation @s self_omega_z += @s parent_omega_z

# retrieve parent trig
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] parent_cos_x = @s self_cos_x
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] parent_cos_y = @s self_cos_y
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] parent_cos_z = @s self_cos_z
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] parent_sin_x = @s self_sin_x
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] parent_sin_y = @s self_sin_y
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] parent_sin_z = @s self_sin_z

# retrieve parent matrix
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] parent_matrix_0 = @s self_matrix_0
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] parent_matrix_1 = @s self_matrix_1
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] parent_matrix_2 = @s self_matrix_2
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] parent_matrix_3 = @s self_matrix_3
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] parent_matrix_4 = @s self_matrix_4
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] parent_matrix_5 = @s self_matrix_5
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] parent_matrix_6 = @s self_matrix_6
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] parent_matrix_7 = @s self_matrix_7
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] parent_matrix_8 = @s self_matrix_8