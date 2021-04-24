# tag selected
execute as @e[type=area_effect_cloud,tag=ray] at @s positioned ~ ~-0.75 ~ if entity @e[type=armor_stand,tag=block,tag=!hidden,tag=!locking,distance=..0.5,limit=1,sort=nearest] run scoreboard players set @e[type=armor_stand,tag=block,tag=!hidden,distance=..0.5,limit=1,sort=nearest] selected 1
execute as @e[type=area_effect_cloud,tag=ray,tag=execute] run scoreboard players set @e[type=armor_stand,tag=block,scores={selected=1}] selected 2

# hitbox
tag @e[type=armor_stand,tag=block,scores={selected=1..2}] add selected
scoreboard players set @e[type=armor_stand,tag=block] temp 0
scoreboard players set @e[type=armor_stand,tag=block,tag=selected] temp 1

## summon new hitbox stands
execute if entity @e[type=armor_stand,tag=block,tag=!last_selected,scores={temp=1}] run function blockbuster:execute/new_hitbox

## teleport existing hitbox stands
execute if entity @e[type=armor_stand,tag=block,tag=last_selected,scores={temp=1}] run function blockbuster:execute/teleport_hitbox

scoreboard players set @e[type=armor_stand,tag=block] temp 0

# pass data to selected stand
execute if entity @p[scores={edit=1..,temp=1}] run function blockbuster:execute/send_data

# add parent
scoreboard players set @e[type=armor_stand,tag=block,scores={selected=2,edit=4}] temp 1
execute if entity @e[type=armor_stand,tag=block,scores={selected=2,edit=4}] run function blockbuster:execute/add_parent

# select parent
scoreboard players set @e[type=armor_stand,tag=block,scores={selected=2,edit=9}] temp 1
execute if entity @e[type=armor_stand,tag=block,scores={selected=2,edit=9}] run function blockbuster:execute/select_parent

# remove parent
scoreboard players set @e[type=armor_stand,tag=block,scores={selected=2,edit=5}] temp 1
execute if entity @e[type=armor_stand,tag=block,scores={selected=2,edit=5}] run function blockbuster:execute/remove_parent

# hide
scoreboard players set @e[type=armor_stand,tag=block,scores={selected=2,edit=6}] temp 1
execute if entity @e[type=armor_stand,tag=block,scores={selected=2,edit=6}] run function blockbuster:execute/hide

# delete
scoreboard players set @e[type=armor_stand,tag=block,scores={selected=2,edit=8}] temp 1
execute if entity @e[type=armor_stand,tag=block,scores={selected=2,edit=8}] run function blockbuster:execute/delete

# delete hierarchy
scoreboard players set @e[type=armor_stand,tag=block,scores={selected=2,edit=59}] temp 1
scoreboard players set @e[type=armor_stand,tag=block,tag=delete_hierarchy] temp 1
execute if entity @e[type=armor_stand,tag=block,scores={selected=2,edit=59}] run function blockbuster:execute/delete_hierarchy
execute if entity @e[type=armor_stand,tag=block,tag=delete_hierarchy] run function blockbuster:execute/delete_hierarchy

# move

## forwards 2
scoreboard players set @e[type=armor_stand,tag=block,scores={selected=2,edit=12}] temp 1
execute if entity @e[type=armor_stand,tag=block,scores={selected=2,edit=12}] run function blockbuster:execute/move/0

## backwards 2
scoreboard players set @e[type=armor_stand,tag=block,scores={selected=2,edit=13}] temp 1
execute if entity @e[type=armor_stand,tag=block,scores={selected=2,edit=13}] run function blockbuster:execute/move/1

## forwards 1/2
scoreboard players set @e[type=armor_stand,tag=block,scores={selected=2,edit=14}] temp 1
execute if entity @e[type=armor_stand,tag=block,scores={selected=2,edit=14}] run function blockbuster:execute/move/2

## backwards 1/2
scoreboard players set @e[type=armor_stand,tag=block,scores={selected=2,edit=15}] temp 1
execute if entity @e[type=armor_stand,tag=block,scores={selected=2,edit=15}] run function blockbuster:execute/move/3

## forwards 1/16
scoreboard players set @e[type=armor_stand,tag=block,scores={selected=2,edit=16}] temp 1
execute if entity @e[type=armor_stand,tag=block,scores={selected=2,edit=16}] run function blockbuster:execute/move/4

## backwards 1/16
scoreboard players set @e[type=armor_stand,tag=block,scores={selected=2,edit=17}] temp 1
execute if entity @e[type=armor_stand,tag=block,scores={selected=2,edit=17}] run function blockbuster:execute/move/5

# rotate

## 90d clockwise
scoreboard players set @e[type=armor_stand,tag=block,scores={selected=2,edit=39}] temp 1
execute if entity @e[type=armor_stand,tag=block,scores={selected=2,edit=39}] run function blockbuster:execute/rotate/0

## 90d counter clockwise
scoreboard players set @e[type=armor_stand,tag=block,scores={selected=2,edit=40}] temp 1
execute if entity @e[type=armor_stand,tag=block,scores={selected=2,edit=40}] run function blockbuster:execute/rotate/1

## 15d clockwise
scoreboard players set @e[type=armor_stand,tag=block,scores={selected=2,edit=41}] temp 1
execute if entity @e[type=armor_stand,tag=block,scores={selected=2,edit=41}] run function blockbuster:execute/rotate/2

