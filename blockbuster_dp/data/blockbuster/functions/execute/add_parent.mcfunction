tag @e[type=armor_stand,tag=block,scores={temp=1}] add awaiting_parent
execute if entity @e[type=armor_stand,tag=block,scores={temp=1}] run scoreboard players operation @p[scores={temp=1}] parent_uuid_0 = @e[type=armor_stand,tag=block,scores={temp=1}] self_uuid_0
execute if entity @e[type=armor_stand,tag=block,scores={temp=1}] run scoreboard players operation @p[scores={temp=1}] parent_uuid_1 = @e[type=armor_stand,tag=block,scores={temp=1}] self_uuid_1
execute if entity @e[type=armor_stand,tag=block,scores={temp=1}] run scoreboard players operation @p[scores={temp=1}] parent_uuid_2 = @e[type=armor_stand,tag=block,scores={temp=1}] self_uuid_2
execute if entity @e[type=armor_stand,tag=block,scores={temp=1}] run scoreboard players operation @p[scores={temp=1}] parent_uuid_3 = @e[type=armor_stand,tag=block,scores={temp=1}] self_uuid_3
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run scoreboard players set @p[scores={temp=1}] edit 3
scoreboard players set @e[type=armor_stand,tag=block] temp 0