# add 0.25 seconds
scoreboard players set @e[type=armor_stand,tag=block,scores={selected=2,edit=45}] temp 1
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run scoreboard players add @s anim_length 5
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run scoreboard players set @s global 1
scoreboard players set @e[type=armor_stand,tag=block] temp 0

# remove 0.25 seconds
scoreboard players set @e[type=armor_stand,tag=block,scores={selected=2,edit=46}] temp 1
execute as @e[type=armor_stand,tag=block,scores={temp=1}] if score @s anim_length matches 6.. run scoreboard players remove @s anim_length 5
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run scoreboard players set @s global 1
scoreboard players set @e[type=armor_stand,tag=block] temp 0

# add 0.05 seconds
scoreboard players set @e[type=armor_stand,tag=block,scores={selected=2,edit=47}] temp 1
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run scoreboard players add @s anim_length 1
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run scoreboard players set @s global 1
scoreboard players set @e[type=armor_stand,tag=block] temp 0

# remove 0.05 seconds
scoreboard players set @e[type=armor_stand,tag=block,scores={selected=2,edit=48}] temp 1
execute as @e[type=armor_stand,tag=block,scores={temp=1}] if score @s anim_length matches 2.. run scoreboard players remove @s anim_length 1
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run scoreboard players set @s global 1
scoreboard players set @e[type=armor_stand,tag=block] temp 0