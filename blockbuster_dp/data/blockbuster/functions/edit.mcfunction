# action
scoreboard players set @a global 0
execute as @a[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick"}}] store result score @s global run data get entity @s SelectedItem.tag.CustomModelData
execute as @e[type=armor_stand,tag=hitbox] store success score @s has_hand_item run data get entity @s HandItems[0].id

execute as @e[type=armor_stand,tag=hitbox,scores={has_hand_item=1},limit=1] run scoreboard players set @s temp 1
execute as @e[type=armor_stand,tag=block] if score @s self_uuid_0 = @e[type=armor_stand,tag=hitbox,nbt={HandItems:[{id:"minecraft:bee_spawn_egg",Count:1b,tag:{CustomModelData:1}}]},scores={temp=1},limit=1] parent_uuid_0 if score @s self_uuid_1 = @e[type=armor_stand,tag=hitbox,nbt={HandItems:[{id:"minecraft:bee_spawn_egg",Count:1b,tag:{CustomModelData:1}}]},scores={temp=1},limit=1] parent_uuid_1 if score @s self_uuid_2 = @e[type=armor_stand,tag=hitbox,nbt={HandItems:[{id:"minecraft:bee_spawn_egg",Count:1b,tag:{CustomModelData:1}}]},scores={temp=1},limit=1] parent_uuid_2 if score @s self_uuid_3 = @e[type=armor_stand,tag=hitbox,nbt={HandItems:[{id:"minecraft:bee_spawn_egg",Count:1b,tag:{CustomModelData:1}}]},scores={temp=1},limit=1] parent_uuid_3 run data modify entity @s HandItems[0] set from entity @e[type=armor_stand,tag=hitbox,nbt={HandItems:[{id:"minecraft:bee_spawn_egg",Count:1b,tag:{CustomModelData:1}}]},scores={temp=1},limit=1] HandItems[0]
execute as @e[type=armor_stand,tag=hitbox,nbt={HandItems:[{id:"minecraft:bee_spawn_egg",Count:1b,tag:{CustomModelData:1}}]},scores={temp=1}] run scoreboard players set @s has_hand_item 0

execute as @e[type=armor_stand,tag=hitbox,nbt={HandItems:[{id:"minecraft:warped_fungus_on_a_stick"}]},scores={temp=1}] at @s run scoreboard players set @p click 1
execute as @e[type=armor_stand,tag=hitbox,nbt={HandItems:[{id:"minecraft:warped_fungus_on_a_stick"}]},scores={temp=1}] at @s store result score @p global run data get entity @s HandItems[0].tag.CustomModelData
execute as @e[type=armor_stand,tag=hitbox,nbt={HandItems:[{id:"minecraft:warped_fungus_on_a_stick"}]},scores={temp=1}] run scoreboard players set @s has_hand_item 0

execute as @e[type=armor_stand,tag=block] if score @s self_uuid_0 = @e[type=armor_stand,tag=hitbox,scores={temp=1},limit=1] parent_uuid_0 if score @s self_uuid_1 = @e[type=armor_stand,tag=hitbox,scores={temp=1},limit=1] parent_uuid_1 if score @s self_uuid_2 = @e[type=armor_stand,tag=hitbox,scores={temp=1},limit=1] parent_uuid_2 if score @s self_uuid_3 = @e[type=armor_stand,tag=hitbox,scores={temp=1},limit=1] parent_uuid_3 if score @e[type=armor_stand,tag=hitbox,scores={temp=1},limit=1] has_hand_item matches 1 run data modify entity @s ArmorItems[3] set from entity @e[type=armor_stand,tag=hitbox,scores={temp=1},limit=1] HandItems[0]
execute as @e[type=armor_stand,tag=hitbox,scores={temp=1}] run data merge entity @s {HandItems:[{},{}]}
scoreboard players set @e[type=armor_stand,tag=hitbox] temp 0

# raycasting
tag @e[type=armor_stand,tag=block] remove glow
tag @e[type=armor_stand,tag=block] remove parent_glow
tag @e[type=armor_stand,tag=block,tag=selected] add last_selected
tag @e[type=armor_stand,tag=block,tag=!selected] remove last_selected
tag @e[type=armor_stand,tag=block] remove selected
function blockbuster:ray/setup

## delete old hitbox stands
execute as @e[type=armor_stand,tag=block,tag=last_selected,tag=!selected,limit=1] run scoreboard players set @s temp 1
execute as @e[type=armor_stand,tag=hitbox] if score @s parent_uuid_0 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_0 if score @s parent_uuid_1 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_1 if score @s parent_uuid_2 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_2 if score @s parent_uuid_3 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_3 run kill @s
scoreboard players set @e[type=armor_stand,tag=block] temp 0

## glow color
team join blue @e[type=armor_stand,tag=block]
team join dark_blue @e[type=armor_stand,tag=block,tag=parent_glow]
team join yellow @e[type=armor_stand,tag=block,scores={edit=4}]
team join yellow @e[type=armor_stand,tag=block,tag=awaiting_parent]
team join gold @e[type=armor_stand,tag=block,scores={edit=9}]
team join red @e[type=armor_stand,tag=block,scores={edit=5}]
team join dark_gray @e[type=armor_stand,tag=block,scores={edit=6}]
team join dark_red @e[type=armor_stand,tag=block,scores={edit=8}]
team join aqua @e[type=armor_stand,tag=block,scores={edit=10..17}]
team join light_purple @e[type=armor_stand,tag=block,scores={edit=23..28}]
team join dark_aqua @e[type=armor_stand,tag=block,scores={edit=45..48}]
team join dark_purple @e[type=armor_stand,tag=block,scores={edit=29..31}]
team join red @e[type=armor_stand,tag=block,scores={edit=32}]
team join dark_purple @e[type=armor_stand,tag=block,scores={edit=49..53}]
team join dark_blue @e[type=armor_stand,tag=block,scores={edit=34..38}]
team join green @e[type=armor_stand,tag=block,scores={edit=18}]
team join red @e[type=armor_stand,tag=block,scores={edit=19}]
team join dark_green @e[type=armor_stand,tag=block,scores={edit=57}]
team join red @e[type=armor_stand,tag=block,scores={edit=58}]
team join dark_blue @e[type=armor_stand,tag=block,scores={edit=55}]

execute as @e[type=armor_stand,tag=!glow] run data merge entity @s {Glowing:0b}
execute as @e[type=armor_stand,tag=glow] run data merge entity @s {Glowing:1b}
execute as @e[type=armor_stand,tag=parent_glow] run data merge entity @s {Glowing:1b}
execute as @e[type=armor_stand,tag=awaiting_parent] run data merge entity @s {Glowing:1b}

# inventory

## default
execute as @a unless score @s edit matches 1.. run replaceitem entity @s hotbar.8 warped_fungus_on_a_stick{display:{Name:"{\"text\":\"Edit Mode\",\"color\":\"blue\",\"italic\":false}"},CustomModelData:-1}

## home edit
execute as @a[scores={edit=1}] run replaceitem entity @s hotbar.0 bee_spawn_egg{display:{Name:"{\"text\":\"New Block\",\"color\":\"blue\",\"italic\":false}"},CustomModelData:1,EntityTag:{id:"armor_stand",Small:1b,Invisible:1b,NoGravity:1b,ShowArms:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_block",Count:1b}],Pose:{RightArm:[0.0f,0.0f,-30.0f],LeftArm:[0.0f,0.0f,30.0f],RightLeg:[180.0f,0.0f,0.0f],LeftLeg:[180.0f,0.0f,0.0f]},DisabledSlots:4079166,Tags:["new_block"]}}
execute as @a[scores={edit=1}] run replaceitem entity @s hotbar.1 warped_fungus_on_a_stick{display:{Name:"{\"text\":\"Transform [+]\",\"color\":\"aqua\",\"italic\":false}"},CustomModelData:2}
execute as @a[scores={edit=1}] run replaceitem entity @s hotbar.2 warped_fungus_on_a_stick{display:{Name:"{\"text\":\"Animate [+]\",\"color\":\"light_purple\",\"italic\":false}"},CustomModelData:3}
execute as @a[scores={edit=1}] run replaceitem entity @s hotbar.3 warped_fungus_on_a_stick{display:{Name:"{\"text\":\"Options [+]\",\"color\":\"blue\",\"italic\":false}"},CustomModelData:54}
execute as @a[scores={edit=1}] run replaceitem entity @s hotbar.4 air
execute as @a[scores={edit=1}] run replaceitem entity @s hotbar.5 air
execute as @a[scores={edit=1}] run replaceitem entity @s hotbar.6 air
execute as @a[scores={edit=1}] run replaceitem entity @s hotbar.7 air
execute as @a[scores={edit=1}] run replaceitem entity @s hotbar.8 warped_fungus_on_a_stick{display:{Name:"{\"text\":\"Exit\",\"color\":\"red\",\"italic\":false}"},CustomModelData:1}

## copy
execute as @a[scores={edit=2}] run replaceitem entity @s hotbar.0 warped_fungus_on_a_stick{display:{Name:"{\"text\":\"Paste\",\"color\":\"#232393\",\"italic\":false}"},CustomModelData:56}
execute as @a[scores={edit=2}] run replaceitem entity @s hotbar.1 air
execute as @a[scores={edit=2}] run replaceitem entity @s hotbar.2 air
execute as @a[scores={edit=2}] run replaceitem entity @s hotbar.3 air
execute as @a[scores={edit=2}] run replaceitem entity @s hotbar.4 air
execute as @a[scores={edit=2}] run replaceitem entity @s hotbar.5 air
execute as @a[scores={edit=2}] run replaceitem entity @s hotbar.6 air
execute as @a[scores={edit=2}] run replaceitem entity @s hotbar.7 air
execute as @a[scores={edit=2}] run replaceitem entity @s hotbar.8 warped_fungus_on_a_stick{display:{Name:"{\"text\":\"Cancel\",\"color\":\"red\",\"italic\":false}"},CustomModelData:1}

## add parent
execute as @a[scores={edit=3}] run replaceitem entity @s hotbar.0 warped_fungus_on_a_stick{display:{Name:"{\"text\":\"Select Parent\",\"color\":\"gold\",\"italic\":false}"},CustomModelData:9}
execute as @a[scores={edit=3}] run replaceitem entity @s hotbar.1 air
execute as @a[scores={edit=3}] run replaceitem entity @s hotbar.2 air
execute as @a[scores={edit=3}] run replaceitem entity @s hotbar.3 air
execute as @a[scores={edit=3}] run replaceitem entity @s hotbar.4 air
execute as @a[scores={edit=3}] run replaceitem entity @s hotbar.5 air
execute as @a[scores={edit=3}] run replaceitem entity @s hotbar.6 air
execute as @a[scores={edit=3}] run replaceitem entity @s hotbar.7 air
execute as @a[scores={edit=3}] run replaceitem entity @s hotbar.8 warped_fungus_on_a_stick{display:{Name:"{\"text\":\"Cancel\",\"color\":\"red\",\"italic\":false}"},CustomModelData:1}

## transform
execute as @a[scores={edit=4}] run replaceitem entity @s hotbar.0 warped_fungus_on_a_stick{display:{Name:"{\"text\":\"Move [+]\",\"color\":\"aqua\",\"italic\":false}"},CustomModelData:10}
execute as @a[scores={edit=4}] run replaceitem entity @s hotbar.1 warped_fungus_on_a_stick{display:{Name:"{\"text\":\"Rotate [+]\",\"color\":\"aqua\",\"italic\":false}"},CustomModelData:11}
execute as @a[scores={edit=4}] run replaceitem entity @s hotbar.2 air
execute as @a[scores={edit=4}] run replaceitem entity @s hotbar.3 air
execute as @a[scores={edit=4}] run replaceitem entity @s hotbar.4 air
execute as @a[scores={edit=4}] run replaceitem entity @s hotbar.5 air
execute as @a[scores={edit=4}] run replaceitem entity @s hotbar.6 air
execute as @a[scores={edit=4}] run replaceitem entity @s hotbar.7 air
execute as @a[scores={edit=4}] run replaceitem entity @s hotbar.8 warped_fungus_on_a_stick{display:{Name:"{\"text\":\"Back\",\"color\":\"red\",\"italic\":false}"},CustomModelData:1}

## animate
execute as @a[scores={edit=5}] run replaceitem entity @s hotbar.0 warped_fungus_on_a_stick{display:{Name:"{\"text\":\"Play\",\"color\":\"green\",\"italic\":false}"},CustomModelData:18}
execute as @a[scores={edit=6}] run replaceitem entity @s hotbar.0 warped_fungus_on_a_stick{display:{Name:"{\"text\":\"Stop\",\"color\":\"red\",\"italic\":false}"},CustomModelData:19}
execute as @a[scores={edit=5..6}] run replaceitem entity @s hotbar.1 warped_fungus_on_a_stick{display:{Name:"{\"text\":\"Timeline [+]\",\"color\":\"light_purple\",\"italic\":false}"},CustomModelData:20}
execute as @a[scores={edit=5..6}] run replaceitem entity @s hotbar.2 warped_fungus_on_a_stick{display:{Name:"{\"text\":\"Transform [+]\",\"color\":\"aqua\",\"italic\":false}"},CustomModelData:2}
execute as @a[scores={edit=5..6}] run replaceitem entity @s hotbar.3 warped_fungus_on_a_stick{display:{Name:"{\"text\":\"Keyframe [+]\",\"color\":\"#663bb3\",\"italic\":false}"},CustomModelData:21}
execute as @a[scores={edit=5..6}] run replaceitem entity @s hotbar.4 air
execute as @a[scores={edit=5..6}] run replaceitem entity @s hotbar.5 air
execute as @a[scores={edit=5..6}] run replaceitem entity @s hotbar.6 air
execute as @a[scores={edit=5..6}] run replaceitem entity @s hotbar.7 warped_fungus_on_a_stick{display:{Name:"{\"text\":\"Stop All Animations\",\"color\":\"red\",\"italic\":false}"},CustomModelData:53}
execute as @a[scores={edit=5..6}] run replaceitem entity @s hotbar.8 warped_fungus_on_a_stick{display:{Name:"{\"text\":\"Back\",\"color\":\"red\",\"italic\":false}"},CustomModelData:1}

## timeline
execute as @a[scores={edit=7}] run replaceitem entity @s hotbar.0 warped_fungus_on_a_stick{display:{Name:"{\"text\":\"Animation Length [+]\",\"color\":\"dark_aqua\",\"italic\":false}"},CustomModelData:22}
execute as @a[scores={edit=7}] run replaceitem entity @s hotbar.1 warped_fungus_on_a_stick{display:{Name:"{\"text\":\"Move +0.25 seconds\",\"color\":\"light_purple\",\"italic\":false}"},CustomModelData:23}
execute as @a[scores={edit=7}] run replaceitem entity @s hotbar.2 warped_fungus_on_a_stick{display:{Name:"{\"text\":\"Move -0.25 seconds\",\"color\":\"light_purple\",\"italic\":false}"},CustomModelData:24}
execute as @a[scores={edit=7}] run replaceitem entity @s hotbar.3 warped_fungus_on_a_stick{display:{Name:"{\"text\":\"Move +0.05 seconds\",\"color\":\"light_purple\",\"italic\":false}"},CustomModelData:25}
execute as @a[scores={edit=7}] run replaceitem entity @s hotbar.4 warped_fungus_on_a_stick{display:{Name:"{\"text\":\"Move -0.05 seconds\",\"color\":\"light_purple\",\"italic\":false}"},CustomModelData:26}
execute as @a[scores={edit=7}] run replaceitem entity @s hotbar.5 warped_fungus_on_a_stick{display:{Name:"{\"text\":\"Jump to Beginning\",\"color\":\"light_purple\",\"italic\":false}"},CustomModelData:27}
execute as @a[scores={edit=7}] run replaceitem entity @s hotbar.6 warped_fungus_on_a_stick{display:{Name:"{\"text\":\"Jump to End\",\"color\":\"light_purple\",\"italic\":false}"},CustomModelData:28}
execute as @a[scores={edit=7}] run replaceitem entity @s hotbar.7 air
execute as @a[scores={edit=7}] run replaceitem entity @s hotbar.8 warped_fungus_on_a_stick{display:{Name:"{\"text\":\"Back\",\"color\":\"red\",\"italic\":false}"},CustomModelData:1}

## animation length
execute as @a[scores={edit=8}] run replaceitem entity @s hotbar.0 warped_fungus_on_a_stick{display:{Name:"{\"text\":\"Add 0.25 seconds\",\"color\":\"dark_aqua\",\"italic\":false}"},CustomModelData:45}
execute as @a[scores={edit=8}] run replaceitem entity @s hotbar.1 warped_fungus_on_a_stick{display:{Name:"{\"text\":\"Subtract 0.25 seconds\",\"color\":\"dark_aqua\",\"italic\":false}"},CustomModelData:46}
execute as @a[scores={edit=8}] run replaceitem entity @s hotbar.2 warped_fungus_on_a_stick{display:{Name:"{\"text\":\"Add 0.05 seconds\",\"color\":\"dark_aqua\",\"italic\":false}"},CustomModelData:47}
execute as @a[scores={edit=8}] run replaceitem entity @s hotbar.3 warped_fungus_on_a_stick{display:{Name:"{\"text\":\"Subtract 0.05 seconds\",\"color\":\"dark_aqua\",\"italic\":false}"},CustomModelData:48}
execute as @a[scores={edit=8}] run replaceitem entity @s hotbar.4 air
execute as @a[scores={edit=8}] run replaceitem entity @s hotbar.5 air
execute as @a[scores={edit=8}] run replaceitem entity @s hotbar.6 air
execute as @a[scores={edit=8}] run replaceitem entity @s hotbar.7 air
execute as @a[scores={edit=8}] run replaceitem entity @s hotbar.8 warped_fungus_on_a_stick{display:{Name:"{\"text\":\"Back\",\"color\":\"red\",\"italic\":false}"},CustomModelData:1}

## transform from animate
execute as @a[scores={edit=9}] run replaceitem entity @s hotbar.0 warped_fungus_on_a_stick{display:{Name:"{\"text\":\"Move [+]\",\"color\":\"aqua\",\"italic\":false}"},CustomModelData:10}
execute as @a[scores={edit=9}] run replaceitem entity @s hotbar.1 warped_fungus_on_a_stick{display:{Name:"{\"text\":\"Rotate [+]\",\"color\":\"aqua\",\"italic\":false}"},CustomModelData:11}
execute as @a[scores={edit=9}] run replaceitem entity @s hotbar.2 air
execute as @a[scores={edit=9}] run replaceitem entity @s hotbar.3 air
execute as @a[scores={edit=9}] run replaceitem entity @s hotbar.4 air
execute as @a[scores={edit=9}] run replaceitem entity @s hotbar.5 air
execute as @a[scores={edit=9}] run replaceitem entity @s hotbar.6 air
execute as @a[scores={edit=9}] run replaceitem entity @s hotbar.7 air
execute as @a[scores={edit=9}] run replaceitem entity @s hotbar.8 warped_fungus_on_a_stick{display:{Name:"{\"text\":\"Back\",\"color\":\"red\",\"italic\":false}"},CustomModelData:1}

## keyframe
execute as @a[scores={edit=10}] run replaceitem entity @s hotbar.0 warped_fungus_on_a_stick{display:{Name:"{\"text\":\"Keyframe Position\",\"color\":\"#663bb3\",\"italic\":false}"},CustomModelData:29}
execute as @a[scores={edit=10}] run replaceitem entity @s hotbar.1 warped_fungus_on_a_stick{display:{Name:"{\"text\":\"Keyframe Rotation\",\"color\":\"#663bb3\",\"italic\":false}"},CustomModelData:30}
execute as @a[scores={edit=10}] run replaceitem entity @s hotbar.2 warped_fungus_on_a_stick{display:{Name:"{\"text\":\"Keyframe Position and Rotation\",\"color\":\"#663bb3\",\"italic\":false}"},CustomModelData:31}
execute as @a[scores={edit=10}] run replaceitem entity @s hotbar.3 air
execute as @a[scores={edit=11}] run replaceitem entity @s hotbar.0 warped_fungus_on_a_stick{display:{Name:"{\"text\":\"Remove Keyframe\",\"color\":\"red\",\"italic\":false}"},CustomModelData:32}
execute as @a[scores={edit=11}] run replaceitem entity @s hotbar.1 warped_fungus_on_a_stick{display:{Name:"{\"text\":\"Move Keyframe +0.05 seconds\",\"color\":\"#663bb3\",\"italic\":false}"},CustomModelData:49}
execute as @a[scores={edit=11}] run replaceitem entity @s hotbar.2 warped_fungus_on_a_stick{display:{Name:"{\"text\":\"Move Keyframe -0.05 seconds\",\"color\":\"#663bb3\",\"italic\":false}"},CustomModelData:50}
execute as @a[scores={edit=11}] run replaceitem entity @s hotbar.3 warped_fungus_on_a_stick{display:{Name:"{\"text\":\"Transition Type [+]\",\"color\":\"#232393\",\"italic\":false}"},CustomModelData:33}
execute as @a[scores={edit=10..11}] run replaceitem entity @s hotbar.4 air
execute as @a[scores={edit=10..11}] run replaceitem entity @s hotbar.5 air
execute as @a[scores={edit=10..11}] run replaceitem entity @s hotbar.6 warped_fungus_on_a_stick{display:{Name:"{\"text\":\"Jump to Previous Keyframe\",\"color\":\"#663bb3\",\"italic\":false}"},CustomModelData:51}
execute as @a[scores={edit=10..11}] run replaceitem entity @s hotbar.7 warped_fungus_on_a_stick{display:{Name:"{\"text\":\"Jump to Next Keyframe\",\"color\":\"#663bb3\",\"italic\":false}"},CustomModelData:52}
execute as @a[scores={edit=10..11}] run replaceitem entity @s hotbar.8 warped_fungus_on_a_stick{display:{Name:"{\"text\":\"Back\",\"color\":\"red\",\"italic\":false}"},CustomModelData:1}

## transition type
execute as @a[scores={edit=12}] run replaceitem entity @s hotbar.0 warped_fungus_on_a_stick{display:{Name:"{\"text\":\"Linear\",\"color\":\"#232393\",\"italic\":false}"},CustomModelData:34}
execute as @a[scores={edit=12}] run replaceitem entity @s hotbar.1 warped_fungus_on_a_stick{display:{Name:"{\"text\":\"Ease In\",\"color\":\"#232393\",\"italic\":false}"},CustomModelData:35}
execute as @a[scores={edit=12}] run replaceitem entity @s hotbar.2 warped_fungus_on_a_stick{display:{Name:"{\"text\":\"Ease Out\",\"color\":\"#232393\",\"italic\":false}"},CustomModelData:36}
execute as @a[scores={edit=12}] run replaceitem entity @s hotbar.3 warped_fungus_on_a_stick{display:{Name:"{\"text\":\"Ease In and Out\",\"color\":\"#232393\",\"italic\":false}"},CustomModelData:37}
execute as @a[scores={edit=12}] run replaceitem entity @s hotbar.4 warped_fungus_on_a_stick{display:{Name:"{\"text\":\"Constant\",\"color\":\"#232393\",\"italic\":false}"},CustomModelData:38}
execute as @a[scores={edit=12}] run replaceitem entity @s hotbar.5 air
execute as @a[scores={edit=12}] run replaceitem entity @s hotbar.6 air
execute as @a[scores={edit=12}] run replaceitem entity @s hotbar.7 air
execute as @a[scores={edit=12}] run replaceitem entity @s hotbar.8 warped_fungus_on_a_stick{display:{Name:"{\"text\":\"Back\",\"color\":\"red\",\"italic\":false}"},CustomModelData:1}

## move
execute as @a[scores={edit=13}] run replaceitem entity @s hotbar.0 warped_fungus_on_a_stick{display:{Name:"{\"text\":\"Move Forwards 2 blocks\",\"color\":\"aqua\",\"italic\":false}"},CustomModelData:12}
execute as @a[scores={edit=13}] run replaceitem entity @s hotbar.1 warped_fungus_on_a_stick{display:{Name:"{\"text\":\"Move Backwards 2 blocks\",\"color\":\"aqua\",\"italic\":false}"},CustomModelData:13}
execute as @a[scores={edit=13}] run replaceitem entity @s hotbar.2 warped_fungus_on_a_stick{display:{Name:"{\"text\":\"Move Forwards 1/2 blocks\",\"color\":\"aqua\",\"italic\":false}"},CustomModelData:14}
execute as @a[scores={edit=13}] run replaceitem entity @s hotbar.3 warped_fungus_on_a_stick{display:{Name:"{\"text\":\"Move Backwards 1/2 blocks\",\"color\":\"aqua\",\"italic\":false}"},CustomModelData:15}
execute as @a[scores={edit=13}] run replaceitem entity @s hotbar.4 warped_fungus_on_a_stick{display:{Name:"{\"text\":\"Move Forwards 1/16 blocks\",\"color\":\"aqua\",\"italic\":false}"},CustomModelData:16}
execute as @a[scores={edit=13}] run replaceitem entity @s hotbar.5 warped_fungus_on_a_stick{display:{Name:"{\"text\":\"Move Backwards 1/16 blocks\",\"color\":\"aqua\",\"italic\":false}"},CustomModelData:17}
execute as @a[scores={edit=13}] run replaceitem entity @s hotbar.6 air
execute as @a[scores={edit=13}] run replaceitem entity @s hotbar.7 air
execute as @a[scores={edit=13}] run replaceitem entity @s hotbar.8 warped_fungus_on_a_stick{display:{Name:"{\"text\":\"Back\",\"color\":\"red\",\"italic\":false}"},CustomModelData:1}

## rotate
execute as @a[scores={edit=14}] run replaceitem entity @s hotbar.0 warped_fungus_on_a_stick{display:{Name:"{\"text\":\"Rotate 90° Clockwise\",\"color\":\"aqua\",\"italic\":false}"},CustomModelData:39}
execute as @a[scores={edit=14}] run replaceitem entity @s hotbar.1 warped_fungus_on_a_stick{display:{Name:"{\"text\":\"Rotate 90° Counter-clockwise\",\"color\":\"aqua\",\"italic\":false}"},CustomModelData:40}
execute as @a[scores={edit=14}] run replaceitem entity @s hotbar.2 warped_fungus_on_a_stick{display:{Name:"{\"text\":\"Rotate 15° Clockwise\",\"color\":\"aqua\",\"italic\":false}"},CustomModelData:41}
execute as @a[scores={edit=14}] run replaceitem entity @s hotbar.3 warped_fungus_on_a_stick{display:{Name:"{\"text\":\"Rotate 15° Counter-clockwise\",\"color\":\"aqua\",\"italic\":false}"},CustomModelData:42}
execute as @a[scores={edit=14}] run replaceitem entity @s hotbar.4 warped_fungus_on_a_stick{display:{Name:"{\"text\":\"Rotate 2.5° Clockwise\",\"color\":\"aqua\",\"italic\":false}"},CustomModelData:43}
execute as @a[scores={edit=14}] run replaceitem entity @s hotbar.5 warped_fungus_on_a_stick{display:{Name:"{\"text\":\"Rotate 2.5° Counter-clockwise\",\"color\":\"aqua\",\"italic\":false}"},CustomModelData:44}
execute as @a[scores={edit=14}] run replaceitem entity @s hotbar.6 air
execute as @a[scores={edit=14}] run replaceitem entity @s hotbar.7 air
execute as @a[scores={edit=14}] run replaceitem entity @s hotbar.8 warped_fungus_on_a_stick{display:{Name:"{\"text\":\"Back\",\"color\":\"red\",\"italic\":false}"},CustomModelData:1}

## move from animate
execute as @a[scores={edit=15}] run replaceitem entity @s hotbar.0 warped_fungus_on_a_stick{display:{Name:"{\"text\":\"Move Forwards 2 blocks\",\"color\":\"aqua\",\"italic\":false}"},CustomModelData:12}
execute as @a[scores={edit=15}] run replaceitem entity @s hotbar.1 warped_fungus_on_a_stick{display:{Name:"{\"text\":\"Move Backwards 2 blocks\",\"color\":\"aqua\",\"italic\":false}"},CustomModelData:13}
execute as @a[scores={edit=15}] run replaceitem entity @s hotbar.2 warped_fungus_on_a_stick{display:{Name:"{\"text\":\"Move Forwards 1/2 blocks\",\"color\":\"aqua\",\"italic\":false}"},CustomModelData:14}
execute as @a[scores={edit=15}] run replaceitem entity @s hotbar.3 warped_fungus_on_a_stick{display:{Name:"{\"text\":\"Move Backwards 1/2 blocks\",\"color\":\"aqua\",\"italic\":false}"},CustomModelData:15}
execute as @a[scores={edit=15}] run replaceitem entity @s hotbar.4 warped_fungus_on_a_stick{display:{Name:"{\"text\":\"Move Forwards 1/16 blocks\",\"color\":\"aqua\",\"italic\":false}"},CustomModelData:16}
execute as @a[scores={edit=15}] run replaceitem entity @s hotbar.5 warped_fungus_on_a_stick{display:{Name:"{\"text\":\"Move Backwards 1/16 blocks\",\"color\":\"aqua\",\"italic\":false}"},CustomModelData:17}
execute as @a[scores={edit=15}] run replaceitem entity @s hotbar.6 air
execute as @a[scores={edit=15}] run replaceitem entity @s hotbar.7 air
execute as @a[scores={edit=15}] run replaceitem entity @s hotbar.8 warped_fungus_on_a_stick{display:{Name:"{\"text\":\"Back\",\"color\":\"red\",\"italic\":false}"},CustomModelData:1}

## rotate from animate
execute as @a[scores={edit=16}] run replaceitem entity @s hotbar.0 warped_fungus_on_a_stick{display:{Name:"{\"text\":\"Rotate 90° Clockwise\",\"color\":\"aqua\",\"italic\":false}"},CustomModelData:39}
execute as @a[scores={edit=16}] run replaceitem entity @s hotbar.1 warped_fungus_on_a_stick{display:{Name:"{\"text\":\"Rotate 90° Counter-clockwise\",\"color\":\"aqua\",\"italic\":false}"},CustomModelData:40}
execute as @a[scores={edit=16}] run replaceitem entity @s hotbar.2 warped_fungus_on_a_stick{display:{Name:"{\"text\":\"Rotate 15° Clockwise\",\"color\":\"aqua\",\"italic\":false}"},CustomModelData:41}
execute as @a[scores={edit=16}] run replaceitem entity @s hotbar.3 warped_fungus_on_a_stick{display:{Name:"{\"text\":\"Rotate 15° Counter-clockwise\",\"color\":\"aqua\",\"italic\":false}"},CustomModelData:42}
execute as @a[scores={edit=16}] run replaceitem entity @s hotbar.4 warped_fungus_on_a_stick{display:{Name:"{\"text\":\"Rotate 2.5° Clockwise\",\"color\":\"aqua\",\"italic\":false}"},CustomModelData:43}
execute as @a[scores={edit=16}] run replaceitem entity @s hotbar.5 warped_fungus_on_a_stick{display:{Name:"{\"text\":\"Rotate 2.5° Counter-clockwise\",\"color\":\"aqua\",\"italic\":false}"},CustomModelData:44}
execute as @a[scores={edit=16}] run replaceitem entity @s hotbar.6 air
execute as @a[scores={edit=16}] run replaceitem entity @s hotbar.7 air
execute as @a[scores={edit=16}] run replaceitem entity @s hotbar.8 warped_fungus_on_a_stick{display:{Name:"{\"text\":\"Back\",\"color\":\"red\",\"italic\":false}"},CustomModelData:1}

## options
execute as @a[scores={edit=17..18}] run replaceitem entity @s hotbar.0 warped_fungus_on_a_stick{display:{Name:"{\"text\":\"Add Parent\",\"color\":\"yellow\",\"italic\":false}"},CustomModelData:4}
execute as @a[scores={edit=19..20}] run replaceitem entity @s hotbar.0 warped_fungus_on_a_stick{display:{Name:"{\"text\":\"Remove Parent\",\"color\":\"red\",\"italic\":false}"},CustomModelData:5}
execute as @a[scores={edit=17}] run replaceitem entity @s hotbar.1 warped_fungus_on_a_stick{display:{Name:"{\"text\":\"Add Collision Box\",\"color\":\"dark_green\",\"italic\":false}"},CustomModelData:57}
execute as @a[scores={edit=18}] run replaceitem entity @s hotbar.1 warped_fungus_on_a_stick{display:{Name:"{\"text\":\"Remove Collision Box\",\"color\":\"red\",\"italic\":false}"},CustomModelData:58}
execute as @a[scores={edit=19}] run replaceitem entity @s hotbar.1 warped_fungus_on_a_stick{display:{Name:"{\"text\":\"Add Collision Box\",\"color\":\"dark_green\",\"italic\":false}"},CustomModelData:57}
execute as @a[scores={edit=20}] run replaceitem entity @s hotbar.1 warped_fungus_on_a_stick{display:{Name:"{\"text\":\"Remove Collision Box\",\"color\":\"red\",\"italic\":false}"},CustomModelData:58}
execute as @a[scores={edit=17..20}] run replaceitem entity @s hotbar.2 warped_fungus_on_a_stick{display:{Name:"{\"text\":\"Copy\",\"color\":\"#232393\",\"italic\":false}"},CustomModelData:55}
execute as @a[scores={edit=17..20}] run replaceitem entity @s hotbar.3 warped_fungus_on_a_stick{display:{Name:"{\"text\":\"Hide\",\"color\":\"dark_gray\",\"italic\":false}"},CustomModelData:6}
execute as @a[scores={edit=17..20}] run replaceitem entity @s hotbar.4 warped_fungus_on_a_stick{display:{Name:"{\"text\":\"Unhide All\",\"color\":\"gray\",\"italic\":false}"},CustomModelData:7}
execute as @a[scores={edit=17..20}] run replaceitem entity @s hotbar.5 warped_fungus_on_a_stick{display:{Name:"{\"text\":\"Delete\",\"color\":\"dark_red\",\"italic\":false}"},CustomModelData:8}
execute as @a[scores={edit=17..20}] run replaceitem entity @s hotbar.6 warped_fungus_on_a_stick{display:{Name:"{\"text\":\"Delete Hierarchy\",\"color\":\"dark_red\",\"italic\":false}"},CustomModelData:59}
execute as @a[scores={edit=17..20}] run replaceitem entity @s hotbar.7 air
execute as @a[scores={edit=17..20}] run replaceitem entity @s hotbar.8 warped_fungus_on_a_stick{display:{Name:"{\"text\":\"Back\",\"color\":\"red\",\"italic\":false}"},CustomModelData:1}