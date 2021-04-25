scoreboard players set @e[type=armor_stand,tag=locked,scores={temp=2},limit=1] temp 3
scoreboard players set @e[type=armor_stand,tag=locked,tag=new_copy,scores={temp=0},limit=1] temp 4

data modify entity @e[type=armor_stand,tag=locked,scores={temp=4},limit=1] ArmorItems set from entity @e[type=armor_stand,tag=locked,scores={temp=3},limit=1] ArmorItems
execute if entity @e[type=armor_stand,tag=locked,tag=hidden,scores={temp=3}] run tag @e[type=armor_stand,tag=locked,scores={temp=4}] add hidden
execute if entity @e[type=armor_stand,tag=locked,tag=has_collision,scores={temp=3}] run tag @e[type=armor_stand,tag=locked,scores={temp=4}] add has_collision

scoreboard players set @e[type=armor_stand,tag=locked,scores={temp=3}] temp 5
scoreboard players set @e[type=armor_stand,tag=locked,scores={temp=4}] temp 6

execute if entity @e[type=armor_stand,tag=locked,scores={temp=2}] run function blockbuster:copy/locked_children
