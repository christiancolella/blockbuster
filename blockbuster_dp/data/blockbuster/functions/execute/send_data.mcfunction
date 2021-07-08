scoreboard players operation @s edit = @e[type=area_effect_cloud,tag=ray] edit
tag @s add glow

# relay to parent
execute as @e[type=armor_stand,tag=block] if score @s id = @e[type=armor_stand,tag=block,scores={selected=1..2},limit=1] parent_id run tag @s add parent_glow

# relay to player

## parent
execute if entity @s[tag=has_parent] run scoreboard players set @p[scores={edit=17..18,temp=1}] edit 19
execute if entity @s[tag=!has_parent] run scoreboard players set @p[scores={edit=19..20,temp=1}] edit 17

## collision box
execute if entity @s[tag=has_collision] run scoreboard players set @p[scores={edit=17,temp=1}] edit 18
execute if entity @s[tag=!has_collision] run scoreboard players set @p[scores={edit=18,temp=1}] edit 17
execute if entity @s[tag=has_collision] run scoreboard players set @p[scores={edit=19,temp=1}] edit 20
execute if entity @s[tag=!has_collision] run scoreboard players set @p[scores={edit=20,temp=1}] edit 19

## play / stop
execute if entity @s[scores={play=1}] run scoreboard players set @p[scores={edit=5,temp=1}] edit 6
execute if entity @s[scores={play=0}] run scoreboard players set @p[scores={edit=6,temp=1}] edit 5

## keyframe
execute if entity @s[scores={keyframe_type=1}] run scoreboard players set @p[scores={edit=10,temp=1}] edit 11
execute if entity @s[scores={keyframe_type=0}] run scoreboard players set @p[scores={edit=11,temp=1}] edit 10