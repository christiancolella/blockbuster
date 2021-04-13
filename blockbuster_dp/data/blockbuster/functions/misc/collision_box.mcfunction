execute as @e[type=armor_stand,tag=block,tag=has_collision,scores={temp=0},limit=1] run scoreboard players set @s temp 1
execute at @e[type=armor_stand,tag=block,scores={temp=1}] run summon area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["remove_barrier"]}
execute as @e[type=area_effect_cloud,tag=remove_barrier] store result entity @s Pos[0] double 0.001 run scoreboard players get @e[type=armor_stand,tag=block,scores={temp=1},limit=1] last_self_pos_x
execute as @e[type=area_effect_cloud,tag=remove_barrier] store result entity @s Pos[1] double 0.001 run scoreboard players get @e[type=armor_stand,tag=block,scores={temp=1},limit=1] last_self_pos_y
execute as @e[type=area_effect_cloud,tag=remove_barrier] store result entity @s Pos[2] double 0.001 run scoreboard players get @e[type=armor_stand,tag=block,scores={temp=1},limit=1] last_self_pos_z
execute at @e[type=area_effect_cloud,tag=remove_barrier] if block ~ ~ ~ barrier run setblock ~ ~ ~ air
kill @e[type=area_effect_cloud,tag=remove_barrier]
scoreboard players set @e[type=armor_stand,tag=block,scores={temp=1}] temp 2
execute if entity @e[type=armor_stand,tag=block,tag=has_collision,scores={temp=0}] run function blockbuster:misc/collision_box
scoreboard players set @e[type=armor_stand,tag=block] temp 0