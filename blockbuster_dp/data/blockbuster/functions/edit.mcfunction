# action
scoreboard players set @a global 0
scoreboard players set @e[type=armor_stand] edit 0
execute as @a[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick"}}] store result score @s global run data get entity @s SelectedItem.tag.CustomModelData
execute as @e[type=armor_stand,tag=hitbox] store success score @s has_hand_item run data get entity @s HandItems[0].id

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
execute as @e[type=armor_stand,tag=hitbox] if score @s parent_uuid_0 = @e[type=armor_stand,tag=last_selected,tag=!selected,limit=1] self_uuid_0 if score @s parent_uuid_1 = @e[type=armor_stand,tag=last_selected,tag=!selected,limit=1] self_uuid_1 if score @s parent_uuid_2 = @e[type=armor_stand,tag=last_selected,tag=!selected,limit=1] self_uuid_2 if score @s parent_uuid_3 = @e[type=armor_stand,tag=last_selected,tag=!selected,limit=1] self_uuid_3 run kill @s

scoreboard players set @e[type=armor_stand] temp 0
execute if entity @e[type=armor_stand,tag=hitbox] run function blockbuster:misc/delete_hitbox

## glow color
execute as @e[type=armor_stand,tag=block] run function blockbuster:misc/glow
execute as @e[type=armor_stand,tag=locked] run function blockbuster:misc/glow

# inventory
execute as @a[tag=blockbuster] unless score @s edit matches 1.. run replaceitem entity @s hotbar.8 warped_fungus_on_a_stick{display:{Name:"{\"text\":\"Edit Mode\",\"color\":\"blue\",\"italic\":false}"},CustomModelData:-1}
execute as @a[scores={edit=1}] run function blockbuster:inventory/home
execute as @a[scores={edit=2}] run function blockbuster:inventory/copy
execute as @a[scores={edit=3}] run function blockbuster:inventory/parent
execute as @a[scores={edit=4}] run function blockbuster:inventory/transform
execute as @a[scores={edit=5..6}] run function blockbuster:inventory/animate
execute as @a[scores={edit=7}] run function blockbuster:inventory/timeline
execute as @a[scores={edit=8}] run function blockbuster:inventory/anim_length
execute as @a[scores={edit=9}] run function blockbuster:inventory/transform_from_anim
execute as @a[scores={edit=10..11}] run function blockbuster:inventory/keyframe
execute as @a[scores={edit=12}] run function blockbuster:inventory/transition_type
execute as @a[scores={edit=13}] run function blockbuster:inventory/move
execute as @a[scores={edit=14}] run function blockbuster:inventory/rotate
execute as @a[scores={edit=15}] run function blockbuster:inventory/move_from_anim
execute as @a[scores={edit=16}] run function blockbuster:inventory/rotate_from_anim
execute as @a[scores={edit=17..20}] run function blockbuster:inventory/options
