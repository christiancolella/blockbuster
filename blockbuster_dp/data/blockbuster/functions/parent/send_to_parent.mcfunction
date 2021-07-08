execute as @e[type=armor_stand,tag=block] if score @e[type=armor_stand,tag=block,scores={global=1},limit=1] parent_id = @s id run scoreboard players set @s global 2

scoreboard players operation @e[type=armor_stand,tag=block,scores={global=2}] anim_length = @e[type=armor_stand,tag=block,scores={global=1}] anim_length
scoreboard players operation @e[type=armor_stand,tag=block,scores={global=2}] time = @e[type=armor_stand,tag=block,scores={global=1}] time
scoreboard players operation @e[type=armor_stand,tag=block,scores={global=2}] play = @e[type=armor_stand,tag=block,scores={global=1}] play
execute if entity @e[type=armor_stand,tag=block,tag=new_locking,scores={global=1}] run tag @e[type=armor_stand,tag=block,scores={global=2}] add new_locking

# loop until reaching base parent
scoreboard players set @e[type=armor_stand,tag=block,scores={global=1}] global 0
scoreboard players set @e[type=armor_stand,tag=block,scores={global=2}] global 1
execute if entity @e[type=armor_stand,tag=block,tag=has_parent,scores={global=1}] run function blockbuster:parent/send_to_parent