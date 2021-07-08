execute as @e[type=armor_stand,tag=locking,scores={temp=1},limit=1] run scoreboard players set @s temp 2
execute as @e[type=armor_stand,tag=locking] if score @s parent_id = @e[type=armor_stand,tag=locking,scores={temp=2},limit=1] id run scoreboard players set @s temp 3

execute as @e[type=armor_stand,tag=locking,scores={temp=3}] run data modify entity @s ArmorItems[0].tag.InitialPos set from entity @e[type=armor_stand,tag=locking,scores={global=1},limit=1] ArmorItems[0].tag.InitialPos

scoreboard players set @e[type=armor_stand,tag=locking,scores={temp=3}] temp 4
scoreboard players set @e[type=armor_stand,tag=locking,scores={temp=2}] temp 0
execute if entity @e[type=armor_stand,tag=locking,scores={temp=1},tag=is_parent] run function blockbuster:parent/locking

scoreboard players set @e[type=armor_stand,tag=locking,scores={temp=4}] temp 1
execute if entity @e[type=armor_stand,tag=locking,scores={temp=1},tag=is_parent] run function blockbuster:parent/locking