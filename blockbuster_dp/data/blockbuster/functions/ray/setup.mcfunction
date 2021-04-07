execute as @a[scores={edit=1..,temp=0},limit=1] run scoreboard players set @s temp 1

# summon armor stand
execute as @a[scores={temp=1}] at @s run summon armor_stand ~ ~1.625 ~ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["ray"]}
execute as @a[scores={temp=1}] run data modify entity @e[type=armor_stand,tag=ray,limit=1] Rotation set from entity @s Rotation

# state transitions
execute as @a[nbt={Inventory:[{Slot:100b,id:"minecraft:netherite_boots"}]}] store result score @s global run data get entity @s Inventory[{Slot:100b}].tag.CustomModelData
execute as @e[type=armor_stand,tag=block,tag=!hidden,nbt={ArmorItems:[{id:"minecraft:netherite_boots"}]}] at @s store result score @p global run data get entity @s ArmorItems[0].tag.CustomModelData

## enter edit mode
execute as @a[scores={global=-1}] run scoreboard players set @s edit 1

## exit
execute as @a[scores={edit=1..2,global=1,temp=1}] run replaceitem entity @s hotbar.0 air
execute as @a[scores={edit=1..2,global=1,temp=1}] run replaceitem entity @s hotbar.1 air
execute as @a[scores={edit=1..2,global=1,temp=1}] run replaceitem entity @s hotbar.2 air
execute as @a[scores={edit=1..2,global=1,temp=1}] run replaceitem entity @s hotbar.3 air
execute as @a[scores={edit=1..2,global=1,temp=1}] run replaceitem entity @s hotbar.4 air
execute as @a[scores={edit=1..2,global=1,temp=1}] run replaceitem entity @s hotbar.5 air
execute as @a[scores={edit=1..2,global=1,temp=1}] run replaceitem entity @s hotbar.6 air
execute as @a[scores={edit=1..2,global=1,temp=1}] run replaceitem entity @s hotbar.7 air
execute as @a[scores={edit=1..2,global=1,temp=1}] run replaceitem entity @s hotbar.8 air
execute as @a[scores={edit=1..2,global=1,temp=1}] run scoreboard players set @s edit 0

## home
execute as @a[scores={edit=1..2,global=2,temp=1}] run scoreboard players set @s edit 4
execute as @a[scores={edit=1..2,global=3,temp=1}] run scoreboard players set @s edit 5
execute as @a[scores={edit=1..2,global=4,temp=1}] run scoreboard players set @s edit 3

## parent
execute as @a[scores={edit=3,global=9,temp=1}] run scoreboard players set @s edit 1
execute as @a[scores={edit=3,global=1,temp=1}] as @e[type=armor_stand,tag=block] if score @s self_uuid_0 = @p[scores={temp=1}] parent_uuid_0 if score @s self_uuid_1 = @p[scores={temp=1}] parent_uuid_1 if score @s self_uuid_2 = @p[scores={temp=1}] parent_uuid_2 if score @s self_uuid_3 = @p[scores={temp=1}] parent_uuid_3 run tag @s remove awaiting_parent
execute as @a[scores={edit=3,global=1,temp=1}] run scoreboard players set @s edit 1

## transform
execute as @a[scores={edit=4,global=10,temp=1}] run scoreboard players set @s edit 13
execute as @a[scores={edit=4,global=11,temp=1}] run scoreboard players set @s edit 14
execute as @a[scores={edit=4,global=1,temp=1}] run scoreboard players set @s edit 1

## animate
execute as @a[scores={edit=5..6,global=20,temp=1}] run scoreboard players set @s edit 7
execute as @a[scores={edit=5..6,global=2,temp=1}] run scoreboard players set @s edit 9
execute as @a[scores={edit=5..6,global=21,temp=1}] run scoreboard players set @s edit 10
execute as @a[scores={edit=5..6,global=1,temp=1}] run scoreboard players set @s edit 1

## timeline
execute as @a[scores={edit=7,global=22,temp=1}] run scoreboard players set @s edit 8
execute as @a[scores={edit=7,global=1,temp=1}] run scoreboard players set @s edit 5

## animation length
execute as @a[scores={edit=8,global=1,temp=1}] run scoreboard players set @s edit 7

## transform from animate
execute as @a[scores={edit=9,global=10,temp=1}] run scoreboard players set @s edit 15
execute as @a[scores={edit=9,global=11,temp=1}] run scoreboard players set @s edit 16
execute as @a[scores={edit=9,global=1,temp=1}] run scoreboard players set @s edit 5

## keyframe
execute as @a[scores={edit=11,global=33,temp=1}] run scoreboard players set @s edit 12
execute as @a[scores={edit=10..11,global=1,temp=1}] run scoreboard players set @s edit 5

## transitions
execute as @a[scores={edit=12,global=1,temp=1}] run scoreboard players set @s edit 10

## move
execute as @a[scores={edit=13,global=1,temp=1}] run scoreboard players set @s edit 4

## rotate
execute as @a[scores={edit=14,global=1,temp=1}] run scoreboard players set @s edit 4

## move from animate
execute as @a[scores={edit=15,global=1,temp=1}] run scoreboard players set @s edit 9

## rotate from animate
execute as @a[scores={edit=16,global=1,temp=1}] run scoreboard players set @s edit 9


# send data to ray
execute as @a[scores={temp=1},nbt={SelectedItem:{id:"minecraft:netherite_boots"}}] store result score @e[type=armor_stand,tag=ray] edit run data get entity @s SelectedItem.tag.CustomModelData
execute as @e[type=armor_stand,tag=block,tag=!hidden,nbt={ArmorItems:[{id:"minecraft:netherite_boots"}]}] run tag @e[type=armor_stand,tag=ray] add execute
execute if entity @a[scores={temp=1},nbt={Inventory:[{Slot:100b,id:"minecraft:netherite_boots"}]}] run tag @e[type=armor_stand,tag=ray] add execute
function blockbuster:ray/cast
replaceitem entity @a[scores={temp=1}] armor.feet air

# repeat
scoreboard players set @a[scores={temp=1}] temp 2
execute if entity @a[scores={edit=1..,temp=0}] run function blockbuster:ray/setup
scoreboard players set @a global 0
scoreboard players set @a temp 0