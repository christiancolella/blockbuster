# add parent
execute as @s[scores={edit=4}] run function blockbuster:execute/action/add_parent

# select parent
execute as @s[scores={edit=9}] run function blockbuster:execute/action/select_parent

# remove parent
execute as @s[scores={edit=5}] run function blockbuster:execute/action/remove_parent

# hide
execute as @s[scores={edit=6}] run function blockbuster:execute/action/hide

# delete
execute as @s[scores={edit=8}] run function blockbuster:execute/action/delete

# delete hierarchy
scoreboard players set @e[type=armor_stand] temp 0
execute as @s[scores={edit=59}] run function blockbuster:execute/action/delete_hierarchy
execute as @e[type=armor_stand,tag=block,tag=delete_hierarchy] run function blockbuster:execute/action/delete_hierarchy

# move

## forwards 2
execute as @s[scores={edit=12}] run function blockbuster:execute/action/move/0

## backwards 2
execute as @s[scores={edit=13}] run function blockbuster:execute/action/move/1

## forwards 1/2
execute as @s[scores={edit=14}] run function blockbuster:execute/action/move/2

## backwards 1/2
execute as @s[scores={edit=15}] run function blockbuster:execute/action/move/3

## forwards 1/16
execute as @s[scores={edit=16}] run function blockbuster:execute/action/move/4

## backwards 1/16
execute as @s[scores={edit=17}] run function blockbuster:execute/action/move/5

# rotate

## 90d clockwise
execute as @s[scores={edit=39}] run function blockbuster:execute/action/rotate/0

## 90d counter clockwise
execute as @s[scores={edit=40}] run function blockbuster:execute/action/rotate/1

## 15d clockwise
execute as @s[scores={edit=41}] run function blockbuster:execute/action/rotate/2

## 15d counter clockwise
execute as @s[scores={edit=42}] run function blockbuster:execute/action/rotate/3

## 2.5d clockwise
execute as @s[scores={edit=43}] run function blockbuster:execute/action/rotate/4

## 2.5d counter clockwise
execute as @s[scores={edit=44}] run function blockbuster:execute/action/rotate/5

# animation length
execute as @s[scores={edit=45..48}] run function blockbuster:execute/action/animation_length

# timeline
execute as @s[scores={edit=23..28}] run function blockbuster:execute/action/timeline

# play / stop
scoreboard players set @s[scores={edit=18}] play 1
scoreboard players set @s[scores={edit=19}] play 0
scoreboard players set @s[scores={edit=18..19}] global 1

# move keyframe
scoreboard players set @s[scores={edit=49..52}] temp 1
execute if entity @s[scores={edit=49..52}] run function blockbuster:execute/action/move_keyframe

# new keyframe
execute as @s[scores={edit=29..31}] run function blockbuster:execute/action/new_keyframe

# change transition type
execute if entity @s[scores={edit=34..38}] run function blockbuster:execute/action/transition_type

# collision box
tag @s[scores={edit=57}] add has_collision
tag @s[scores={edit=58}] remove has_collision

# copy
execute as @s[scores={edit=55}] run function blockbuster:execute/action/copy

# lock
tag @s[scores={edit=60}] add locking
scoreboard players set @s[scores={edit=60}] time -1
scoreboard players set @s[scores={edit=60}] play 1
scoreboard players set @s[scores={edit=60}] global 1

# update parent
execute if entity @s[scores={global=1}] run function blockbuster:parent/send_to_parent