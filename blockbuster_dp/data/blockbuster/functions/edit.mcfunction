# action
scoreboard players set @a global 0
scoreboard players set @e[type=armor_stand] edit 0
execute as @a[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick"}}] store result score @s global run data get entity @s SelectedItem.tag.CustomModelData
execute as @e[type=armor_stand,tag=hitbox] store success score @s has_hand_item run data get entity @s HandItems[0].id

execute as @e[type=armor_stand,tag=block,nbt={HandItems:[{id:"minecraft:warped_fungus_on_a_stick"}]}] at @s run scoreboard players set @p click 1
execute as @e[type=armor_stand,tag=block,nbt={HandItems:[{id:"minecraft:warped_fungus_on_a_stick"}]}] at @s store result score @p global run data get entity @s HandItems[0].tag.CustomModelData
execute as @e[type=armor_stand,tag=block] run data merge entity @s {HandItems:[{},{}]}

execute as @e[type=armor_stand,tag=locked,nbt={HandItems:[{id:"minecraft:warped_fungus_on_a_stick"}]}] at @s run scoreboard players set @p click 1
execute as @e[type=armor_stand,tag=locked,nbt={HandItems:[{id:"minecraft:warped_fungus_on_a_stick"}]}] at @s store result score @p global run data get entity @s HandItems[0].tag.CustomModelData
execute as @e[type=armor_stand,tag=locked] run data merge entity @s {HandItems:[{},{}]}

execute as @e[type=armor_stand,tag=hitbox,scores={has_hand_item=1},limit=1] run function blockbuster:misc/hitbox

# raycasting
tag @e[type=armor_stand] remove glow
tag @e[type=armor_stand] remove parent_glow
tag @e[type=armor_stand,tag=selected] add last_selected
tag @e[type=armor_stand,tag=!selected] remove last_selected
tag @e[type=armor_stand] remove selected
execute as @e[type=armor_stand,tag=hidden] run data modify entity @s ArmorItems[3] set value {}
execute if entity @a[tag=blockbuster] run function blockbuster:ray/main
scoreboard players set @a temp 0

## delete old hitbox stands
execute as @e[type=armor_stand,tag=hitbox] if score @s parent_id = @e[type=armor_stand,tag=last_selected,tag=!selected,limit=1] id run kill @s

scoreboard players set @e[type=armor_stand] temp 0
execute if entity @e[type=armor_stand,tag=hitbox] run function blockbuster:misc/delete_hitbox

## glow color
execute as @e[type=armor_stand,tag=block] run function blockbuster:misc/glow
execute as @e[type=armor_stand,tag=locked] run function blockbuster:misc/glow
