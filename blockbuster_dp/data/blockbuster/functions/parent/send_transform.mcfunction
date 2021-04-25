execute as @e[type=armor_stand,tag=block,scores={global=1,temp=0},limit=1] run scoreboard players set @s temp 1
execute as @e[type=armor_stand,tag=block] if score @s parent_uuid_0 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_0 if score @s parent_uuid_1 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_1 if score @s parent_uuid_2 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_2 if score @s parent_uuid_3 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_3 run scoreboard players set @s temp 2

# retrieve parent position
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] parent_pos_x = @e[type=armor_stand,tag=block,scores={temp=1}] self_pos_x
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] parent_pos_y = @e[type=armor_stand,tag=block,scores={temp=1}] self_pos_y
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] parent_pos_z = @e[type=armor_stand,tag=block,scores={temp=1}] self_pos_z

# retrieve parent rotation
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] parent_rot_x = @e[type=armor_stand,tag=block,scores={temp=1}] self_rot_x
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] parent_rot_y = @e[type=armor_stand,tag=block,scores={temp=1}] self_rot_y
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] parent_rot_z = @e[type=armor_stand,tag=block,scores={temp=1}] self_rot_z

# retrieve parent velocities
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] parent_vel_x = @e[type=armor_stand,tag=block,scores={temp=1}] self_vel_x
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] parent_vel_y = @e[type=armor_stand,tag=block,scores={temp=1}] self_vel_y
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] parent_vel_z = @e[type=armor_stand,tag=block,scores={temp=1}] self_vel_z

execute as @e[type=armor_stand,tag=block,scores={temp=2}] run scoreboard players operation @s self_vel_x += @s parent_vel_x
execute as @e[type=armor_stand,tag=block,scores={temp=2}] run scoreboard players operation @s self_vel_y += @s parent_vel_y
execute as @e[type=armor_stand,tag=block,scores={temp=2}] run scoreboard players operation @s self_vel_z += @s parent_vel_z

scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] parent_omega_x = @e[type=armor_stand,tag=block,scores={temp=1}] self_omega_x
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] parent_omega_y = @e[type=armor_stand,tag=block,scores={temp=1}] self_omega_y
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] parent_omega_z = @e[type=armor_stand,tag=block,scores={temp=1}] self_omega_z

execute as @e[type=armor_stand,tag=block,scores={temp=2}] run scoreboard players operation @s self_omega_x += @s parent_omega_x
execute as @e[type=armor_stand,tag=block,scores={temp=2}] run scoreboard players operation @s self_omega_y += @s parent_omega_y
execute as @e[type=armor_stand,tag=block,scores={temp=2}] run scoreboard players operation @s self_omega_z += @s parent_omega_z

# retrieve parent trig
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] parent_cos_x = @e[type=armor_stand,tag=block,scores={temp=1}] self_cos_x
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] parent_cos_y = @e[type=armor_stand,tag=block,scores={temp=1}] self_cos_y
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] parent_cos_z = @e[type=armor_stand,tag=block,scores={temp=1}] self_cos_z
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] parent_sin_x = @e[type=armor_stand,tag=block,scores={temp=1}] self_sin_x
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] parent_sin_y = @e[type=armor_stand,tag=block,scores={temp=1}] self_sin_y
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] parent_sin_z = @e[type=armor_stand,tag=block,scores={temp=1}] self_sin_z

# retrieve parent matrix
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] parent_matrix_0 = @e[type=armor_stand,tag=block,scores={temp=1}] self_matrix_0
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] parent_matrix_1 = @e[type=armor_stand,tag=block,scores={temp=1}] self_matrix_1
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] parent_matrix_2 = @e[type=armor_stand,tag=block,scores={temp=1}] self_matrix_2
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] parent_matrix_3 = @e[type=armor_stand,tag=block,scores={temp=1}] self_matrix_3
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] parent_matrix_4 = @e[type=armor_stand,tag=block,scores={temp=1}] self_matrix_4
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] parent_matrix_5 = @e[type=armor_stand,tag=block,scores={temp=1}] self_matrix_5
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] parent_matrix_6 = @e[type=armor_stand,tag=block,scores={temp=1}] self_matrix_6
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] parent_matrix_7 = @e[type=armor_stand,tag=block,scores={temp=1}] self_matrix_7
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] parent_matrix_8 = @e[type=armor_stand,tag=block,scores={temp=1}] self_matrix_8

scoreboard players set @e[type=armor_stand,tag=block,scores={temp=1}] temp 3
scoreboard players set @e[type=armor_stand,tag=block,scores={temp=2}] temp 0

execute if entity @e[type=armor_stand,tag=block,scores={global=1,temp=0}] run function blockbuster:parent/send_transform