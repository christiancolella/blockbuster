data merge entity @s {Rotation:[0.0f,0.0f]}
execute at @s run tp @s ~ ~-0.226 ~
tag @s add block

execute store result score @s id run data get entity @s UUID[0]

scoreboard players set @s self_vel_x 0
scoreboard players set @s self_vel_y 0
scoreboard players set @s self_vel_z 0

scoreboard players set @s parent_omega_x 0
scoreboard players set @s parent_omega_y 0
scoreboard players set @s parent_omega_z 0

execute store result score @s initial_pos_x run data get entity @s Pos[0] 1000
execute store result score @s initial_pos_y run data get entity @s Pos[1] 1000
execute store result score @s initial_pos_z run data get entity @s Pos[2] 1000

scoreboard players set @s parent_matrix_0 1000
scoreboard players set @s parent_matrix_1 0
scoreboard players set @s parent_matrix_2 0
scoreboard players set @s parent_matrix_3 0
scoreboard players set @s parent_matrix_4 1000
scoreboard players set @s parent_matrix_5 0
scoreboard players set @s parent_matrix_6 0
scoreboard players set @s parent_matrix_7 0
scoreboard players set @s parent_matrix_8 1000

scoreboard players set @s anim_length 20
scoreboard players set @s time 0
scoreboard players set @s last_time 0

data merge entity @s {ArmorItems:[{id:"minecraft:melon",Count:1b,tag:{Temp:[0],TempDouble:[0.0d],InitialPos:[0,0,0]}},{},{},{id:"minecraft:diamond_block",Count:1b}]}

tag @s remove new_block