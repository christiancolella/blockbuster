execute as @e[type=armor_stand,tag=has_parent,scores={global=1,temp=0},limit=1] run scoreboard players set @s temp 1
execute as @e[type=armor_stand,tag=is_parent] if score @e[type=armor_stand,scores={temp=1},limit=1] parent_uuid_0 = @s self_uuid_0 if score @e[type=armor_stand,scores={temp=1},limit=1] parent_uuid_1 = @s self_uuid_1 if score @e[type=armor_stand,scores={temp=1},limit=1] parent_uuid_2 = @s self_uuid_2 if score @e[type=armor_stand,scores={temp=1},limit=1] parent_uuid_3 = @s self_uuid_3 run scoreboard players set @s temp 2

# retrieve parent position
scoreboard players operation @e[type=armor_stand,scores={temp=1}] parent_pos_x = @e[type=armor_stand,scores={temp=2}] self_pos_x
scoreboard players operation @e[type=armor_stand,scores={temp=1}] parent_pos_y = @e[type=armor_stand,scores={temp=2}] self_pos_y
scoreboard players operation @e[type=armor_stand,scores={temp=1}] parent_pos_z = @e[type=armor_stand,scores={temp=2}] self_pos_z

# retrieve parent rotation
scoreboard players operation @e[type=armor_stand,scores={temp=1}] parent_rot_x = @e[type=armor_stand,scores={temp=2}] self_rot_x
scoreboard players operation @e[type=armor_stand,scores={temp=1}] parent_rot_y = @e[type=armor_stand,scores={temp=2}] self_rot_y
scoreboard players operation @e[type=armor_stand,scores={temp=1}] parent_rot_z = @e[type=armor_stand,scores={temp=2}] self_rot_z

# retrieve parent angular velocity
scoreboard players operation @e[type=armor_stand,scores={temp=1}] parent_omega_x = @e[type=armor_stand,scores={temp=2}] self_omega_x
scoreboard players operation @e[type=armor_stand,scores={temp=1}] parent_omega_y = @e[type=armor_stand,scores={temp=2}] self_omega_y
scoreboard players operation @e[type=armor_stand,scores={temp=1}] parent_omega_z = @e[type=armor_stand,scores={temp=2}] self_omega_z

scoreboard players operation @e[type=armor_stand,scores={temp=1}] self_omega_x += @e[type=armor_stand,scores={temp=1}] parent_omega_x
scoreboard players operation @e[type=armor_stand,scores={temp=1}] self_omega_y += @e[type=armor_stand,scores={temp=1}] parent_omega_y
scoreboard players operation @e[type=armor_stand,scores={temp=1}] self_omega_z += @e[type=armor_stand,scores={temp=1}] parent_omega_z

# retrieve parent trig
scoreboard players operation @e[type=armor_stand,scores={temp=1}] parent_cos_x = @e[type=armor_stand,scores={temp=2}] self_cos_x
scoreboard players operation @e[type=armor_stand,scores={temp=1}] parent_cos_y = @e[type=armor_stand,scores={temp=2}] self_cos_y
scoreboard players operation @e[type=armor_stand,scores={temp=1}] parent_cos_z = @e[type=armor_stand,scores={temp=2}] self_cos_z
scoreboard players operation @e[type=armor_stand,scores={temp=1}] parent_sin_x = @e[type=armor_stand,scores={temp=2}] self_sin_x
scoreboard players operation @e[type=armor_stand,scores={temp=1}] parent_sin_y = @e[type=armor_stand,scores={temp=2}] self_sin_y
scoreboard players operation @e[type=armor_stand,scores={temp=1}] parent_sin_z = @e[type=armor_stand,scores={temp=2}] self_sin_z

# retrieve parent matrix
scoreboard players operation @e[type=armor_stand,scores={temp=1}] parent_matrix_0 = @e[type=armor_stand,scores={temp=2}] self_matrix_0
scoreboard players operation @e[type=armor_stand,scores={temp=1}] parent_matrix_1 = @e[type=armor_stand,scores={temp=2}] self_matrix_1
scoreboard players operation @e[type=armor_stand,scores={temp=1}] parent_matrix_2 = @e[type=armor_stand,scores={temp=2}] self_matrix_2
scoreboard players operation @e[type=armor_stand,scores={temp=1}] parent_matrix_3 = @e[type=armor_stand,scores={temp=2}] self_matrix_3
scoreboard players operation @e[type=armor_stand,scores={temp=1}] parent_matrix_4 = @e[type=armor_stand,scores={temp=2}] self_matrix_4
scoreboard players operation @e[type=armor_stand,scores={temp=1}] parent_matrix_5 = @e[type=armor_stand,scores={temp=2}] self_matrix_5
scoreboard players operation @e[type=armor_stand,scores={temp=1}] parent_matrix_6 = @e[type=armor_stand,scores={temp=2}] self_matrix_6
scoreboard players operation @e[type=armor_stand,scores={temp=1}] parent_matrix_7 = @e[type=armor_stand,scores={temp=2}] self_matrix_7
scoreboard players operation @e[type=armor_stand,scores={temp=1}] parent_matrix_8 = @e[type=armor_stand,scores={temp=2}] self_matrix_8

# retrieve animation data
scoreboard players operation @e[type=armor_stand,scores={temp=1}] anim_length = @e[type=armor_stand,scores={temp=2}] anim_length
scoreboard players operation @e[type=armor_stand,scores={temp=1}] time = @e[type=armor_stand,scores={temp=2}] time

scoreboard players set @e[type=armor_stand,scores={temp=1}] temp 3
scoreboard players set @e[type=armor_stand,scores={temp=2}] temp 0

execute if entity @e[type=armor_stand,tag=has_parent,scores={global=1,temp=0}] run function animations:retrieve_from_parent
scoreboard players set @e[type=armor_stand,tag=has_parent] temp 0