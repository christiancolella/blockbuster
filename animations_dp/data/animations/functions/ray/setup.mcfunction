execute as @a[tag=edit,scores={temp=0},limit=1] run scoreboard players set @s temp 1

execute as @a[scores={temp=1}] at @s run summon armor_stand ~ ~1.625 ~ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["ray"]}
execute as @a[scores={temp=1}] run data modify entity @e[type=armor_stand,tag=ray,limit=1] Rotation set from entity @s Rotation

execute as @a[scores={temp=1}] if entity @s[nbt={SelectedItem:{id:"minecraft:netherite_boots",tag:{CustomModelData:1}}}] run tag @e[type=armor_stand,tag=ray] add cancel
execute as @a[scores={temp=1}] if entity @s[nbt={SelectedItem:{id:"minecraft:netherite_boots",tag:{CustomModelData:2}}}] run tag @e[type=armor_stand,tag=ray] add add_parent
execute as @a[scores={temp=1}] if entity @s[nbt={SelectedItem:{id:"minecraft:netherite_boots",tag:{CustomModelData:3}}}] run tag @e[type=armor_stand,tag=ray] add select_parent
execute as @a[scores={temp=1}] if entity @s[nbt={SelectedItem:{id:"minecraft:netherite_boots",tag:{CustomModelData:4}}}] run tag @e[type=armor_stand,tag=ray] add delete

execute if entity @a[scores={temp=1},nbt={Inventory:[{Slot:100b,id:"minecraft:netherite_boots"}]}] run tag @e[type=armor_stand,tag=ray] add action
function animations:ray/cast
replaceitem entity @a[scores={temp=1}] armor.feet air 1

scoreboard players set @a[scores={temp=1}] temp 2
execute if entity @a[tag=edit,scores={temp=0}] run function animations:ray/setup
scoreboard players set @a temp 0