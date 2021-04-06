execute as @e[type=armor_stand,tag=block] if score @e[type=armor_stand,tag=block,scores={global=1},limit=1] parent_uuid_0 = @s self_uuid_0 if score @e[type=armor_stand,tag=block,scores={global=1},limit=1] parent_uuid_1 = @s self_uuid_1 if score @e[type=armor_stand,tag=block,scores={global=1},limit=1] parent_uuid_2 = @s self_uuid_2 if score @e[type=armor_stand,tag=block,scores={global=1},limit=1] parent_uuid_3 = @s self_uuid_3 run scoreboard players set @s global 2

scoreboard players operation @e[type=armor_stand,tag=block,scores={global=2}] anim_length = @e[type=armor_stand,tag=block,scores={global=1}] anim_length
scoreboard players operation @e[type=armor_stand,tag=block,scores={global=2}] time = @e[type=armor_stand,tag=block,scores={global=1}] time

# loop until reaching base parent
scoreboard players set @e[type=armor_stand,tag=block,scores={global=1}] global 0
scoreboard players set @e[type=armor_stand,tag=block,scores={global=2}] global 1
execute if entity @e[type=armor_stand,tag=block,tag=has_parent,scores={global=1}] run function animations:pass_to_parent
scoreboard players set @e[type=armor_stand,tag=block] global 0