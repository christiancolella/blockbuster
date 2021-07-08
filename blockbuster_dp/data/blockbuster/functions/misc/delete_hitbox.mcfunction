scoreboard players set @e[type=armor_stand,tag=hitbox,scores={temp=0},limit=1] temp 1
execute as @e[type=armor_stand,tag=block] if score @s id = @e[type=armor_stand,tag=hitbox,scores={temp=1},limit=1] parent_id run scoreboard players set @e[type=armor_stand,tag=hitbox,scores={temp=1}] temp 2
execute as @e[type=armor_stand,tag=locked] if score @s id = @e[type=armor_stand,tag=hitbox,scores={temp=1},limit=1] parent_id run scoreboard players set @e[type=armor_stand,tag=hitbox,scores={temp=1}] temp 2
kill @e[type=armor_stand,tag=hitbox,scores={temp=1}]
execute if entity @e[type=armor_stand,tag=hitbox,scores={temp=0}] run function blockbuster:misc/delete_hitbox