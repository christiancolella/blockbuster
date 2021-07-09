execute as @e[type=armor_stand,tag=block,scores={temp=1},limit=1] if score @s depth = #depth global run scoreboard players set @s temp 2
execute as @e[type=armor_stand,tag=block] if score @s parent_id = @e[type=armor_stand,tag=block,scores={temp=2},limit=1] id run scoreboard players set @s temp 3
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=3}] depth = #depth global
scoreboard players add @e[type=armor_stand,tag=block,scores={temp=3}] depth 1

# repeat for new parent
scoreboard players set @e[type=armor_stand,tag=block,scores={temp=2}] temp 4
scoreboard players set @e[type=armor_stand,tag=block,scores={temp=3}] temp 5

execute unless entity @e[type=armor_stand,tag=block,scores={temp=1}] run scoreboard players add #depth global 1
execute unless entity @e[type=armor_stand,tag=block,scores={temp=1}] run scoreboard players set @e[type=armor_stand,tag=block,scores={temp=5}] temp 1
execute if entity @e[type=armor_stand,tag=block,scores={temp=1}] run function blockbuster:parent/depth
