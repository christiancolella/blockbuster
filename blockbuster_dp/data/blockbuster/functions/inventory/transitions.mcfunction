## enter edit mode
scoreboard players set @s[scores={global=-1,temp=2}] edit 1

## exit
replaceitem entity @s[scores={edit=1,global=1,temp=2}] hotbar.0 air
replaceitem entity @s[scores={edit=1,global=1,temp=2}] hotbar.1 air
replaceitem entity @s[scores={edit=1,global=1,temp=2}] hotbar.2 air
replaceitem entity @s[scores={edit=1,global=1,temp=2}] hotbar.3 air
replaceitem entity @s[scores={edit=1,global=1,temp=2}] hotbar.4 air
replaceitem entity @s[scores={edit=1,global=1,temp=2}] hotbar.5 air
replaceitem entity @s[scores={edit=1,global=1,temp=2}] hotbar.6 air
replaceitem entity @s[scores={edit=1,global=1,temp=2}] hotbar.7 air
replaceitem entity @s[scores={edit=1,global=1,temp=2}] hotbar.8 air
scoreboard players set @s[scores={edit=1,global=1,temp=2}] edit 0

## home
scoreboard players set @s[scores={edit=1,global=2,temp=2}] edit 4
scoreboard players set @s[scores={edit=1,global=3,temp=2}] edit 5
scoreboard players set @s[scores={edit=1,global=54,temp=2}] edit 17

## transform
scoreboard players set @s[scores={edit=4,global=10,temp=2}] edit 13
scoreboard players set @s[scores={edit=4,global=11,temp=2}] edit 14
scoreboard players set @s[scores={edit=4,global=1,temp=2}] edit 1

## animate
scoreboard players set @s[scores={edit=5..6,global=20,temp=2}] edit 7
scoreboard players set @s[scores={edit=5..6,global=2,temp=2}] edit 9
scoreboard players set @s[scores={edit=5..6,global=21,temp=2}] edit 10
scoreboard players set @s[scores={edit=5..6,global=1,temp=2}] edit 1

## timeline
scoreboard players set @s[scores={edit=7,global=22,temp=2}] edit 8
scoreboard players set @s[scores={edit=7,global=1,temp=2}] edit 5

## animation length
scoreboard players set @s[scores={edit=8,global=1,temp=2}] edit 7

## transform from animate
scoreboard players set @s[scores={edit=9,global=10,temp=2}] edit 15
scoreboard players set @s[scores={edit=9,global=11,temp=2}] edit 16
scoreboard players set @s[scores={edit=9,global=1,temp=2}] edit 5

## keyframe
scoreboard players set @s[scores={edit=11,global=33,temp=2}] edit 12
scoreboard players set @s[scores={edit=10..11,global=1,temp=2}] edit 5

## transitions
scoreboard players set @s[scores={edit=12,global=1,temp=2}] edit 10

## move
scoreboard players set @s[scores={edit=13,global=1,temp=2}] edit 4

## rotate
scoreboard players set @s[scores={edit=14,global=1,temp=2}] edit 4

## move from animate
scoreboard players set @s[scores={edit=15,global=1,temp=2}] edit 9

## rotate from animate
scoreboard players set @s[scores={edit=16,global=1,temp=2}] edit 9

## options
scoreboard players set @s[scores={edit=17..20,global=1,temp=2}] edit 1

## copy
scoreboard players set @s[scores={edit=2,global=56,temp=2}] edit 17
execute as @e[type=armor_stand,tag=block] if score @s self_uuid_0 = @p[scores={edit=2,global=1,temp=2}] parent_uuid_0 if score @s self_uuid_1 = @p[scores={edit=2,global=1,temp=2}] parent_uuid_1 if score @s self_uuid_2 = @p[scores={edit=2,global=1,temp=2}] parent_uuid_2 if score @s self_uuid_3 = @p[scores={edit=2,global=1,temp=2}] parent_uuid_3 run tag @s add delete_hierarchy
scoreboard players set @s[scores={edit=2,global=1,temp=2}] edit 17
scoreboard players set @s[scores={edit=2,global=1,temp=2}] global 0

## parent
execute as @e[type=armor_stand,tag=block] if score @s self_uuid_0 = @p[scores={edit=3,global=1,temp=2}] parent_uuid_0 if score @s self_uuid_1 = @p[scores={edit=3,global=1,temp=2}] parent_uuid_1 if score @s self_uuid_2 = @p[scores={edit=3,global=1,temp=2}] parent_uuid_2 if score @s self_uuid_3 = @p[scores={edit=3,global=1,temp=2}] parent_uuid_3 run tag @s remove awaiting_parent
scoreboard players set @s[scores={edit=3,global=1,temp=2}] edit 17