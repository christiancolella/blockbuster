execute as @e[type=armor_stand,tag=block] if score @s self_uuid_0 = @e[type=armor_stand,tag=block,scores={global=1},limit=1] parent_uuid_0 if score @s self_uuid_1 = @e[type=armor_stand,tag=block,scores={global=1},limit=1] parent_uuid_1 if score @s self_uuid_2 = @e[type=armor_stand,tag=block,scores={global=1},limit=1] parent_uuid_2 if score @s self_uuid_3 = @e[type=armor_stand,tag=block,scores={global=1},limit=1] parent_uuid_3 run scoreboard players set @s global 2
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=1}] initial_offset_x += @e[type=armor_stand,tag=block,tag=has_parent,scores={global=2}] initial_offset_x
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=1}] initial_offset_x -= @e[type=armor_stand,tag=block,tag=!has_parent,scores={global=2}] initial_offset_x
execute if entity @e[type=armor_stand,tag=block,tag=!has_parent,scores={global=2},limit=1] run scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=1}] initial_offset_x *= #-1 constants
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=1}] initial_offset_y += @e[type=armor_stand,tag=block,scores={global=2}] initial_offset_y
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=1}] initial_offset_z += @e[type=armor_stand,tag=block,scores={global=2}] initial_offset_z
scoreboard players set @e[type=armor_stand,tag=block,scores={global=1}] global 0
scoreboard players set @e[type=armor_stand,tag=block,scores={global=2}] global 1
execute if entity @e[type=armor_stand,tag=block,tag=has_parent,scores={global=1}] run function animations:unparent_position
scoreboard players set @e[type=armor_stand,tag=block,scores={global=1}] global 0