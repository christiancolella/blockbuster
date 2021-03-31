# new stand
execute as @e[type=armor_stand,tag=new] run data merge entity @s {Rotation:[0.0f,0.0f]}
execute as @e[type=armor_stand,tag=new] at @s run tp ~ ~-0.226 ~
execute as @e[type=armor_stand,tag=new] run tag @s add block
execute as @e[type=armor_stand,tag=new] store result score @s initial_offset_x run data get entity @s Pos[0] 1000
execute as @e[type=armor_stand,tag=new] store result score @s initial_offset_y run data get entity @s Pos[1] 1000
execute as @e[type=armor_stand,tag=new] store result score @s initial_offset_z run data get entity @s Pos[2] 1000
execute as @e[type=armor_stand,tag=new] run tag @s remove new

# set block
execute as @e[type=armor_stand,tag=block] store success score @s has_hand_item run data get entity @s HandItems[0].id
execute as @e[type=armor_stand,tag=block] if score @s has_hand_item matches 1 run data modify entity @s ArmorItems[3] set from entity @s HandItems[0]
execute as @e[type=armor_stand,tag=block] run data merge entity @s {HandItems:[{},{}]}

# visual stuff
tag @e[type=armor_stand,tag=block] remove glow
function animations:ray/setup

team join hover @e[type=armor_stand,tag=block]
team join parent_glow @e[type=armor_stand,tag=block,tag=parent_glow]
team join add_parent @e[type=armor_stand,tag=block,scores={edit=4}]
team join add_parent @e[type=armor_stand,tag=block,tag=awaiting_parent]
team join select_parent @e[type=armor_stand,tag=block,scores={edit=9}]
team join remove_parent @e[type=armor_stand,tag=block,scores={edit=5}]
team join delete @e[type=armor_stand,tag=block,scores={edit=8}]

execute as @e[type=armor_stand,tag=!glow] run data merge entity @s {Glowing:0b}
execute as @e[type=armor_stand,tag=glow] run data merge entity @s {Glowing:1b}
execute as @e[type=armor_stand,tag=parent_glow] run data merge entity @s {Glowing:1b}
execute as @e[type=armor_stand,tag=awaiting_parent] run data merge entity @s {Glowing:1b}

# inventory

## default
execute as @a unless score @s edit matches 1.. run replaceitem entity @s hotbar.8 netherite_boots{display:{Name:"{\"text\":\"Edit Mode\",\"color\":\"blue\",\"italic\":false}"},CustomModelData:-1}

