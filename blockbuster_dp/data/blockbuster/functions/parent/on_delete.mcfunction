execute unless entity @e[type=armor_stand,tag=block,scores={temp=3}] run scoreboard players set @e[type=armor_stand,tag=block,scores={temp=2},limit=1] global 1
execute unless entity @e[type=armor_stand,tag=block,scores={temp=3}] run scoreboard players set @e[type=armor_stand,tag=block,scores={temp=2,global=1},limit=1] temp 3
execute as @e[type=armor_stand,tag=block] if score @s self_uuid_0 = @e[type=armor_stand,tag=block,scores={global=1},limit=1] parent_uuid_0 if score @s self_uuid_1 = @e[type=armor_stand,tag=block,scores={global=1},limit=1] parent_uuid_1 if score @s self_uuid_2 = @e[type=armor_stand,tag=block,scores={global=1},limit=1] parent_uuid_2 if score @s self_uuid_3 = @e[type=armor_stand,tag=block,scores={global=1},limit=1] parent_uuid_3 run scoreboard players set @s global 2
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=3}] initial_pos_x += @e[type=armor_stand,tag=block,tag=has_parent,scores={global=2}] initial_pos_x
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=3}] initial_pos_x -= @e[type=armor_stand,tag=block,tag=!has_parent,scores={global=2}] initial_pos_x
execute if entity @e[type=armor_stand,tag=block,tag=!has_parent,scores={global=2},limit=1] run scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=3}] initial_pos_x *= #-1 constants
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=3}] initial_pos_y += @e[type=armor_stand,tag=block,scores={global=2}] initial_pos_y
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=3}] initial_pos_z += @e[type=armor_stand,tag=block,scores={global=2}] initial_pos_z
scoreboard players set @e[type=armor_stand,tag=block,scores={global=1}] global 0
scoreboard players set @e[type=armor_stand,tag=block,scores={global=2}] global 1
execute if entity @e[type=armor_stand,tag=block,tag=has_parent,scores={global=1}] run function blockbuster:parent/on_delete
scoreboard players set @e[type=armor_stand,tag=block] global 0
scoreboard players set @e[type=armor_stand,tag=block,scores={temp=3}] temp 4
execute if entity @e[type=armor_stand,tag=block,scores={temp=2}] run function blockbuster:parent/on_delete
scoreboard players set @e[type=armor_stand,tag=block,scores={temp=4}] temp 2