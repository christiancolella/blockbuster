execute as @e[type=armor_stand,tag=block] if score @s parent_uuid_0 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_0 if score @s parent_uuid_1 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_1 if score @s parent_uuid_2 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_2 if score @s parent_uuid_3 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_3 run scoreboard players set @s temp 2
scoreboard players set @e[type=armor_stand,tag=block] global 0
function blockbuster:parent/on_delete
scoreboard players set @e[type=armor_stand,tag=block,scores={temp=4}] temp 2

execute as @e[type=armor_stand,tag=block,scores={temp=2}] run scoreboard players set @s parent_pos_x 0
execute as @e[type=armor_stand,tag=block,scores={temp=2}] run scoreboard players set @s parent_pos_y 0
execute as @e[type=armor_stand,tag=block,scores={temp=2}] run scoreboard players set @s parent_pos_z 0

execute as @e[type=armor_stand,tag=block,scores={temp=2}] run scoreboard players set @s parent_rot_x 0
execute as @e[type=armor_stand,tag=block,scores={temp=2}] run scoreboard players set @s parent_rot_y 0
execute as @e[type=armor_stand,tag=block,scores={temp=2}] run scoreboard players set @s parent_rot_z 0

execute as @e[type=armor_stand,tag=block,scores={temp=2}] run scoreboard players set @s parent_vel_x 0
execute as @e[type=armor_stand,tag=block,scores={temp=2}] run scoreboard players set @s parent_vel_y 0
execute as @e[type=armor_stand,tag=block,scores={temp=2}] run scoreboard players set @s parent_vel_z 0

execute as @e[type=armor_stand,tag=block,scores={temp=2}] run scoreboard players set @s parent_omega_x 0
execute as @e[type=armor_stand,tag=block,scores={temp=2}] run scoreboard players set @s parent_omega_y 0
execute as @e[type=armor_stand,tag=block,scores={temp=2}] run scoreboard players set @s parent_omega_z 0

execute as @e[type=armor_stand,tag=block,scores={temp=2}] run scoreboard players reset @s parent_uuid_0
execute as @e[type=armor_stand,tag=block,scores={temp=2}] run scoreboard players reset @s parent_uuid_1
execute as @e[type=armor_stand,tag=block,scores={temp=2}] run scoreboard players reset @s parent_uuid_2
execute as @e[type=armor_stand,tag=block,scores={temp=2}] run scoreboard players reset @s parent_uuid_3

scoreboard players set @e[type=armor_stand,tag=block,scores={temp=2}] parent_matrix_0 1000
scoreboard players set @e[type=armor_stand,tag=block,scores={temp=2}] parent_matrix_1 0
scoreboard players set @e[type=armor_stand,tag=block,scores={temp=2}] parent_matrix_2 0
scoreboard players set @e[type=armor_stand,tag=block,scores={temp=2}] parent_matrix_3 0
scoreboard players set @e[type=armor_stand,tag=block,scores={temp=2}] parent_matrix_4 1000
scoreboard players set @e[type=armor_stand,tag=block,scores={temp=2}] parent_matrix_5 0
scoreboard players set @e[type=armor_stand,tag=block,scores={temp=2}] parent_matrix_6 0
scoreboard players set @e[type=armor_stand,tag=block,scores={temp=2}] parent_matrix_7 0
scoreboard players set @e[type=armor_stand,tag=block,scores={temp=2}] parent_matrix_8 1000

scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] last_init_pos_x = @e[type=armor_stand,tag=block,scores={temp=2}] initial_pos_x
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] last_init_pos_y = @e[type=armor_stand,tag=block,scores={temp=2}] initial_pos_y
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] last_init_pos_z = @e[type=armor_stand,tag=block,scores={temp=2}] initial_pos_z

execute as @e[type=armor_stand,tag=hitbox] if score @s parent_uuid_0 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_0 if score @s parent_uuid_1 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_1 if score @s parent_uuid_2 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_2 if score @s parent_uuid_3 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_3 run kill @s
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run kill @e[type=area_effect_cloud,tag=ray]
kill @e[type=armor_stand,tag=block,scores={temp=1}]
scoreboard players set @e[type=armor_stand,tag=block] temp 0