execute as @e[type=armor_stand,tag=block,tag=is_parent,scores={temp=1},limit=1] run scoreboard players set @s temp 2
execute as @e[type=armor_stand,tag=block] if score @s parent_uuid_0 = @e[type=armor_stand,tag=block,scores={temp=2},limit=1] self_uuid_0 if score @s parent_uuid_1 = @e[type=armor_stand,tag=block,scores={temp=2},limit=1] self_uuid_1 if score @s parent_uuid_2 = @e[type=armor_stand,tag=block,scores={temp=2},limit=1] self_uuid_2 if score @s parent_uuid_3 = @e[type=armor_stand,tag=block,scores={temp=2},limit=1] self_uuid_3 run scoreboard players set @s temp 3

scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=3}] anim_length = @e[type=armor_stand,tag=block,scores={temp=2}] anim_length
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=3}] time = @e[type=armor_stand,tag=block,scores={temp=2}] time
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=3}] play = @e[type=armor_stand,tag=block,scores={temp=2}] play
execute if entity @e[type=armor_stand,tag=block,tag=new_locking,scores={temp=2}] run tag @e[type=armor_stand,tag=block,scores={temp=3}] add new_locking

scoreboard players set @e[type=armor_stand,tag=block,scores={temp=3}] temp 4
scoreboard players set @e[type=armor_stand,tag=block,scores={temp=2}] temp 0
execute if entity @e[type=armor_stand,tag=block,tag=is_parent,scores={temp=1}] run function blockbuster:parent/send_animation

scoreboard players set @e[type=armor_stand,tag=block,scores={temp=4}] temp 1
execute if entity @e[type=armor_stand,tag=block,tag=is_parent,scores={temp=1}] run function blockbuster:parent/send_animation