scoreboard players set @e[type=armor_stand,tag=block,scores={temp=2},limit=1] temp 3
scoreboard players set @e[type=armor_stand,tag=block,tag=new_copy,scores={temp=0},limit=1] temp 4

scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=4}] initial_pos_x = @e[type=armor_stand,tag=block,scores={temp=3}] initial_pos_x
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=4}] initial_pos_y = @e[type=armor_stand,tag=block,scores={temp=3}] initial_pos_y
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=4}] initial_pos_z = @e[type=armor_stand,tag=block,scores={temp=3}] initial_pos_z
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=4}] initial_rot_x = @e[type=armor_stand,tag=block,scores={temp=3}] initial_rot_x
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=4}] initial_rot_y = @e[type=armor_stand,tag=block,scores={temp=3}] initial_rot_y
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=4}] initial_rot_z = @e[type=armor_stand,tag=block,scores={temp=3}] initial_rot_z
data modify entity @e[type=armor_stand,tag=block,scores={temp=4},limit=1] ArmorItems[3] set from entity @e[type=armor_stand,tag=block,scores={temp=3},limit=1] ArmorItems[3]

scoreboard players set @e[type=armor_stand,tag=block,scores={temp=3}] temp 5
scoreboard players set @e[type=armor_stand,tag=block,scores={temp=4}] temp 6

execute if entity @e[type=armor_stand,tag=block,scores={temp=2}] run function blockbuster:copy/children
