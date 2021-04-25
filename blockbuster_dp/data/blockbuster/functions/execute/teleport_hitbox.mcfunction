execute as @e[type=armor_stand,tag=hitbox] if score @s parent_uuid_0 = @e[type=armor_stand,tag=last_selected,scores={temp=1},limit=1] self_uuid_0 if score @s parent_uuid_1 = @e[type=armor_stand,tag=last_selected,scores={temp=1},limit=1] self_uuid_1 if score @s parent_uuid_2 = @e[type=armor_stand,tag=last_selected,scores={temp=1},limit=1] self_uuid_2 if score @s parent_uuid_3 = @e[type=armor_stand,tag=last_selected,scores={temp=1},limit=1] self_uuid_3 run scoreboard players set @s temp 1
scoreboard players operation @e[type=armor_stand,tag=hitbox,scores={temp=1}] self_pos_x = @e[type=armor_stand,tag=last_selected,scores={temp=1}] self_pos_x
scoreboard players operation @e[type=armor_stand,tag=hitbox,scores={temp=1}] self_pos_y = @e[type=armor_stand,tag=last_selected,scores={temp=1}] self_pos_y
scoreboard players operation @e[type=armor_stand,tag=hitbox,scores={temp=1}] self_pos_z = @e[type=armor_stand,tag=last_selected,scores={temp=1}] self_pos_z
execute as @e[type=armor_stand,tag=hitbox,scores={temp=1}] run scoreboard players operation @s self_pos_x += @s initial_pos_x
execute as @e[type=armor_stand,tag=hitbox,scores={temp=1}] run scoreboard players operation @s self_pos_y += @s initial_pos_y
execute as @e[type=armor_stand,tag=hitbox,scores={temp=1}] run scoreboard players operation @s self_pos_z += @s initial_pos_z
execute as @e[type=armor_stand,tag=hitbox,scores={temp=1}] store result entity @s Pos[0] double 0.001 run scoreboard players get @s self_pos_x
execute as @e[type=armor_stand,tag=hitbox,scores={temp=1}] store result entity @s Pos[1] double 0.001 run scoreboard players get @s self_pos_y
execute as @e[type=armor_stand,tag=hitbox,scores={temp=1}] store result entity @s Pos[2] double 0.001 run scoreboard players get @s self_pos_z
scoreboard players set @e[type=armor_stand,tag=hitbox] temp 0