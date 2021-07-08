scoreboard players set @e[type=armor_stand,tag=locked,scores={temp=1}] temp 2
execute as @e[type=armor_stand,tag=locked] if score @s id = @e[type=armor_stand,tag=locked,scores={temp=2},limit=1] parent_id run scoreboard players set @s temp 1
execute if entity @e[type=armor_stand,tag=locked,tag=has_parent,scores={temp=1}] run function blockbuster:parent/locked/find_root