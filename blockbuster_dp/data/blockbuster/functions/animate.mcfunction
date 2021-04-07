# increase time
execute as @e[type=armor_stand,tag=block,scores={play=1}] run scoreboard players add @s time 1
execute as @e[type=armor_stand,tag=block,scores={play=1}] if score @s time > @s anim_length run scoreboard players set @s time 0