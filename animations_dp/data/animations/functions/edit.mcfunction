# new stand
execute as @e[type=armor_stand,tag=new] run data merge entity @s {Rotation:[0.0f,0.0f]}
execute as @e[type=armor_stand,tag=new] at @s run tp ~ ~-0.9375 ~
execute as @e[type=armor_stand,tag=new] run tag @s add block
execute as @e[type=armor_stand,tag=new] run tag @s remove new

# set block
execute as @e[type=armor_stand,tag=block] store success score @s has_hand_item run data get entity @s HandItems[0].id
execute as @e[type=armor_stand,tag=block] if score @s has_hand_item matches 1 run data modify entity @s ArmorItems[3] set from entity @s HandItems[0]
execute as @e[type=armor_stand,tag=block] run data merge entity @s {HandItems:[{},{}]}

# visual stuff
tag @e[type=armor_stand,tag=block] remove glow
function animations:ray/setup

## glow
team join hover @e[type=armor_stand,tag=block]
team join add_parent @e[type=armor_stand,tag=block,tag=add_parent]
team join add_parent @e[type=armor_stand,tag=block,tag=awaiting_parent]
team join select_parent @e[type=armor_stand,tag=block,tag=select_parent]
team join delete @e[type=armor_stand,tag=block,tag=delete]

execute as @e[type=armor_stand,tag=!glow] run data merge entity @s {Glowing:0b}
execute as @e[type=armor_stand,tag=glow] run data merge entity @s {Glowing:1b}
execute as @e[type=armor_stand,tag=awaiting_parent] run data merge entity @s {Glowing:1b}