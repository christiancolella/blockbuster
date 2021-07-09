scoreboard players set @s temp 1
execute as @e[type=armor_stand,tag=block] if score @s parent_id = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] id run scoreboard players set @s temp 2

scoreboard players set @e[type=armor_stand,tag=block] global 0
function blockbuster:parent/on_delete
scoreboard players set @e[type=armor_stand,tag=block,scores={temp=4}] temp 2

execute as @e[type=armor_stand,tag=block,scores={temp=2}] run function blockbuster:misc/delete

kill @s
scoreboard players set @e[type=armor_stand,tag=block] temp 0
