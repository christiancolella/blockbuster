execute as @a[scores={edit=1..,temp=0},limit=1] run scoreboard players set @s temp 1

# summon armor stand
execute as @a[scores={temp=1}] at @s run summon armor_stand ~ ~1.625 ~ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["ray"]}
execute as @a[scores={temp=1}] run data modify entity @e[type=armor_stand,tag=ray,limit=1] Rotation set from entity @s Rotation


# state transitions

## enter edit mode
execute as @a if entity @s[nbt={Inventory:[{Slot:100b,id:"minecraft:netherite_boots",tag:{CustomModelData:-1}}]}] run scoreboard players set @s edit 1

## exit
execute as @a if entity @s[scores={edit=1..2,temp=1},nbt={Inventory:[{Slot:100b,id:"minecraft:netherite_boots",tag:{CustomModelData:1}}]}] run replaceitem entity @s hotbar.0 air
execute as @a if entity @s[scores={edit=1..2,temp=1},nbt={Inventory:[{Slot:100b,id:"minecraft:netherite_boots",tag:{CustomModelData:1}}]}] run replaceitem entity @s hotbar.1 air
execute as @a if entity @s[scores={edit=1..2,temp=1},nbt={Inventory:[{Slot:100b,id:"minecraft:netherite_boots",tag:{CustomModelData:1}}]}] run replaceitem entity @s hotbar.2 air
execute as @a if entity @s[scores={edit=1..2,temp=1},nbt={Inventory:[{Slot:100b,id:"minecraft:netherite_boots",tag:{CustomModelData:1}}]}] run replaceitem entity @s hotbar.3 air
execute as @a if entity @s[scores={edit=1..2,temp=1},nbt={Inventory:[{Slot:100b,id:"minecraft:netherite_boots",tag:{CustomModelData:1}}]}] run replaceitem entity @s hotbar.4 air
execute as @a if entity @s[scores={edit=1..2,temp=1},nbt={Inventory:[{Slot:100b,id:"minecraft:netherite_boots",tag:{CustomModelData:1}}]}] run replaceitem entity @s hotbar.5 air
execute as @a if entity @s[scores={edit=1..2,temp=1},nbt={Inventory:[{Slot:100b,id:"minecraft:netherite_boots",tag:{CustomModelData:1}}]}] run replaceitem entity @s hotbar.6 air
execute as @a if entity @s[scores={edit=1..2,temp=1},nbt={Inventory:[{Slot:100b,id:"minecraft:netherite_boots",tag:{CustomModelData:1}}]}] run replaceitem entity @s hotbar.7 air
execute as @a if entity @s[scores={edit=1..2,temp=1},nbt={Inventory:[{Slot:100b,id:"minecraft:netherite_boots",tag:{CustomModelData:1}}]}] run replaceitem entity @s hotbar.8 air
execute as @a if entity @s[scores={edit=1..2,temp=1},nbt={Inventory:[{Slot:100b,id:"minecraft:netherite_boots",tag:{CustomModelData:1}}]}] run scoreboard players set @s edit 0

## back
execute as @a if entity @s[scores={edit=3,temp=1},nbt={Inventory:[{Slot:100b,id:"minecraft:netherite_boots",tag:{CustomModelData:1}}]}] as @e[type=armor_stand,tag=block] if score @s self_uuid_0 = @p[scores={temp=1}] parent_uuid_0 if score @s self_uuid_1 = @p[scores={temp=1}] parent_uuid_1 if score @s self_uuid_2 = @p[scores={temp=1}] parent_uuid_2 if score @s self_uuid_3 = @p[scores={temp=1}] parent_uuid_3 run tag @s remove awaiting_parent
execute as @a if entity @s[scores={edit=3..8,temp=1},nbt={Inventory:[{Slot:100b,id:"minecraft:netherite_boots",tag:{CustomModelData:1}}]}] run scoreboard players set @s edit 1
execute as @a if entity @s[scores={edit=9,temp=1},nbt={Inventory:[{Slot:100b,id:"minecraft:netherite_boots",tag:{CustomModelData:1}}]}] run scoreboard players set @s edit 5
execute as @a if entity @s[scores={edit=11..12,temp=1},nbt={Inventory:[{Slot:100b,id:"minecraft:netherite_boots",tag:{CustomModelData:1}}]}] run scoreboard players set @s edit 5
execute as @a if entity @s[scores={edit=10,temp=1},nbt={Inventory:[{Slot:100b,id:"minecraft:netherite_boots",tag:{CustomModelData:1}}]}] run scoreboard players set @s edit 9

## home
execute as @a if entity @s[scores={edit=1..2,temp=1},nbt={Inventory:[{Slot:100b,id:"minecraft:netherite_boots",tag:{CustomModelData:2}}]}] run scoreboard players set @s edit 4
execute as @a if entity @s[scores={edit=1..2,temp=1},nbt={Inventory:[{Slot:100b,id:"minecraft:netherite_boots",tag:{CustomModelData:3}}]}] run scoreboard players set @s edit 5
execute as @a if entity @s[scores={edit=1..2,temp=1},nbt={Inventory:[{Slot:100b,id:"minecraft:netherite_boots",tag:{CustomModelData:4}}]}] run scoreboard players set @s edit 3

## parent
execute as @a if entity @s[scores={edit=3,temp=1},nbt={Inventory:[{Slot:100b,id:"minecraft:netherite_boots",tag:{CustomModelData:9}}]}] run scoreboard players set @s edit 1

## animate
execute as @a if entity @s[scores={edit=5..8,temp=1},nbt={Inventory:[{Slot:100b,id:"minecraft:netherite_boots",tag:{CustomModelData:20}}]}] run scoreboard players set @s edit 9
execute as @a if entity @s[scores={edit=5..8,temp=1},nbt={Inventory:[{Slot:100b,id:"minecraft:netherite_boots",tag:{CustomModelData:2}}]}] run scoreboard players set @s edit 11
execute as @a if entity @s[scores={edit=5..8,temp=1},nbt={Inventory:[{Slot:100b,id:"minecraft:netherite_boots",tag:{CustomModelData:23}}]}] run scoreboard players set @s edit 12

# timeline
execute as @a if entity @s[scores={edit=9,temp=1},nbt={Inventory:[{Slot:100b,id:"minecraft:netherite_boots",tag:{CustomModelData:24}}]}] run scoreboard players set @s edit 10

# send data to ray
execute as @a[scores={temp=1}] if entity @s[nbt={SelectedItem:{id:"minecraft:netherite_boots"}}] store result score @e[type=armor_stand,tag=ray] edit run data get entity @s SelectedItem.tag.CustomModelData
execute if entity @a[scores={temp=1},nbt={Inventory:[{Slot:100b,id:"minecraft:netherite_boots"}]}] run tag @e[type=armor_stand,tag=ray] add action
function animations:ray/cast
replaceitem entity @a[scores={temp=1}] armor.feet air

# repeat
scoreboard players set @a[scores={temp=1}] temp 2
execute if entity @a[scores={edit=1..,temp=0}] run function animations:ray/setup
scoreboard players set @a temp 0