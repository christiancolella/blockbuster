execute as @e[type=armor_stand,tag=block,tag=has_keyframe,tag=update,scores={temp=0},limit=1] run scoreboard players set @s temp 1
execute as @e[type=armor_stand,tag=block,tag=has_keyframe] run function blockbuster:keyframe/interpolate
execute if entity @e[type=armor_stand,tag=block,tag=has_keyframe,tag=update,scores={temp=0}] run function blockbuster:keyframe/interpolate_main