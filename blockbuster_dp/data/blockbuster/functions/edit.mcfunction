# action
scoreboard players set @a global 0
scoreboard players set @e[type=armor_stand,tag=block] edit 0
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
execute as @e[type=armor_stand,tag=block,tag=hidden] run data modify entity @s ArmorItems[3] set value {}
execute if entity @a[tag=blockbuster] run function blockbuster:ray/setup
scoreboard players set @a temp 0

## delete old hitbox stands
scoreboard players set @e[type=armor_stand,tag=block] temp 0
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
team join aqua @e[type=armor_stand,tag=block,scores={edit=39..44}]
team join light_purple @e[type=armor_stand,tag=block,scores={edit=23..28}]
team join dark_aqua @e[type=armor_stand,tag=block,scores={edit=45..48}]
team join dark_purple @e[type=armor_stand,tag=block,scores={edit=29..31}]
team join red @e[type=armor_stand,tag=block,scores={edit=32}]
team join dark_purple @e[type=armor_stand,tag=block,scores={edit=49..52}]
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
execute as @a[tag=blockbuster] unless score @s edit matches 1.. run replaceitem entity @s hotbar.8 warped_fungus_on_a_stick{display:{Name:"{\"text\":\"Edit Mode\",\"color\":\"blue\",\"italic\":false}"},CustomModelData:-1}
execute if entity @a[scores={edit=1}] run function blockbuster:inventory/home
execute if entity @a[scores={edit=2}] run function blockbuster:inventory/copy
execute if entity @a[scores={edit=3}] run function blockbuster:inventory/parent
execute if entity @a[scores={edit=4}] run function blockbuster:inventory/transform
execute if entity @a[scores={edit=5..6}] run function blockbuster:inventory/animate
execute if entity @a[scores={edit=7}] run function blockbuster:inventory/timeline
execute if entity @a[scores={edit=8}] run function blockbuster:inventory/anim_length
execute if entity @a[scores={edit=9}] run function blockbuster:inventory/transform_from_anim
execute if entity @a[scores={edit=10..11}] run function blockbuster:inventory/keyframe
execute if entity @a[scores={edit=12}] run function blockbuster:inventory/transition_type
execute if entity @a[scores={edit=13}] run function blockbuster:inventory/move
execute if entity @a[scores={edit=14}] run function blockbuster:inventory/rotate
execute if entity @a[scores={edit=15}] run function blockbuster:inventory/move_from_anim
execute if entity @a[scores={edit=16}] run function blockbuster:inventory/rotate_from_anim
execute if entity @a[scores={edit=17..20}] run function blockbuster:inventory/options
