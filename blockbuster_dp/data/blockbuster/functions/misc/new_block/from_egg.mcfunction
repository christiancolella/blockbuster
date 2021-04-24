execute as @e[type=armor_stand,tag=new_block] run data merge entity @s {Rotation:[0.0f,0.0f]}
execute as @e[type=armor_stand,tag=new_block] at @s run tp ~ ~-0.226 ~
execute as @e[type=armor_stand,tag=new_block] run tag @s add block

execute as @e[type=armor_stand,tag=new_block] store result score @s self_uuid_0 run data get entity @s UUID[0]
execute as @e[type=armor_stand,tag=new_block] store result score @s self_uuid_1 run data get entity @s UUID[1]
execute as @e[type=armor_stand,tag=new_block] store result score @s self_uuid_2 run data get entity @s UUID[2]
execute as @e[type=armor_stand,tag=new_block] store result score @s self_uuid_3 run data get entity @s UUID[3]

execute as @e[type=armor_stand,tag=new_block] run scoreboard players set @s self_vel_x 0
execute as @e[type=armor_stand,tag=new_block] run scoreboard players set @s self_vel_y 0
execute as @e[type=armor_stand,tag=new_block] run scoreboard players set @s self_vel_z 0
execute as @e[type=armor_stand,tag=new_block] store result score @s initial_pos_x run data get entity @s Pos[0] 1000
execute as @e[type=armor_stand,tag=new_block] store result score @s initial_pos_y run data get entity @s Pos[1] 1000
execute as @e[type=armor_stand,tag=new_block] store result score @s initial_pos_z run data get entity @s Pos[2] 1000

scoreboard players set @e[type=armor_stand,tag=new_block] parent_matrix_0 1000
scoreboard players set @e[type=armor_stand,tag=new_block] parent_matrix_1 0
scoreboard players set @e[type=armor_stand,tag=new_block] parent_matrix_2 0
scoreboard players set @e[type=armor_stand,tag=new_block] parent_matrix_3 0
scoreboard players set @e[type=armor_stand,tag=new_block] parent_matrix_4 1000
scoreboard players set @e[type=armor_stand,tag=new_block] parent_matrix_5 0
scoreboard players set @e[type=armor_stand,tag=new_block] parent_matrix_6 0
scoreboard players set @e[type=armor_stand,tag=new_block] parent_matrix_7 0
scoreboard players set @e[type=armor_stand,tag=new_block] parent_matrix_8 1000

scoreboard players set @e[type=armor_stand,tag=new_block] anim_length 20
scoreboard players set @e[type=armor_stand,tag=new_block] time 0

execute as @e[type=armor_stand,tag=new_block] run data merge entity @s {ArmorItems:[{id:"minecraft:melon",Count:1b,tag:{Temp:[0],InitialPos:[0,0,0]}},{},{},{id:"minecraft:diamond_block",Count:1b}]}

execute as @e[type=armor_stand,tag=new_block] run tag @s remove new_block