## 15d counter clockwise
scoreboard players set @e[type=armor_stand,tag=block,scores={selected=2,edit=42}] temp 1
execute if entity @e[type=armor_stand,tag=block,scores={selected=2,edit=42}] run function blockbuster:execute/rotate/3

## 2.5d clockwise
scoreboard players set @e[type=armor_stand,tag=block,scores={selected=2,edit=43}] temp 1
execute if entity @e[type=armor_stand,tag=block,scores={selected=2,edit=43}] run function blockbuster:execute/rotate/4

## 2.5d counter clockwise
scoreboard players set @e[type=armor_stand,tag=block,scores={selected=2,edit=44}] temp 1
execute if entity @e[type=armor_stand,tag=block,scores={selected=2,edit=44}] run function blockbuster:execute/rotate/5

# animation length
execute if entity @e[type=armor_stand,tag=block,scores={selected=2,edit=45..48}] run function blockbuster:execute/animation_length

# timeline
execute if entity @e[type=armor_stand,tag=block,scores={selected=2,edit=23..28}] run function blockbuster:execute/timeline

# play
execute as @e[type=armor_stand,tag=block,scores={selected=2,edit=18}] run scoreboard players set @s play 1
execute as @e[type=armor_stand,tag=block,scores={selected=2,edit=18}] run scoreboard players set @s global 1

# stop
execute as @e[type=armor_stand,tag=block,scores={selected=2,edit=19}] run scoreboard players set @s play 0
execute as @e[type=armor_stand,tag=block,scores={selected=2,edit=19}] run scoreboard players set @s global 1

# move keyframe
execute if entity @e[type=armor_stand,tag=block,scores={selected=2,edit=49..52}] run function blockbuster:execute/move_keyframe

# update parent
execute if entity @e[type=armor_stand,tag=block,scores={global=1}] run function blockbuster:parent/send_to_parent
execute as @e[type=armor_stand,tag=block] run scoreboard players set @s global 0

# new keyframe
execute if entity @e[type=armor_stand,tag=block,scores={selected=2,edit=29..31}] run function blockbuster:execute/new_keyframe

# test for keyframe at time
scoreboard players set @e[type=armor_stand,tag=block] keyframe_type 0
execute as @e[type=area_effect_cloud,tag=keyframe] if score @s parent_uuid_0 = @e[type=armor_stand,tag=block,scores={selected=1..2},limit=1] self_uuid_0 if score @s parent_uuid_1 = @e[type=armor_stand,tag=block,scores={selected=1..2},limit=1] self_uuid_1 if score @s parent_uuid_2 = @e[type=armor_stand,tag=block,scores={selected=1..2},limit=1] self_uuid_2 if score @s parent_uuid_3 = @e[type=armor_stand,tag=block,scores={selected=1..2},limit=1] self_uuid_3 if score @s time = @e[type=armor_stand,tag=block,scores={selected=1..2},limit=1] time run scoreboard players set @e[type=armor_stand,tag=block,scores={selected=1..2}] keyframe_type 1

# remove keyframe
execute as @e[type=area_effect_cloud,tag=keyframe] if score @s parent_uuid_0 = @e[type=armor_stand,tag=block,scores={selected=2,edit=32},limit=1] self_uuid_0 if score @s parent_uuid_1 = @e[type=armor_stand,tag=block,scores={selected=2,edit=32},limit=1] self_uuid_1 if score @s parent_uuid_2 = @e[type=armor_stand,tag=block,scores={selected=2,edit=32},limit=1] self_uuid_2 if score @s parent_uuid_3 = @e[type=armor_stand,tag=block,scores={selected=2,edit=32},limit=1] self_uuid_3 if score @s time = @e[type=armor_stand,tag=block,scores={selected=2,edit=32},limit=1] time run kill @s

# change transition type
execute if entity @e[type=armor_stand,tag=block,scores={selected=2,edit=34..38}] run function blockbuster:execute/transition_type

# collision box
tag @e[type=armor_stand,tag=block,scores={selected=2,edit=57}] add has_collision
tag @e[type=armor_stand,tag=block,scores={selected=2,edit=58}] remove has_collision

# copy
scoreboard players set @e[type=armor_stand,tag=block,scores={selected=2,edit=55}] temp 1
execute if entity @e[type=armor_stand,tag=block,scores={selected=2,edit=55}] run function blockbuster:execute/copy

# lock
tag @e[type=armor_stand,tag=block,scores={selected=2,edit=60}] add locking
scoreboard players set @e[type=armor_stand,tag=block,scores={selected=2,edit=60}] time -1
scoreboard players set @e[type=armor_stand,tag=block,scores={selected=2,edit=60}] play 1
scoreboard players set @e[type=armor_stand,tag=block,scores={selected=2,edit=60}] global 1
execute if entity @e[type=armor_stand,tag=block,scores={global=1}] run function blockbuster:parent/send_to_parent

# transform and timeline text
execute if entity @e[type=armor_stand,tag=block,scores={selected=1,edit=2}] run function blockbuster:misc/actionbar
execute if entity @e[type=armor_stand,tag=block,scores={selected=1,edit=10..44}] run function blockbuster:misc/actionbar
execute if entity @e[type=armor_stand,tag=block,scores={selected=1,edit=49..52}] run function blockbuster:misc/actionbar

scoreboard players set @e[type=armor_stand,tag=block] selected 0