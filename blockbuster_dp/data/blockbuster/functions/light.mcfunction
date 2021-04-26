execute at @e[type=armor_stand,tag=has_collision] positioned ~ ~0.726 ~ if block ~ ~ ~ barrier run setblock ~ ~ ~ air

execute as @e[type=armor_stand] store success score @s has_rot run data get entity @s Pose.Head
execute as @e[type=armor_stand] if score @s has_rot matches 0 run data merge entity @s {Pose:{Head:[0.001f,0.001f,0.001f]}}

execute as @e[type=armor_stand,tag=locked] run function blockbuster:misc/locked