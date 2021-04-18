scoreboard players set @e[type=armor_stand,tag=block] global 0
execute if entity @e[type=armor_stand,tag=block,tag=is_parent,scores={temp=1}] run function blockbuster:misc/delete_hierarchy
execute as @e[type=armor_stand,tag=hitbox] if score @s parent_uuid_0 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_0 if score @s parent_uuid_1 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_1 if score @s parent_uuid_2 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_2 if score @s parent_uuid_3 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_3 run kill @s
execute as @e[type=armor_stand,tag=hitbox] if score @s parent_uuid_0 = @e[type=armor_stand,tag=block,scores={temp=4},limit=1] self_uuid_0 if score @s parent_uuid_1 = @e[type=armor_stand,tag=block,scores={temp=4},limit=1] self_uuid_1 if score @s parent_uuid_2 = @e[type=armor_stand,tag=block,scores={temp=4},limit=1] self_uuid_2 if score @s parent_uuid_3 = @e[type=armor_stand,tag=block,scores={temp=4},limit=1] self_uuid_3 run kill @s
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run kill @e[type=area_effect_cloud,tag=ray]
kill @e[type=armor_stand,tag=block,scores={temp=1}]
kill @e[type=armor_stand,tag=block,scores={temp=4}]
scoreboard players set @e[type=armor_stand,tag=block] temp 0