## home edit
execute as @a[scores={edit=1..2}] run replaceitem entity @s hotbar.0 bee_spawn_egg{display:{Name:"{\"text\":\"New Block\",\"color\":\"blue\",\"italic\":false}"},CustomModelData:1,EntityTag:{id:"armor_stand",Small:1b,Invisible:1b,NoGravity:1b,ShowArms:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_block",Count:1b}],Pose:{RightArm:[0.0f,0.0f,-30.0f],LeftArm:[0.0f,0.0f,30.0f],RightLeg:[180.0f,0.0f,0.0f],LeftLeg:[180.0f,0.0f,0.0f]},DisabledSlots:3947580,Tags:["new"]}}
execute as @a[scores={edit=1..2}] run replaceitem entity @s hotbar.1 netherite_boots{display:{Name:"{\"text\":\"Transform [+]\",\"color\":\"aqua\",\"italic\":false}"},CustomModelData:2}
execute as @a[scores={edit=1..2}] run replaceitem entity @s hotbar.2 netherite_boots{display:{Name:"{\"text\":\"Animate [+]\",\"color\":\"light_purple\",\"italic\":false}"},CustomModelData:3}
execute as @a[scores={edit=1}] run replaceitem entity @s hotbar.3 netherite_boots{display:{Name:"{\"text\":\"Add Parent\",\"color\":\"yellow\",\"italic\":false}"},CustomModelData:4}
execute as @a[scores={edit=2}] run replaceitem entity @s hotbar.3 netherite_boots{display:{Name:"{\"text\":\"Remove Parent\",\"color\":\"red\",\"italic\":false}"},CustomModelData:5}
execute as @a[scores={edit=1..2}] run replaceitem entity @s hotbar.4 netherite_boots{display:{Name:"{\"text\":\"Hide\",\"color\":\"dark_gray\",\"italic\":false}"},CustomModelData:6}
execute as @a[scores={edit=1..2}] run replaceitem entity @s hotbar.5 netherite_boots{display:{Name:"{\"text\":\"Unhide All\",\"color\":\"gray\",\"italic\":false}"},CustomModelData:7}
execute as @a[scores={edit=1..2}] run replaceitem entity @s hotbar.6 netherite_boots{display:{Name:"{\"text\":\"Delete\",\"color\":\"dark_red\",\"italic\":false}"},CustomModelData:8}
execute as @a[scores={edit=1..2}] run replaceitem entity @s hotbar.7 air
execute as @a[scores={edit=1..2}] run replaceitem entity @s hotbar.8 netherite_boots{display:{Name:"{\"text\":\"Exit\",\"color\":\"red\",\"italic\":false}"},CustomModelData:1}

## add parent
execute as @a[scores={edit=3}] run replaceitem entity @s hotbar.0 netherite_boots{display:{Name:"{\"text\":\"Select Parent\",\"color\":\"gold\",\"italic\":false}"},CustomModelData:9}
execute as @a[scores={edit=3}] run replaceitem entity @s hotbar.1 netherite_boots{display:{Name:"{\"text\":\"Cancel\",\"color\":\"red\",\"italic\":false}"},CustomModelData:1}
execute as @a[scores={edit=3}] run replaceitem entity @s hotbar.2 air
execute as @a[scores={edit=3}] run replaceitem entity @s hotbar.3 air
execute as @a[scores={edit=3}] run replaceitem entity @s hotbar.4 air
execute as @a[scores={edit=3}] run replaceitem entity @s hotbar.5 air
execute as @a[scores={edit=3}] run replaceitem entity @s hotbar.6 air
execute as @a[scores={edit=3}] run replaceitem entity @s hotbar.7 air
execute as @a[scores={edit=3}] run replaceitem entity @s hotbar.8 air

## transform
execute as @a[scores={edit=4}] run replaceitem entity @s hotbar.0 netherite_boots{display:{Name:"{\"text\":\"Move +1/2\",\"color\":\"aqua\",\"italic\":false}"},CustomModelData:10}
execute as @a[scores={edit=4}] run replaceitem entity @s hotbar.1 netherite_boots{display:{Name:"{\"text\":\"Move -1/2\",\"color\":\"aqua\",\"italic\":false}"},CustomModelData:11}
execute as @a[scores={edit=4}] run replaceitem entity @s hotbar.2 netherite_boots{display:{Name:"{\"text\":\"Move +1/16\",\"color\":\"aqua\",\"italic\":false}"},CustomModelData:12}
execute as @a[scores={edit=4}] run replaceitem entity @s hotbar.3 netherite_boots{display:{Name:"{\"text\":\"Move -1/16\",\"color\":\"aqua\",\"italic\":false}"},CustomModelData:13}
execute as @a[scores={edit=4}] run replaceitem entity @s hotbar.4 netherite_boots{display:{Name:"{\"text\":\"Rotate 15° Clockwise\",\"color\":\"aqua\",\"italic\":false}"},CustomModelData:14}
execute as @a[scores={edit=4}] run replaceitem entity @s hotbar.5 netherite_boots{display:{Name:"{\"text\":\"Rotate 15° Counter-clockwise\",\"color\":\"aqua\",\"italic\":false}"},CustomModelData:15}
execute as @a[scores={edit=4}] run replaceitem entity @s hotbar.6 netherite_boots{display:{Name:"{\"text\":\"Rotate 2.5° Clockwise\",\"color\":\"aqua\",\"italic\":false}"},CustomModelData:16}
execute as @a[scores={edit=4}] run replaceitem entity @s hotbar.7 netherite_boots{display:{Name:"{\"text\":\"Rotate 2.5° Counter-clockwise\",\"color\":\"aqua\",\"italic\":false}"},CustomModelData:17}
execute as @a[scores={edit=4}] run replaceitem entity @s hotbar.8 netherite_boots{display:{Name:"{\"text\":\"Back\",\"color\":\"red\",\"italic\":false}"},CustomModelData:1}

## animate
execute as @a[scores={edit=5}] run replaceitem entity @s hotbar.0 netherite_boots{display:{Name:"{\"text\":\"Play\",\"color\":\"green\",\"italic\":false}"},CustomModelData:18}
execute as @a[scores={edit=6}] run replaceitem entity @s hotbar.0 netherite_boots{display:{Name:"{\"text\":\"Stop\",\"color\":\"red\",\"italic\":false}"},CustomModelData:19}
execute as @a[scores={edit=7}] run replaceitem entity @s hotbar.0 netherite_boots{display:{Name:"{\"text\":\"Play\",\"color\":\"green\",\"italic\":false}"},CustomModelData:18}
execute as @a[scores={edit=8}] run replaceitem entity @s hotbar.0 netherite_boots{display:{Name:"{\"text\":\"Stop\",\"color\":\"red\",\"italic\":false}"},CustomModelData:19}
execute as @a[scores={edit=5..8}] run replaceitem entity @s hotbar.1 netherite_boots{display:{Name:"{\"text\":\"Timeline [+]\",\"color\":\"dark_green\",\"italic\":false}"},CustomModelData:20}
execute as @a[scores={edit=5..8}] run replaceitem entity @s hotbar.2 netherite_boots{display:{Name:"{\"text\":\"Transform [+]\",\"color\":\"aqua\",\"italic\":false}"},CustomModelData:2}
execute as @a[scores={edit=5}] run replaceitem entity @s hotbar.3 netherite_boots{display:{Name:"{\"text\":\"Add Keyframe\",\"color\":\"dark_purple\",\"italic\":false}"},CustomModelData:21}
execute as @a[scores={edit=6}] run replaceitem entity @s hotbar.3 netherite_boots{display:{Name:"{\"text\":\"Add Keyframe\",\"color\":\"dark_purple\",\"italic\":false}"},CustomModelData:21}
execute as @a[scores={edit=7}] run replaceitem entity @s hotbar.3 netherite_boots{display:{Name:"{\"text\":\"Delete Keyframe\",\"color\":\"red\",\"italic\":false}"},CustomModelData:22}
execute as @a[scores={edit=8}] run replaceitem entity @s hotbar.3 netherite_boots{display:{Name:"{\"text\":\"Delete Keyframe\",\"color\":\"red\",\"italic\":false}"},CustomModelData:22}
execute as @a[scores={edit=5..8}] run replaceitem entity @s hotbar.4 netherite_boots{display:{Name:"{\"text\":\"Transition Type [+]\",\"color\":\"dark_aqua\",\"italic\":false}"},CustomModelData:23}
execute as @a[scores={edit=5..8}] run replaceitem entity @s hotbar.5 air
execute as @a[scores={edit=5..8}] run replaceitem entity @s hotbar.6 air
execute as @a[scores={edit=5..8}] run replaceitem entity @s hotbar.7 air
execute as @a[scores={edit=5..8}] run replaceitem entity @s hotbar.8 netherite_boots{display:{Name:"{\"text\":\"Back\",\"color\":\"red\",\"italic\":false}"},CustomModelData:1}

## timeline
execute as @a[scores={edit=9}] run replaceitem entity @s hotbar.0 netherite_boots{display:{Name:"{\"text\":\"Animation Length [+]\",\"color\":\"green\",\"italic\":false}"},CustomModelData:24}
execute as @a[scores={edit=9}] run replaceitem entity @s hotbar.1 netherite_boots{display:{Name:"{\"text\":\"Move +0.25 seconds\",\"color\":\"dark_green\",\"italic\":false}"},CustomModelData:25}
execute as @a[scores={edit=9}] run replaceitem entity @s hotbar.2 netherite_boots{display:{Name:"{\"text\":\"Move -0.25 seconds\",\"color\":\"dark_green\",\"italic\":false}"},CustomModelData:26}
execute as @a[scores={edit=9}] run replaceitem entity @s hotbar.3 netherite_boots{display:{Name:"{\"text\":\"Move +0.05 seconds\",\"color\":\"dark_green\",\"italic\":false}"},CustomModelData:27}
execute as @a[scores={edit=9}] run replaceitem entity @s hotbar.4 netherite_boots{display:{Name:"{\"text\":\"Move -0.05 seconds\",\"color\":\"dark_green\",\"italic\":false}"},CustomModelData:28}
execute as @a[scores={edit=9}] run replaceitem entity @s hotbar.5 netherite_boots{display:{Name:"{\"text\":\"Jump to Beginning\",\"color\":\"dark_green\",\"italic\":false}"},CustomModelData:29}
execute as @a[scores={edit=9}] run replaceitem entity @s hotbar.6 netherite_boots{display:{Name:"{\"text\":\"Jump to End\",\"color\":\"dark_green\",\"italic\":false}"},CustomModelData:30}
execute as @a[scores={edit=9}] run replaceitem entity @s hotbar.7 air
execute as @a[scores={edit=9}] run replaceitem entity @s hotbar.8 netherite_boots{display:{Name:"{\"text\":\"Back\",\"color\":\"red\",\"italic\":false}"},CustomModelData:1}

## animation length
execute as @a[scores={edit=10}] run replaceitem entity @s hotbar.0 netherite_boots{display:{Name:"{\"text\":\"Add 0.25 seconds\",\"color\":\"green\",\"italic\":false}"},CustomModelData:25}
execute as @a[scores={edit=10}] run replaceitem entity @s hotbar.1 netherite_boots{display:{Name:"{\"text\":\"Subtract 0.25 seconds\",\"color\":\"green\",\"italic\":false}"},CustomModelData:26}
execute as @a[scores={edit=10}] run replaceitem entity @s hotbar.2 netherite_boots{display:{Name:"{\"text\":\"Add 0.05 seconds\",\"color\":\"green\",\"italic\":false}"},CustomModelData:27}
execute as @a[scores={edit=10}] run replaceitem entity @s hotbar.3 netherite_boots{display:{Name:"{\"text\":\"Subtract 0.05 seconds\",\"color\":\"green\",\"italic\":false}"},CustomModelData:28}
execute as @a[scores={edit=10}] run replaceitem entity @s hotbar.4 air
execute as @a[scores={edit=10}] run replaceitem entity @s hotbar.5 air
execute as @a[scores={edit=10}] run replaceitem entity @s hotbar.6 air
execute as @a[scores={edit=10}] run replaceitem entity @s hotbar.7 air
execute as @a[scores={edit=10}] run replaceitem entity @s hotbar.8 netherite_boots{display:{Name:"{\"text\":\"Back\",\"color\":\"red\",\"italic\":false}"},CustomModelData:1}

## transform from animate
execute as @a[scores={edit=11}] run replaceitem entity @s hotbar.0 netherite_boots{display:{Name:"{\"text\":\"Move +1/2\",\"color\":\"aqua\",\"italic\":false}"},CustomModelData:10}
execute as @a[scores={edit=11}] run replaceitem entity @s hotbar.1 netherite_boots{display:{Name:"{\"text\":\"Move -1/2\",\"color\":\"aqua\",\"italic\":false}"},CustomModelData:11}
execute as @a[scores={edit=11}] run replaceitem entity @s hotbar.2 netherite_boots{display:{Name:"{\"text\":\"Move +1/16\",\"color\":\"aqua\",\"italic\":false}"},CustomModelData:12}
execute as @a[scores={edit=11}] run replaceitem entity @s hotbar.3 netherite_boots{display:{Name:"{\"text\":\"Move -1/16\",\"color\":\"aqua\",\"italic\":false}"},CustomModelData:13}
execute as @a[scores={edit=11}] run replaceitem entity @s hotbar.4 netherite_boots{display:{Name:"{\"text\":\"Rotate 15° Clockwise\",\"color\":\"aqua\",\"italic\":false}"},CustomModelData:14}
execute as @a[scores={edit=11}] run replaceitem entity @s hotbar.5 netherite_boots{display:{Name:"{\"text\":\"Rotate 15° Counter-clockwise\",\"color\":\"aqua\",\"italic\":false}"},CustomModelData:15}
execute as @a[scores={edit=11}] run replaceitem entity @s hotbar.6 netherite_boots{display:{Name:"{\"text\":\"Rotate 2.5° Clockwise\",\"color\":\"aqua\",\"italic\":false}"},CustomModelData:16}
execute as @a[scores={edit=11}] run replaceitem entity @s hotbar.7 netherite_boots{display:{Name:"{\"text\":\"Rotate 2.5° Counter-clockwise\",\"color\":\"aqua\",\"italic\":false}"},CustomModelData:17}
execute as @a[scores={edit=11}] run replaceitem entity @s hotbar.8 netherite_boots{display:{Name:"{\"text\":\"Back\",\"color\":\"red\",\"italic\":false}"},CustomModelData:1}

## transition type
execute as @a[scores={edit=12}] run replaceitem entity @s hotbar.0 netherite_boots{display:{Name:"{\"text\":\"Linear\",\"color\":\"dark_aqua\",\"italic\":false}"},CustomModelData:31}
execute as @a[scores={edit=12}] run replaceitem entity @s hotbar.1 netherite_boots{display:{Name:"{\"text\":\"Ease In\",\"color\":\"dark_aqua\",\"italic\":false}"},CustomModelData:32}
execute as @a[scores={edit=12}] run replaceitem entity @s hotbar.2 netherite_boots{display:{Name:"{\"text\":\"Ease Out\",\"color\":\"dark_aqua\",\"italic\":false}"},CustomModelData:33}
execute as @a[scores={edit=12}] run replaceitem entity @s hotbar.3 netherite_boots{display:{Name:"{\"text\":\"Ease In and Out\",\"color\":\"dark_aqua\",\"italic\":false}"},CustomModelData:34}
execute as @a[scores={edit=12}] run replaceitem entity @s hotbar.4 netherite_boots{display:{Name:"{\"text\":\"Constant\",\"color\":\"dark_aqua\",\"italic\":false}"},CustomModelData:35}
execute as @a[scores={edit=12}] run replaceitem entity @s hotbar.5 air
execute as @a[scores={edit=12}] run replaceitem entity @s hotbar.6 air
execute as @a[scores={edit=12}] run replaceitem entity @s hotbar.7 air
execute as @a[scores={edit=12}] run replaceitem entity @s hotbar.8 netherite_boots{display:{Name:"{\"text\":\"Back\",\"color\":\"red\",\"italic\":false}"},CustomModelData:1}
