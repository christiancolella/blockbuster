scoreboard players set @e[type=armor_stand,tag=hitbox,scores={temp=0},limit=1] temp 1
execute as @e[tag=block] if score @s self_uuid_0 = @e[type=armor_stand,tag=hitbox,scores={temp=1},limit=1] parent_uuid_0 if score @s self_uuid_1 = @e[type=armor_stand,tag=hitbox,scores={temp=1},limit=1] parent_uuid_1 if score @s self_uuid_2 = @e[type=armor_stand,tag=hitbox,scores={temp=1},limit=1] parent_uuid_2 if score @s self_uuid_3 = @e[type=armor_stand,tag=hitbox,scores={temp=1},limit=1] parent_uuid_3 run scoreboard players set @e[type=armor_stand,tag=hitbox,scores={temp=1}] temp 2
execute as @e[tag=locked] if score @s self_uuid_0 = @e[type=armor_stand,tag=hitbox,scores={temp=1},limit=1] parent_uuid_0 if score @s self_uuid_1 = @e[type=armor_stand,tag=hitbox,scores={temp=1},limit=1] parent_uuid_1 if score @s self_uuid_2 = @e[type=armor_stand,tag=hitbox,scores={temp=1},limit=1] parent_uuid_2 if score @s self_uuid_3 = @e[type=armor_stand,tag=hitbox,scores={temp=1},limit=1] parent_uuid_3 run scoreboard players set @e[type=armor_stand,tag=hitbox,scores={temp=1}] temp 2
kill @e[type=armor_stand,tag=hitbox,scores={temp=1}]
execute if entity @e[type=armor_stand,tag=hitbox,scores={temp=0}] run function blockbuster:misc/delete_hitbox