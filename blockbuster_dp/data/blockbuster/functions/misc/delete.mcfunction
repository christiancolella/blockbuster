scoreboard players set @s parent_pos_x 0
scoreboard players set @s parent_pos_y 0
scoreboard players set @s parent_pos_z 0

scoreboard players set @s parent_rot_x 0
scoreboard players set @s parent_rot_y 0
scoreboard players set @s parent_rot_z 0

scoreboard players set @s parent_vel_x 0
scoreboard players set @s parent_vel_y 0
scoreboard players set @s parent_vel_z 0

scoreboard players set @s parent_omega_x 0
scoreboard players set @s parent_omega_y 0
scoreboard players set @s parent_omega_z 0

scoreboard players reset @s parent_uuid_0
scoreboard players reset @s parent_uuid_1
scoreboard players reset @s parent_uuid_2
scoreboard players reset @s parent_uuid_3

scoreboard players set @s parent_matrix_0 1000
scoreboard players set @s parent_matrix_1 0
scoreboard players set @s parent_matrix_2 0
scoreboard players set @s parent_matrix_3 0
scoreboard players set @s parent_matrix_4 1000
scoreboard players set @s parent_matrix_5 0
scoreboard players set @s parent_matrix_6 0
scoreboard players set @s parent_matrix_7 0
scoreboard players set @s parent_matrix_8 1000

scoreboard players operation @s last_init_pos_x = @s initial_pos_x
scoreboard players operation @s last_init_pos_y = @s initial_pos_y
scoreboard players operation @s last_init_pos_z = @s initial_pos_z