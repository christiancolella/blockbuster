scoreboard players set @e[type=armor_stand,tag=block,scores={temp=2},limit=1] temp 3
scoreboard players set @e[type=armor_stand,tag=block,tag=new_copy,scores={temp=0},limit=1] temp 4

scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=4}] initial_pos_x = @e[type=armor_stand,tag=block,scores={temp=3}] initial_pos_x
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=4}] initial_pos_y = @e[type=armor_stand,tag=block,scores={temp=3}] initial_pos_y
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=4}] initial_pos_z = @e[type=armor_stand,tag=block,scores={temp=3}] initial_pos_z

scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=4}] initial_rot_x = @e[type=armor_stand,tag=block,scores={temp=3}] initial_rot_x
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=4}] initial_rot_y = @e[type=armor_stand,tag=block,scores={temp=3}] initial_rot_y
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=4}] initial_rot_z = @e[type=armor_stand,tag=block,scores={temp=3}] initial_rot_z

scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=4}] parent_matrix_0 = @e[type=armor_stand,tag=block,scores={temp=3}] parent_matrix_0
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=4}] parent_matrix_1 = @e[type=armor_stand,tag=block,scores={temp=3}] parent_matrix_1
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=4}] parent_matrix_2 = @e[type=armor_stand,tag=block,scores={temp=3}] parent_matrix_2
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=4}] parent_matrix_3 = @e[type=armor_stand,tag=block,scores={temp=3}] parent_matrix_3
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=4}] parent_matrix_4 = @e[type=armor_stand,tag=block,scores={temp=3}] parent_matrix_4
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=4}] parent_matrix_5 = @e[type=armor_stand,tag=block,scores={temp=3}] parent_matrix_5
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=4}] parent_matrix_6 = @e[type=armor_stand,tag=block,scores={temp=3}] parent_matrix_6
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=4}] parent_matrix_7 = @e[type=armor_stand,tag=block,scores={temp=3}] parent_matrix_7
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=4}] parent_matrix_8 = @e[type=armor_stand,tag=block,scores={temp=3}] parent_matrix_8

execute if entity @e[type=armor_stand,tag=block,tag=hidden,scores={temp=3}] run tag @e[type=armor_stand,tag=block,scores={temp=4}] add hidden
execute if entity @e[type=armor_stand,tag=block,tag=has_collision,scores={temp=3}] run tag @e[type=armor_stand,tag=block,scores={temp=4}] add has_collision

data modify entity @e[type=armor_stand,tag=block,scores={temp=4},limit=1] ArmorItems set from entity @e[type=armor_stand,tag=block,scores={temp=3},limit=1] ArmorItems

scoreboard players set @e[type=armor_stand,tag=block,scores={temp=3}] temp 5
scoreboard players set @e[type=armor_stand,tag=block,scores={temp=4}] temp 6

execute if entity @e[type=armor_stand,tag=block,scores={temp=2}] run function blockbuster:copy/children
