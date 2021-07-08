scoreboard players set @s temp 1
execute as @e[type=armor_stand] if score @s id = @e[type=armor_stand,tag=hitbox,nbt={HandItems:[{id:"minecraft:bee_spawn_egg",Count:1b,tag:{CustomModelData:1}}]},scores={temp=1},limit=1] parent_id run data modify entity @s HandItems[0] set from entity @e[type=armor_stand,tag=hitbox,nbt={HandItems:[{id:"minecraft:bee_spawn_egg",Count:1b,tag:{CustomModelData:1}}]},scores={temp=1},limit=1] HandItems[0]
scoreboard players set @s[nbt={HandItems:[{id:"minecraft:bee_spawn_egg",Count:1b,tag:{CustomModelData:1}}]}] has_hand_item 0

execute at @s[nbt={HandItems:[{id:"minecraft:warped_fungus_on_a_stick"}]}] run scoreboard players set @p click 1
execute at @s[nbt={HandItems:[{id:"minecraft:warped_fungus_on_a_stick"}]}] store result score @p global run data get entity @s HandItems[0].tag.CustomModelData
scoreboard players set @s[nbt={HandItems:[{id:"minecraft:warped_fungus_on_a_stick"}]}] has_hand_item 0

execute as @e[type=armor_stand] if score @s id = @e[type=armor_stand,tag=hitbox,scores={temp=1},limit=1] parent_id if score @e[type=armor_stand,tag=hitbox,scores={temp=1},limit=1] has_hand_item matches 1 run data modify entity @s ArmorItems[3] set from entity @e[type=armor_stand,tag=hitbox,scores={temp=1},limit=1] HandItems[0]
data merge entity @s {HandItems:[{},{}]}
scoreboard players set @s temp 0