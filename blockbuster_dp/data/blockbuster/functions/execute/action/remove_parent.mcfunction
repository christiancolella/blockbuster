scoreboard players set @s temp 1
execute as @e[type=area_effect_cloud,tag=keyframe,scores={keyframe_type=1..2}] if score @s parent_uuid_0 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_0 if score @s parent_uuid_1 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_1 if score @s parent_uuid_2 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_2 if score @s parent_uuid_3 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_3 run scoreboard players set @s temp 1

scoreboard players set @e[type=armor_stand,tag=block] global 0
scoreboard players set @s global 1
function blockbuster:parent/on_remove

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

scoreboard players set @s parent_matrix_0 1000
scoreboard players set @s parent_matrix_1 0
scoreboard players set @s parent_matrix_2 0
scoreboard players set @s parent_matrix_3 0
scoreboard players set @s parent_matrix_4 1000
scoreboard players set @s parent_matrix_5 0
scoreboard players set @s parent_matrix_6 0
scoreboard players set @s parent_matrix_7 0
scoreboard players set @s parent_matrix_8 1000

scoreboard players reset @s parent_uuid_0
scoreboard players reset @s parent_uuid_1
scoreboard players reset @s parent_uuid_2
scoreboard players reset @s parent_uuid_3

scoreboard players operation @s last_init_pos_x = @s initial_pos_x
scoreboard players operation @s last_init_pos_y = @s initial_pos_y
scoreboard players operation @s last_init_pos_z = @s initial_pos_z

scoreboard players set @e[type=area_effect_cloud,tag=keyframe] temp 0
scoreboard players set @e[type=armor_stand,tag=block] global 0
scoreboard players set @e[type=armor_stand,tag=block] temp 0