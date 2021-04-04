# add parent
execute as @e[type=armor_stand,tag=ray,tag=execute,scores={edit=4}] at @s positioned ~ ~-0.75 ~ as @e[type=armor_stand,tag=block,tag=!hidden,distance=..0.5,limit=1] run scoreboard players set @s temp 1
tag @e[type=armor_stand,tag=block,scores={temp=1}] add awaiting_parent
scoreboard players operation @p[scores={temp=1}] parent_uuid_0 = @e[type=armor_stand,tag=block,scores={temp=1}] self_uuid_0
scoreboard players operation @p[scores={temp=1}] parent_uuid_1 = @e[type=armor_stand,tag=block,scores={temp=1}] self_uuid_1
scoreboard players operation @p[scores={temp=1}] parent_uuid_2 = @e[type=armor_stand,tag=block,scores={temp=1}] self_uuid_2
scoreboard players operation @p[scores={temp=1}] parent_uuid_3 = @e[type=armor_stand,tag=block,scores={temp=1}] self_uuid_3
scoreboard players set @e[type=armor_stand,tag=block] temp 0

# select parent
execute as @e[type=armor_stand,tag=ray,tag=execute,scores={edit=9}] at @s positioned ~ ~-0.75 ~ as @e[type=armor_stand,tag=block,tag=!hidden,distance=..0.5,limit=1] run scoreboard players set @s temp 1
execute if entity @e[type=armor_stand,tag=block,scores={temp=1}] as @e[type=armor_stand,tag=block] if score @s self_uuid_0 = @p[scores={temp=1}] parent_uuid_0 if score @s self_uuid_1 = @p[scores={temp=1}] parent_uuid_1 if score @s self_uuid_2 = @p[scores={temp=1}] parent_uuid_2 if score @s self_uuid_3 = @p[scores={temp=1}] parent_uuid_3 run scoreboard players set @s temp 2
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] parent_uuid_0 = @e[type=armor_stand,tag=block,scores={temp=1}] self_uuid_0
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] parent_uuid_1 = @e[type=armor_stand,tag=block,scores={temp=1}] self_uuid_1
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] parent_uuid_2 = @e[type=armor_stand,tag=block,scores={temp=1}] self_uuid_2
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] parent_uuid_3 = @e[type=armor_stand,tag=block,scores={temp=1}] self_uuid_3
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] initial_offset_x = @e[type=armor_stand,tag=block,scores={temp=1}] self_pos_x
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] initial_offset_x -= @e[type=armor_stand,tag=block,scores={temp=2}] self_pos_x
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] initial_offset_y = @e[type=armor_stand,tag=block,scores={temp=2}] self_pos_y
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] initial_offset_y -= @e[type=armor_stand,tag=block,scores={temp=1}] self_pos_y
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] initial_offset_z = @e[type=armor_stand,tag=block,scores={temp=2}] self_pos_z
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] initial_offset_z -= @e[type=armor_stand,tag=block,scores={temp=1}] self_pos_z
tag @e[type=armor_stand,tag=block,scores={temp=2}] remove awaiting_parent
scoreboard players set @e[type=armor_stand,tag=block] temp 0

# remove parent
execute as @e[type=armor_stand,tag=ray,tag=execute,scores={edit=5}] at @s positioned ~ ~-0.75 ~ as @e[type=armor_stand,tag=block,tag=!hidden,distance=..0.5,limit=1] run scoreboard players set @s temp 1
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run scoreboard players set @s global 1
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run function animations:unparent_position
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run scoreboard players set @s parent_pos_x 0
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run scoreboard players set @s parent_pos_y 0
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run scoreboard players set @s parent_pos_z 0
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run scoreboard players set @s parent_rot_x 0
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run scoreboard players set @s parent_rot_y 0
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run scoreboard players set @s parent_rot_z 0
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run scoreboard players reset @s parent_uuid_0
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run scoreboard players reset @s parent_uuid_1
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run scoreboard players reset @s parent_uuid_2
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run scoreboard players reset @s parent_uuid_3
scoreboard players set @e[type=armor_stand,tag=block] temp 0

# hide
execute as @e[type=armor_stand,tag=ray,tag=execute,scores={edit=6}] at @s positioned ~ ~-0.75 ~ as @e[type=armor_stand,tag=block,tag=!hidden,distance=..0.5,limit=1] run scoreboard players set @s temp 1
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run data modify entity @s ArmorItems[2] set from entity @s ArmorItems[3]
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run data modify entity @s ArmorItems[3] set value {id:"minecraft:barrier",Count:1b}
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run data merge entity @s {Marker:1b}
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run tag @s add hidden
scoreboard players set @e[type=armor_stand,tag=block] temp 0

# delete
execute as @e[type=armor_stand,tag=ray,tag=execute,scores={edit=8}] at @s positioned ~ ~-0.75 ~ as @e[type=armor_stand,tag=block,tag=!hidden,distance=..0.5,limit=1] run kill @s

# transform text
execute as @e[type=armor_stand,tag=ray,scores={edit=2}] at @s positioned ~ ~-0.75 ~ as @e[type=armor_stand,tag=block,tag=!hidden,distance=..0.5,limit=1] run scoreboard players set @s temp 1
execute as @e[type=armor_stand,tag=ray,scores={edit=10..11}] at @s positioned ~ ~-0.75 ~ as @e[type=armor_stand,tag=block,tag=!hidden,distance=..0.5,limit=1] run scoreboard players set @s temp 1
execute as @e[type=armor_stand,tag=ray,scores={edit=12..17}] at @s positioned ~ ~-0.75 ~ as @e[type=armor_stand,tag=block,tag=!hidden,distance=..0.5,limit=1] run scoreboard players set @s temp 1
execute as @e[type=armor_stand,tag=ray,scores={edit=37..42}] at @s positioned ~ ~-0.75 ~ as @e[type=armor_stand,tag=block,tag=!hidden,distance=..0.5,limit=1] run scoreboard players set @s temp 1

scoreboard players operation #x_pos global = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] initial_offset_x
execute if entity @e[type=armor_stand,tag=block,tag=!has_parent,scores={temp=1}] run scoreboard players remove #x_pos global 500
execute if score #x_pos global matches 0.. run data modify storage animations:main signs[0] set value ""
execute if score #x_pos global matches ..-1 run data modify storage animations:main signs[0] set value "-"
execute if score #x_pos global matches ..-1 run scoreboard players operation #x_pos global *= #-1 constants
scoreboard players operation #x_pos_int global = #x_pos global
scoreboard players operation #x_pos_int global /= #1000 constants
scoreboard players operation #x_pos_dec global = #x_pos global
scoreboard players operation #x_pos_dec global %= #1000 constants
scoreboard players operation #x_pos_dec_0 global = #x_pos_dec global
scoreboard players operation #x_pos_dec_0 global /= #100 constants
scoreboard players operation #x_pos_dec_1 global = #x_pos_dec global
scoreboard players operation #x_pos_dec_1 global %= #100 constants
scoreboard players operation #x_pos_dec_1 global /= #10 constants
scoreboard players operation #x_pos_dec_2 global = #x_pos_dec global
scoreboard players operation #x_pos_dec_2 global %= #10 constants

scoreboard players operation #y_pos global = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] initial_offset_y
execute if entity @e[type=armor_stand,tag=block,tag=!has_parent,scores={temp=1}] run scoreboard players add #y_pos global 226
execute if score #y_pos global matches 0.. run data modify storage animations:main signs[1] set value ""
execute if score #y_pos global matches ..-1 run data modify storage animations:main signs[1] set value "-"
execute if score #y_pos global matches ..-1 run scoreboard players operation #y_pos global *= #-1 constants
scoreboard players operation #y_pos_int global = #y_pos global
scoreboard players operation #y_pos_int global /= #1000 constants
scoreboard players operation #y_pos_dec global = #y_pos global
scoreboard players operation #y_pos_dec global %= #1000 constants
scoreboard players operation #y_pos_dec_0 global = #y_pos_dec global
scoreboard players operation #y_pos_dec_0 global /= #100 constants
scoreboard players operation #y_pos_dec_1 global = #y_pos_dec global
scoreboard players operation #y_pos_dec_1 global %= #100 constants
scoreboard players operation #y_pos_dec_1 global /= #10 constants
scoreboard players operation #y_pos_dec_2 global = #y_pos_dec global
scoreboard players operation #y_pos_dec_2 global %= #10 constants

scoreboard players operation #z_pos global = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] initial_offset_z
execute if entity @e[type=armor_stand,tag=block,tag=!has_parent,scores={temp=1}] run scoreboard players remove #z_pos global 500
execute if score #z_pos global matches 1.. run data modify storage animations:main signs[2] set value "-"
execute if score #z_pos global matches ..0 run data modify storage animations:main signs[2] set value ""
execute if score #z_pos global matches ..-1 run scoreboard players operation #z_pos global *= #-1 constants
scoreboard players operation #z_pos_int global = #z_pos global
scoreboard players operation #z_pos_int global /= #1000 constants
scoreboard players operation #z_pos_dec global = #z_pos global
scoreboard players operation #z_pos_dec global %= #1000 constants
scoreboard players operation #z_pos_dec_0 global = #z_pos_dec global
scoreboard players operation #z_pos_dec_0 global /= #100 constants
scoreboard players operation #z_pos_dec_1 global = #z_pos_dec global
scoreboard players operation #z_pos_dec_1 global %= #100 constants
scoreboard players operation #z_pos_dec_1 global /= #10 constants
scoreboard players operation #z_pos_dec_2 global = #z_pos_dec global
scoreboard players operation #z_pos_dec_2 global %= #10 constants

scoreboard players operation #x_rot global = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] initial_rot_x
execute if score #x_rot global matches 0.. run data modify storage animations:main signs[3] set value ""
execute if score #x_rot global matches ..-1 run data modify storage animations:main signs[3] set value "-"
execute if score #x_rot global matches ..-1 run scoreboard players operation #x_rot global *= #-1 constants
scoreboard players operation #x_rot_int global = #x_rot global
scoreboard players operation #x_rot_int global /= #1000 constants
scoreboard players operation #x_rot_dec global = #x_rot global
scoreboard players operation #x_rot_dec global %= #1000 constants
scoreboard players operation #x_rot_dec_0 global = #x_rot_dec global
scoreboard players operation #x_rot_dec_0 global /= #100 constants
scoreboard players operation #x_rot_dec_1 global = #x_rot_dec global
scoreboard players operation #x_rot_dec_1 global %= #100 constants
scoreboard players operation #x_rot_dec_1 global /= #10 constants
scoreboard players operation #x_rot_dec_2 global = #x_rot_dec global
scoreboard players operation #x_rot_dec_2 global %= #10 constants

scoreboard players operation #y_rot global = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] initial_rot_y
execute if score #y_rot global matches 0.. run data modify storage animations:main signs[4] set value ""
execute if score #y_rot global matches ..-1 run data modify storage animations:main signs[4] set value "-"
execute if score #y_rot global matches ..-1 run scoreboard players operation #y_rot global *= #-1 constants
scoreboard players operation #y_rot_int global = #y_rot global
scoreboard players operation #y_rot_int global /= #1000 constants
scoreboard players operation #y_rot_dec global = #y_rot global
scoreboard players operation #y_rot_dec global %= #1000 constants
scoreboard players operation #y_rot_dec_0 global = #y_rot_dec global
scoreboard players operation #y_rot_dec_0 global /= #100 constants
scoreboard players operation #y_rot_dec_1 global = #y_rot_dec global
scoreboard players operation #y_rot_dec_1 global %= #100 constants
scoreboard players operation #y_rot_dec_1 global /= #10 constants
scoreboard players operation #y_rot_dec_2 global = #y_rot_dec global
scoreboard players operation #y_rot_dec_2 global %= #10 constants

scoreboard players operation #z_rot global = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] initial_rot_z
execute if score #z_rot global matches 0.. run data modify storage animations:main signs[5] set value ""
execute if score #z_rot global matches ..-1 run data modify storage animations:main signs[5] set value "-"
execute if score #z_rot global matches ..-1 run scoreboard players operation #z_rot global *= #-1 constants
scoreboard players operation #z_rot_int global = #z_rot global
scoreboard players operation #z_rot_int global /= #1000 constants
scoreboard players operation #z_rot_dec global = #z_rot global
scoreboard players operation #z_rot_dec global %= #1000 constants
scoreboard players operation #z_rot_dec_0 global = #z_rot_dec global
scoreboard players operation #z_rot_dec_0 global /= #100 constants
scoreboard players operation #z_rot_dec_1 global = #z_rot_dec global
scoreboard players operation #z_rot_dec_1 global %= #100 constants
scoreboard players operation #z_rot_dec_1 global /= #10 constants
scoreboard players operation #z_rot_dec_2 global = #z_rot_dec global
scoreboard players operation #z_rot_dec_2 global %= #10 constants

execute if entity @e[type=armor_stand,tag=ray,scores={edit=2}] if entity @e[type=armor_stand,tag=block,tag=!has_parent,scores={temp=1}] run title @p[scores={temp=1}] actionbar [{"text":"Pos: [","color":"#202020"},{"storage":"animations:main","nbt":"signs[0]","color":"dark_red"},{"score":{"name":"#x_pos_int","objective":"global"},"color":"dark_red"},{"text":".","color":"dark_red"},{"score":{"name":"#x_pos_dec_0","objective":"global"},"color":"dark_red"},{"score":{"name":"#x_pos_dec_1","objective":"global"},"color":"dark_red"},{"score":{"name":"#x_pos_dec_2","objective":"global"},"color":"dark_red"},{"text":", ","color":"#202020"},{"storage":"animations:main","nbt":"signs[1]","color":"dark_green"},{"score":{"name":"#y_pos_int","objective":"global"},"color":"dark_green"},{"text":".","color":"dark_green"},{"score":{"name":"#y_pos_dec_0","objective":"global"},"color":"dark_green"},{"score":{"name":"#y_pos_dec_1","objective":"global"},"color":"dark_green"},{"score":{"name":"#y_pos_dec_2","objective":"global"},"color":"dark_green"},{"text":", ","color":"#202020"},{"storage":"animations:main","nbt":"signs[2]","color":"dark_blue"},{"score":{"name":"#z_pos_int","objective":"global"},"color":"dark_blue"},{"text":".","color":"dark_blue"},{"score":{"name":"#z_pos_dec_0","objective":"global"},"color":"dark_blue"},{"score":{"name":"#z_pos_dec_1","objective":"global"},"color":"dark_blue"},{"score":{"name":"#z_pos_dec_2","objective":"global"},"color":"dark_blue"},{"text":"] | Rot: [","color":"#202020"},{"storage":"animations:main","nbt":"signs[3]","color":"dark_red"},{"score":{"name":"#x_rot_int","objective":"global"},"color":"dark_red"},{"text":".","color":"dark_red"},{"score":{"name":"#x_rot_dec_0","objective":"global"},"color":"dark_red"},{"score":{"name":"#x_rot_dec_1","objective":"global"},"color":"dark_red"},{"score":{"name":"#x_rot_dec_2","objective":"global"},"color":"dark_red"},{"text":", ","color":"#202020"},{"storage":"animations:main","nbt":"signs[4]","color":"dark_green"},{"score":{"name":"#y_rot_int","objective":"global"},"color":"dark_green"},{"text":".","color":"dark_green"},{"score":{"name":"#y_rot_dec_0","objective":"global"},"color":"dark_green"},{"score":{"name":"#y_rot_dec_1","objective":"global"},"color":"dark_green"},{"score":{"name":"#y_rot_dec_2","objective":"global"},"color":"dark_green"},{"text":", ","color":"#202020"},{"storage":"animations:main","nbt":"signs[5]","color":"dark_blue"},{"score":{"name":"#z_rot_int","objective":"global"},"color":"dark_blue"},{"text":".","color":"dark_blue"},{"score":{"name":"#z_rot_dec_0","objective":"global"},"color":"dark_blue"},{"score":{"name":"#z_rot_dec_1","objective":"global"},"color":"dark_blue"},{"score":{"name":"#z_rot_dec_2","objective":"global"},"color":"dark_blue"},{"text":"]","color":"#202020"}]
execute if entity @e[type=armor_stand,tag=ray,scores={edit=2}] if entity @e[type=armor_stand,tag=block,tag=has_parent,scores={temp=1}] run title @p[scores={temp=1}] actionbar [{"text":"Rel Pos: [","color":"#202020"},{"storage":"animations:main","nbt":"signs[0]","color":"dark_red"},{"score":{"name":"#x_pos_int","objective":"global"},"color":"dark_red"},{"text":".","color":"dark_red"},{"score":{"name":"#x_pos_dec_0","objective":"global"},"color":"dark_red"},{"score":{"name":"#x_pos_dec_1","objective":"global"},"color":"dark_red"},{"score":{"name":"#x_pos_dec_2","objective":"global"},"color":"dark_red"},{"text":", ","color":"#202020"},{"storage":"animations:main","nbt":"signs[1]","color":"dark_green"},{"score":{"name":"#y_pos_int","objective":"global"},"color":"dark_green"},{"text":".","color":"dark_green"},{"score":{"name":"#y_pos_dec_0","objective":"global"},"color":"dark_green"},{"score":{"name":"#y_pos_dec_1","objective":"global"},"color":"dark_green"},{"score":{"name":"#y_pos_dec_2","objective":"global"},"color":"dark_green"},{"text":", ","color":"#202020"},{"storage":"animations:main","nbt":"signs[2]","color":"dark_blue"},{"score":{"name":"#z_pos_int","objective":"global"},"color":"dark_blue"},{"text":".","color":"dark_blue"},{"score":{"name":"#z_pos_dec_0","objective":"global"},"color":"dark_blue"},{"score":{"name":"#z_pos_dec_1","objective":"global"},"color":"dark_blue"},{"score":{"name":"#z_pos_dec_2","objective":"global"},"color":"dark_blue"},{"text":"] | Rel Rot: [","color":"#202020"},{"storage":"animations:main","nbt":"signs[3]","color":"dark_red"},{"score":{"name":"#x_rot_int","objective":"global"},"color":"dark_red"},{"text":".","color":"dark_red"},{"score":{"name":"#x_rot_dec_0","objective":"global"},"color":"dark_red"},{"score":{"name":"#x_rot_dec_1","objective":"global"},"color":"dark_red"},{"score":{"name":"#x_rot_dec_2","objective":"global"},"color":"dark_red"},{"text":", ","color":"#202020"},{"storage":"animations:main","nbt":"signs[4]","color":"dark_green"},{"score":{"name":"#y_rot_int","objective":"global"},"color":"dark_green"},{"text":".","color":"dark_green"},{"score":{"name":"#y_rot_dec_0","objective":"global"},"color":"dark_green"},{"score":{"name":"#y_rot_dec_1","objective":"global"},"color":"dark_green"},{"score":{"name":"#y_rot_dec_2","objective":"global"},"color":"dark_green"},{"text":", ","color":"#202020"},{"storage":"animations:main","nbt":"signs[5]","color":"dark_blue"},{"score":{"name":"#z_rot_int","objective":"global"},"color":"dark_blue"},{"text":".","color":"dark_blue"},{"score":{"name":"#z_rot_dec_0","objective":"global"},"color":"dark_blue"},{"score":{"name":"#z_rot_dec_1","objective":"global"},"color":"dark_blue"},{"score":{"name":"#z_rot_dec_2","objective":"global"},"color":"dark_blue"},{"text":"]","color":"#202020"}]

execute if entity @e[type=armor_stand,tag=ray,scores={edit=10..11}] if entity @e[type=armor_stand,tag=block,tag=!has_parent,scores={temp=1}] run title @p[scores={temp=1}] actionbar [{"text":"Pos: [","color":"#202020"},{"storage":"animations:main","nbt":"signs[0]","color":"dark_red"},{"score":{"name":"#x_pos_int","objective":"global"},"color":"dark_red"},{"text":".","color":"dark_red"},{"score":{"name":"#x_pos_dec_0","objective":"global"},"color":"dark_red"},{"score":{"name":"#x_pos_dec_1","objective":"global"},"color":"dark_red"},{"score":{"name":"#x_pos_dec_2","objective":"global"},"color":"dark_red"},{"text":", ","color":"#202020"},{"storage":"animations:main","nbt":"signs[1]","color":"dark_green"},{"score":{"name":"#y_pos_int","objective":"global"},"color":"dark_green"},{"text":".","color":"dark_green"},{"score":{"name":"#y_pos_dec_0","objective":"global"},"color":"dark_green"},{"score":{"name":"#y_pos_dec_1","objective":"global"},"color":"dark_green"},{"score":{"name":"#y_pos_dec_2","objective":"global"},"color":"dark_green"},{"text":", ","color":"#202020"},{"storage":"animations:main","nbt":"signs[2]","color":"dark_blue"},{"score":{"name":"#z_pos_int","objective":"global"},"color":"dark_blue"},{"text":".","color":"dark_blue"},{"score":{"name":"#z_pos_dec_0","objective":"global"},"color":"dark_blue"},{"score":{"name":"#z_pos_dec_1","objective":"global"},"color":"dark_blue"},{"score":{"name":"#z_pos_dec_2","objective":"global"},"color":"dark_blue"},{"text":"] | Rot: [","color":"#202020"},{"storage":"animations:main","nbt":"signs[3]","color":"dark_red"},{"score":{"name":"#x_rot_int","objective":"global"},"color":"dark_red"},{"text":".","color":"dark_red"},{"score":{"name":"#x_rot_dec_0","objective":"global"},"color":"dark_red"},{"score":{"name":"#x_rot_dec_1","objective":"global"},"color":"dark_red"},{"score":{"name":"#x_rot_dec_2","objective":"global"},"color":"dark_red"},{"text":", ","color":"#202020"},{"storage":"animations:main","nbt":"signs[4]","color":"dark_green"},{"score":{"name":"#y_rot_int","objective":"global"},"color":"dark_green"},{"text":".","color":"dark_green"},{"score":{"name":"#y_rot_dec_0","objective":"global"},"color":"dark_green"},{"score":{"name":"#y_rot_dec_1","objective":"global"},"color":"dark_green"},{"score":{"name":"#y_rot_dec_2","objective":"global"},"color":"dark_green"},{"text":", ","color":"#202020"},{"storage":"animations:main","nbt":"signs[5]","color":"dark_blue"},{"score":{"name":"#z_rot_int","objective":"global"},"color":"dark_blue"},{"text":".","color":"dark_blue"},{"score":{"name":"#z_rot_dec_0","objective":"global"},"color":"dark_blue"},{"score":{"name":"#z_rot_dec_1","objective":"global"},"color":"dark_blue"},{"score":{"name":"#z_rot_dec_2","objective":"global"},"color":"dark_blue"},{"text":"]","color":"#202020"}]
execute if entity @e[type=armor_stand,tag=ray,scores={edit=10..11}] if entity @e[type=armor_stand,tag=block,tag=has_parent,scores={temp=1}] run title @p[scores={temp=1}] actionbar [{"text":"Rel Pos: [","color":"#202020"},{"storage":"animations:main","nbt":"signs[0]","color":"dark_red"},{"score":{"name":"#x_pos_int","objective":"global"},"color":"dark_red"},{"text":".","color":"dark_red"},{"score":{"name":"#x_pos_dec_0","objective":"global"},"color":"dark_red"},{"score":{"name":"#x_pos_dec_1","objective":"global"},"color":"dark_red"},{"score":{"name":"#x_pos_dec_2","objective":"global"},"color":"dark_red"},{"text":", ","color":"#202020"},{"storage":"animations:main","nbt":"signs[1]","color":"dark_green"},{"score":{"name":"#y_pos_int","objective":"global"},"color":"dark_green"},{"text":".","color":"dark_green"},{"score":{"name":"#y_pos_dec_0","objective":"global"},"color":"dark_green"},{"score":{"name":"#y_pos_dec_1","objective":"global"},"color":"dark_green"},{"score":{"name":"#y_pos_dec_2","objective":"global"},"color":"dark_green"},{"text":", ","color":"#202020"},{"storage":"animations:main","nbt":"signs[2]","color":"dark_blue"},{"score":{"name":"#z_pos_int","objective":"global"},"color":"dark_blue"},{"text":".","color":"dark_blue"},{"score":{"name":"#z_pos_dec_0","objective":"global"},"color":"dark_blue"},{"score":{"name":"#z_pos_dec_1","objective":"global"},"color":"dark_blue"},{"score":{"name":"#z_pos_dec_2","objective":"global"},"color":"dark_blue"},{"text":"] | Rel Rot: [","color":"#202020"},{"storage":"animations:main","nbt":"signs[3]","color":"dark_red"},{"score":{"name":"#x_rot_int","objective":"global"},"color":"dark_red"},{"text":".","color":"dark_red"},{"score":{"name":"#x_rot_dec_0","objective":"global"},"color":"dark_red"},{"score":{"name":"#x_rot_dec_1","objective":"global"},"color":"dark_red"},{"score":{"name":"#x_rot_dec_2","objective":"global"},"color":"dark_red"},{"text":", ","color":"#202020"},{"storage":"animations:main","nbt":"signs[4]","color":"dark_green"},{"score":{"name":"#y_rot_int","objective":"global"},"color":"dark_green"},{"text":".","color":"dark_green"},{"score":{"name":"#y_rot_dec_0","objective":"global"},"color":"dark_green"},{"score":{"name":"#y_rot_dec_1","objective":"global"},"color":"dark_green"},{"score":{"name":"#y_rot_dec_2","objective":"global"},"color":"dark_green"},{"text":", ","color":"#202020"},{"storage":"animations:main","nbt":"signs[5]","color":"dark_blue"},{"score":{"name":"#z_rot_int","objective":"global"},"color":"dark_blue"},{"text":".","color":"dark_blue"},{"score":{"name":"#z_rot_dec_0","objective":"global"},"color":"dark_blue"},{"score":{"name":"#z_rot_dec_1","objective":"global"},"color":"dark_blue"},{"score":{"name":"#z_rot_dec_2","objective":"global"},"color":"dark_blue"},{"text":"]","color":"#202020"}]

execute if entity @e[type=armor_stand,tag=ray,scores={edit=12..17}] if entity @e[type=armor_stand,tag=block,tag=!has_parent,scores={temp=1}] run title @p[scores={temp=1}] actionbar [{"text":"Position: [","color":"#202020"},{"storage":"animations:main","nbt":"signs[0]","color":"dark_red"},{"score":{"name":"#x_pos_int","objective":"global"},"color":"dark_red"},{"text":".","color":"dark_red"},{"score":{"name":"#x_pos_dec_0","objective":"global"},"color":"dark_red"},{"score":{"name":"#x_pos_dec_1","objective":"global"},"color":"dark_red"},{"score":{"name":"#x_pos_dec_2","objective":"global"},"color":"dark_red"},{"text":", ","color":"#202020"},{"storage":"animations:main","nbt":"signs[1]","color":"dark_green"},{"score":{"name":"#y_pos_int","objective":"global"},"color":"dark_green"},{"text":".","color":"dark_green"},{"score":{"name":"#y_pos_dec_0","objective":"global"},"color":"dark_green"},{"score":{"name":"#y_pos_dec_1","objective":"global"},"color":"dark_green"},{"score":{"name":"#y_pos_dec_2","objective":"global"},"color":"dark_green"},{"text":", ","color":"#202020"},{"storage":"animations:main","nbt":"signs[2]","color":"dark_blue"},{"score":{"name":"#z_pos_int","objective":"global"},"color":"dark_blue"},{"text":".","color":"dark_blue"},{"score":{"name":"#z_pos_dec_0","objective":"global"},"color":"dark_blue"},{"score":{"name":"#z_pos_dec_1","objective":"global"},"color":"dark_blue"},{"score":{"name":"#z_pos_dec_2","objective":"global"},"color":"dark_blue"},{"text":"]","color":"#202020"}]
execute if entity @e[type=armor_stand,tag=ray,scores={edit=12..17}] if entity @e[type=armor_stand,tag=block,tag=has_parent,scores={temp=1}] run title @p[scores={temp=1}] actionbar [{"text":"Relative Position: [","color":"#202020"},{"storage":"animations:main","nbt":"signs[0]","color":"dark_red"},{"score":{"name":"#x_pos_int","objective":"global"},"color":"dark_red"},{"text":".","color":"dark_red"},{"score":{"name":"#x_pos_dec_0","objective":"global"},"color":"dark_red"},{"score":{"name":"#x_pos_dec_1","objective":"global"},"color":"dark_red"},{"score":{"name":"#x_pos_dec_2","objective":"global"},"color":"dark_red"},{"text":", ","color":"#202020"},{"storage":"animations:main","nbt":"signs[1]","color":"dark_green"},{"score":{"name":"#y_pos_int","objective":"global"},"color":"dark_green"},{"text":".","color":"dark_green"},{"score":{"name":"#y_pos_dec_0","objective":"global"},"color":"dark_green"},{"score":{"name":"#y_pos_dec_1","objective":"global"},"color":"dark_green"},{"score":{"name":"#y_pos_dec_2","objective":"global"},"color":"dark_green"},{"text":", ","color":"#202020"},{"storage":"animations:main","nbt":"signs[2]","color":"dark_blue"},{"score":{"name":"#z_pos_int","objective":"global"},"color":"dark_blue"},{"text":".","color":"dark_blue"},{"score":{"name":"#z_pos_dec_0","objective":"global"},"color":"dark_blue"},{"score":{"name":"#z_pos_dec_1","objective":"global"},"color":"dark_blue"},{"score":{"name":"#z_pos_dec_2","objective":"global"},"color":"dark_blue"},{"text":"]","color":"#202020"}]

execute if entity @e[type=armor_stand,tag=ray,scores={edit=37..42}] if entity @e[type=armor_stand,tag=block,tag=!has_parent,scores={temp=1}] run title @p[scores={temp=1}] actionbar [{"text":"Rotation: [","color":"#202020"},{"storage":"animations:main","nbt":"signs[3]","color":"dark_red"},{"score":{"name":"#x_rot_int","objective":"global"},"color":"dark_red"},{"text":".","color":"dark_red"},{"score":{"name":"#x_rot_dec_0","objective":"global"},"color":"dark_red"},{"score":{"name":"#x_rot_dec_1","objective":"global"},"color":"dark_red"},{"score":{"name":"#x_rot_dec_2","objective":"global"},"color":"dark_red"},{"text":", ","color":"#202020"},{"storage":"animations:main","nbt":"signs[4]","color":"dark_green"},{"score":{"name":"#y_rot_int","objective":"global"},"color":"dark_green"},{"text":".","color":"dark_green"},{"score":{"name":"#y_rot_dec_0","objective":"global"},"color":"dark_green"},{"score":{"name":"#y_rot_dec_1","objective":"global"},"color":"dark_green"},{"score":{"name":"#y_rot_dec_2","objective":"global"},"color":"dark_green"},{"text":", ","color":"#202020"},{"storage":"animations:main","nbt":"signs[5]","color":"dark_blue"},{"score":{"name":"#z_rot_int","objective":"global"},"color":"dark_blue"},{"text":".","color":"dark_blue"},{"score":{"name":"#z_rot_dec_0","objective":"global"},"color":"dark_blue"},{"score":{"name":"#z_rot_dec_1","objective":"global"},"color":"dark_blue"},{"score":{"name":"#z_rot_dec_2","objective":"global"},"color":"dark_blue"},{"text":"]","color":"#202020"}]
execute if entity @e[type=armor_stand,tag=ray,scores={edit=37..42}] if entity @e[type=armor_stand,tag=block,tag=has_parent,scores={temp=1}] run title @p[scores={temp=1}] actionbar [{"text":"Relative Rotation: [","color":"#202020"},{"storage":"animations:main","nbt":"signs[3]","color":"dark_red"},{"score":{"name":"#x_rot_int","objective":"global"},"color":"dark_red"},{"text":".","color":"dark_red"},{"score":{"name":"#x_rot_dec_0","objective":"global"},"color":"dark_red"},{"score":{"name":"#x_rot_dec_1","objective":"global"},"color":"dark_red"},{"score":{"name":"#x_rot_dec_2","objective":"global"},"color":"dark_red"},{"text":", ","color":"#202020"},{"storage":"animations:main","nbt":"signs[4]","color":"dark_green"},{"score":{"name":"#y_rot_int","objective":"global"},"color":"dark_green"},{"text":".","color":"dark_green"},{"score":{"name":"#y_rot_dec_0","objective":"global"},"color":"dark_green"},{"score":{"name":"#y_rot_dec_1","objective":"global"},"color":"dark_green"},{"score":{"name":"#y_rot_dec_2","objective":"global"},"color":"dark_green"},{"text":", ","color":"#202020"},{"storage":"animations:main","nbt":"signs[5]","color":"dark_blue"},{"score":{"name":"#z_rot_int","objective":"global"},"color":"dark_blue"},{"text":".","color":"dark_blue"},{"score":{"name":"#z_rot_dec_0","objective":"global"},"color":"dark_blue"},{"score":{"name":"#z_rot_dec_1","objective":"global"},"color":"dark_blue"},{"score":{"name":"#z_rot_dec_2","objective":"global"},"color":"dark_blue"},{"text":"]","color":"#202020"}]

scoreboard players set @e[type=armor_stand,tag=block] temp 0

# move

## forwards 2
execute as @e[type=armor_stand,tag=ray,tag=execute,scores={edit=12}] at @s positioned ~ ~-0.75 ~ as @e[type=armor_stand,tag=block,tag=!hidden,distance=..0.5,limit=1] run scoreboard players set @s temp 1
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=-45..45] run scoreboard players add @e[type=armor_stand,tag=block,scores={temp=1}] initial_offset_z 2000
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=45..135] run scoreboard players remove @e[type=armor_stand,tag=block,tag=!has_parent,scores={temp=1}] initial_offset_x 2000
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=45..135] run scoreboard players add @e[type=armor_stand,tag=block,tag=has_parent,scores={temp=1}] initial_offset_x 2000
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=135..180] run scoreboard players remove @e[type=armor_stand,tag=block,scores={temp=1}] initial_offset_z 2000
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=-180..-135] run scoreboard players remove @e[type=armor_stand,tag=block,scores={temp=1}] initial_offset_z 2000
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=-135..-45] run scoreboard players add @e[type=armor_stand,tag=block,tag=!has_parent,scores={temp=1}] initial_offset_x 2000
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=-135..-45] run scoreboard players remove @e[type=armor_stand,tag=block,tag=has_parent,scores={temp=1}] initial_offset_x 2000
execute if entity @p[scores={temp=1},x_rotation=-90..-45] run scoreboard players add @e[type=armor_stand,tag=block,scores={temp=1}] initial_offset_y 2000
execute if entity @p[scores={temp=1},x_rotation=45..90] run scoreboard players remove @e[type=armor_stand,tag=block,scores={temp=1}] initial_offset_y 2000
scoreboard players set @e[type=armor_stand,tag=block] temp 0

## backwards 2
execute as @e[type=armor_stand,tag=ray,tag=execute,scores={edit=13}] at @s positioned ~ ~-0.75 ~ as @e[type=armor_stand,tag=block,tag=!hidden,distance=..0.5,limit=1] run scoreboard players set @s temp 1
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=-45..45] run scoreboard players remove @e[type=armor_stand,tag=block,scores={temp=1}] initial_offset_z 2000
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=45..135] run scoreboard players add @e[type=armor_stand,tag=block,tag=!has_parent,scores={temp=1}] initial_offset_x 2000
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=45..135] run scoreboard players remove @e[type=armor_stand,tag=block,tag=has_parent,scores={temp=1}] initial_offset_x 2000
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=135..180] run scoreboard players add @e[type=armor_stand,tag=block,scores={temp=1}] initial_offset_z 2000
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=-180..-135] run scoreboard players add @e[type=armor_stand,tag=block,scores={temp=1}] initial_offset_z 2000
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=-135..-45] run scoreboard players remove @e[type=armor_stand,tag=block,tag=!has_parent,scores={temp=1}] initial_offset_x 2000
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=-135..-45] run scoreboard players add @e[type=armor_stand,tag=block,tag=has_parent,scores={temp=1}] initial_offset_x 2000
execute if entity @p[scores={temp=1},x_rotation=-90..-45] run scoreboard players remove @e[type=armor_stand,tag=block,scores={temp=1}] initial_offset_y 2000
execute if entity @p[scores={temp=1},x_rotation=45..90] run scoreboard players add @e[type=armor_stand,tag=block,scores={temp=1}] initial_offset_y 2000
scoreboard players set @e[type=armor_stand,tag=block] temp 0

## forwards 1/2
execute as @e[type=armor_stand,tag=ray,tag=execute,scores={edit=14}] at @s positioned ~ ~-0.75 ~ as @e[type=armor_stand,tag=block,tag=!hidden,distance=..0.5,limit=1] run scoreboard players set @s temp 1
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=-45..45] run scoreboard players add @e[type=armor_stand,tag=block,scores={temp=1}] initial_offset_z 500
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=45..135] run scoreboard players remove @e[type=armor_stand,tag=block,tag=!has_parent,scores={temp=1}] initial_offset_x 500
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=45..135] run scoreboard players add @e[type=armor_stand,tag=block,tag=has_parent,scores={temp=1}] initial_offset_x 500
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=135..180] run scoreboard players remove @e[type=armor_stand,tag=block,scores={temp=1}] initial_offset_z 500
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=-180..-135] run scoreboard players remove @e[type=armor_stand,tag=block,scores={temp=1}] initial_offset_z 500
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=-135..-45] run scoreboard players add @e[type=armor_stand,tag=block,tag=!has_parent,scores={temp=1}] initial_offset_x 500
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=-135..-45] run scoreboard players remove @e[type=armor_stand,tag=block,tag=has_parent,scores={temp=1}] initial_offset_x 500
execute if entity @p[scores={temp=1},x_rotation=-90..-45] run scoreboard players add @e[type=armor_stand,tag=block,scores={temp=1}] initial_offset_y 500
execute if entity @p[scores={temp=1},x_rotation=45..90] run scoreboard players remove @e[type=armor_stand,tag=block,scores={temp=1}] initial_offset_y 500
scoreboard players set @e[type=armor_stand,tag=block] temp 0

## backwards 1/2
execute as @e[type=armor_stand,tag=ray,tag=execute,scores={edit=15}] at @s positioned ~ ~-0.75 ~ as @e[type=armor_stand,tag=block,tag=!hidden,distance=..0.5,limit=1] run scoreboard players set @s temp 1
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=-45..45] run scoreboard players remove @e[type=armor_stand,tag=block,scores={temp=1}] initial_offset_z 500
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=45..135] run scoreboard players add @e[type=armor_stand,tag=block,tag=!has_parent,scores={temp=1}] initial_offset_x 500
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=45..135] run scoreboard players remove @e[type=armor_stand,tag=block,tag=has_parent,scores={temp=1}] initial_offset_x 500
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=135..180] run scoreboard players add @e[type=armor_stand,tag=block,scores={temp=1}] initial_offset_z 500
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=-180..-135] run scoreboard players add @e[type=armor_stand,tag=block,scores={temp=1}] initial_offset_z 500
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=-135..-45] run scoreboard players remove @e[type=armor_stand,tag=block,tag=!has_parent,scores={temp=1}] initial_offset_x 500
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=-135..-45] run scoreboard players add @e[type=armor_stand,tag=block,tag=has_parent,scores={temp=1}] initial_offset_x 500
execute if entity @p[scores={temp=1},x_rotation=-90..-45] run scoreboard players remove @e[type=armor_stand,tag=block,scores={temp=1}] initial_offset_y 500
execute if entity @p[scores={temp=1},x_rotation=45..90] run scoreboard players add @e[type=armor_stand,tag=block,scores={temp=1}] initial_offset_y 500
scoreboard players set @e[type=armor_stand,tag=block] temp 0

## forwards 1/16
execute as @e[type=armor_stand,tag=ray,tag=execute,scores={edit=16}] at @s positioned ~ ~-0.75 ~ as @e[type=armor_stand,tag=block,tag=!hidden,distance=..0.5,limit=1] run scoreboard players set @s temp 1
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=-45..45] run scoreboard players add @e[type=armor_stand,tag=block,scores={temp=1}] initial_offset_z 62
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=45..135] run scoreboard players remove @e[type=armor_stand,tag=block,tag=!has_parent,scores={temp=1}] initial_offset_x 62
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=45..135] run scoreboard players add @e[type=armor_stand,tag=block,tag=has_parent,scores={temp=1}] initial_offset_x 62
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=135..180] run scoreboard players remove @e[type=armor_stand,tag=block,scores={temp=1}] initial_offset_z 62
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=-180..-135] run scoreboard players remove @e[type=armor_stand,tag=block,scores={temp=1}] initial_offset_z 62
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=-135..-45] run scoreboard players add @e[type=armor_stand,tag=block,tag=!has_parent,scores={temp=1}] initial_offset_x 62
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=-135..-45] run scoreboard players remove @e[type=armor_stand,tag=block,tag=has_parent,scores={temp=1}] initial_offset_x 62
execute if entity @p[scores={temp=1},x_rotation=-90..-45] run scoreboard players add @e[type=armor_stand,tag=block,scores={temp=1}] initial_offset_y 62
execute if entity @p[scores={temp=1},x_rotation=45..90] run scoreboard players remove @e[type=armor_stand,tag=block,scores={temp=1}] initial_offset_y 62
scoreboard players set @e[type=armor_stand,tag=block] temp 0

## backwards 1/16
execute as @e[type=armor_stand,tag=ray,tag=execute,scores={edit=17}] at @s positioned ~ ~-0.75 ~ as @e[type=armor_stand,tag=block,tag=!hidden,distance=..0.5,limit=1] run scoreboard players set @s temp 1
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=-45..45] run scoreboard players remove @e[type=armor_stand,tag=block,scores={temp=1}] initial_offset_z 62
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=45..135] run scoreboard players add @e[type=armor_stand,tag=block,tag=!has_parent,scores={temp=1}] initial_offset_x 62
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=45..135] run scoreboard players remove @e[type=armor_stand,tag=block,tag=has_parent,scores={temp=1}] initial_offset_x 62
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=135..180] run scoreboard players add @e[type=armor_stand,tag=block,scores={temp=1}] initial_offset_z 62
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=-180..-135] run scoreboard players add @e[type=armor_stand,tag=block,scores={temp=1}] initial_offset_z 62
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=-135..-45] run scoreboard players remove @e[type=armor_stand,tag=block,tag=!has_parent,scores={temp=1}] initial_offset_x 62
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=-135..-45] run scoreboard players add @e[type=armor_stand,tag=block,tag=has_parent,scores={temp=1}] initial_offset_x 62
execute if entity @p[scores={temp=1},x_rotation=-90..-45] run scoreboard players remove @e[type=armor_stand,tag=block,scores={temp=1}] initial_offset_y 62
execute if entity @p[scores={temp=1},x_rotation=45..90] run scoreboard players add @e[type=armor_stand,tag=block,scores={temp=1}] initial_offset_y 62
scoreboard players set @e[type=armor_stand,tag=block] temp 0

# rotate

## 90d clockwise
execute as @e[type=armor_stand,tag=ray,tag=execute,scores={edit=37}] at @s positioned ~ ~-0.75 ~ as @e[type=armor_stand,tag=block,tag=!hidden,distance=..0.5,limit=1] run scoreboard players set @s temp 1
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=-45..45] run scoreboard players remove @e[type=armor_stand,tag=block,scores={temp=1}] initial_rot_z 90000
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=45..135] run scoreboard players remove @e[type=armor_stand,tag=block,scores={temp=1}] initial_rot_x 90000
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=135..180] run scoreboard players add @e[type=armor_stand,tag=block,scores={temp=1}] initial_rot_z 90000
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=-180..-135] run scoreboard players add @e[type=armor_stand,tag=block,scores={temp=1}] initial_rot_z 90000
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=-135..-45] run scoreboard players add @e[type=armor_stand,tag=block,scores={temp=1}] initial_rot_x 90000
execute if entity @p[scores={temp=1},x_rotation=-90..-45] run scoreboard players remove @e[type=armor_stand,tag=block,scores={temp=1}] initial_rot_y 90000
execute if entity @p[scores={temp=1},x_rotation=45..90] run scoreboard players add @e[type=armor_stand,tag=block,scores={temp=1}] initial_rot_y 90000
scoreboard players set @e[type=armor_stand,tag=block] temp 0

## 90d counter clockwise
execute as @e[type=armor_stand,tag=ray,tag=execute,scores={edit=38}] at @s positioned ~ ~-0.75 ~ as @e[type=armor_stand,tag=block,tag=!hidden,distance=..0.5,limit=1] run scoreboard players set @s temp 1
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=-45..45] run scoreboard players add @e[type=armor_stand,tag=block,scores={temp=1}] initial_rot_z 90000
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=45..135] run scoreboard players add @e[type=armor_stand,tag=block,scores={temp=1}] initial_rot_x 90000
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=135..180] run scoreboard players remove @e[type=armor_stand,tag=block,scores={temp=1}] initial_rot_z 90000
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=-180..-135] run scoreboard players remove @e[type=armor_stand,tag=block,scores={temp=1}] initial_rot_z 90000
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=-135..-45] run scoreboard players remove @e[type=armor_stand,tag=block,scores={temp=1}] initial_rot_x 90000
execute if entity @p[scores={temp=1},x_rotation=-90..-45] run scoreboard players add @e[type=armor_stand,tag=block,scores={temp=1}] initial_rot_y 90000
execute if entity @p[scores={temp=1},x_rotation=45..90] run scoreboard players remove @e[type=armor_stand,tag=block,scores={temp=1}] initial_rot_y 90000
scoreboard players set @e[type=armor_stand,tag=block] temp 0

## 15d clockwise
execute as @e[type=armor_stand,tag=ray,tag=execute,scores={edit=39}] at @s positioned ~ ~-0.75 ~ as @e[type=armor_stand,tag=block,tag=!hidden,distance=..0.5,limit=1] run scoreboard players set @s temp 1
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=-45..45] run scoreboard players remove @e[type=armor_stand,tag=block,scores={temp=1}] initial_rot_z 15000
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=45..135] run scoreboard players remove @e[type=armor_stand,tag=block,scores={temp=1}] initial_rot_x 15000
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=135..180] run scoreboard players add @e[type=armor_stand,tag=block,scores={temp=1}] initial_rot_z 15000
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=-180..-135] run scoreboard players add @e[type=armor_stand,tag=block,scores={temp=1}] initial_rot_z 15000
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=-135..-45] run scoreboard players add @e[type=armor_stand,tag=block,scores={temp=1}] initial_rot_x 15000
execute if entity @p[scores={temp=1},x_rotation=-90..-45] run scoreboard players remove @e[type=armor_stand,tag=block,scores={temp=1}] initial_rot_y 15000
execute if entity @p[scores={temp=1},x_rotation=45..90] run scoreboard players add @e[type=armor_stand,tag=block,scores={temp=1}] initial_rot_y 15000
scoreboard players set @e[type=armor_stand,tag=block] temp 0

## 15d counter clockwise
execute as @e[type=armor_stand,tag=ray,tag=execute,scores={edit=40}] at @s positioned ~ ~-0.75 ~ as @e[type=armor_stand,tag=block,tag=!hidden,distance=..0.5,limit=1] run scoreboard players set @s temp 1
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=-45..45] run scoreboard players add @e[type=armor_stand,tag=block,scores={temp=1}] initial_rot_z 15000
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=45..135] run scoreboard players add @e[type=armor_stand,tag=block,scores={temp=1}] initial_rot_x 15000
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=135..180] run scoreboard players remove @e[type=armor_stand,tag=block,scores={temp=1}] initial_rot_z 15000
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=-180..-135] run scoreboard players remove @e[type=armor_stand,tag=block,scores={temp=1}] initial_rot_z 15000
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=-135..-45] run scoreboard players remove @e[type=armor_stand,tag=block,scores={temp=1}] initial_rot_x 15000
execute if entity @p[scores={temp=1},x_rotation=-90..-45] run scoreboard players add @e[type=armor_stand,tag=block,scores={temp=1}] initial_rot_y 15000
execute if entity @p[scores={temp=1},x_rotation=45..90] run scoreboard players remove @e[type=armor_stand,tag=block,scores={temp=1}] initial_rot_y 15000
scoreboard players set @e[type=armor_stand,tag=block] temp 0

## 2.5d clockwise
execute as @e[type=armor_stand,tag=ray,tag=execute,scores={edit=41}] at @s positioned ~ ~-0.75 ~ as @e[type=armor_stand,tag=block,tag=!hidden,distance=..0.5,limit=1] run scoreboard players set @s temp 1
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=-45..45] run scoreboard players remove @e[type=armor_stand,tag=block,scores={temp=1}] initial_rot_z 2500
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=45..135] run scoreboard players remove @e[type=armor_stand,tag=block,scores={temp=1}] initial_rot_x 2500
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=135..180] run scoreboard players add @e[type=armor_stand,tag=block,scores={temp=1}] initial_rot_z 2500
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=-180..-135] run scoreboard players add @e[type=armor_stand,tag=block,scores={temp=1}] initial_rot_z 2500
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=-135..-45] run scoreboard players add @e[type=armor_stand,tag=block,scores={temp=1}] initial_rot_x 2500
execute if entity @p[scores={temp=1},x_rotation=-90..-45] run scoreboard players remove @e[type=armor_stand,tag=block,scores={temp=1}] initial_rot_y 2500
execute if entity @p[scores={temp=1},x_rotation=45..90] run scoreboard players add @e[type=armor_stand,tag=block,scores={temp=1}] initial_rot_y 2500
scoreboard players set @e[type=armor_stand,tag=block] temp 0

## 2.5d counter clockwise
execute as @e[type=armor_stand,tag=ray,tag=execute,scores={edit=42}] at @s positioned ~ ~-0.75 ~ as @e[type=armor_stand,tag=block,tag=!hidden,distance=..0.5,limit=1] run scoreboard players set @s temp 1
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=-45..45] run scoreboard players add @e[type=armor_stand,tag=block,scores={temp=1}] initial_rot_z 2500
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=45..135] run scoreboard players add @e[type=armor_stand,tag=block,scores={temp=1}] initial_rot_x 2500
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=135..180] run scoreboard players remove @e[type=armor_stand,tag=block,scores={temp=1}] initial_rot_z 2500
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=-180..-135] run scoreboard players remove @e[type=armor_stand,tag=block,scores={temp=1}] initial_rot_z 2500
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=-135..-45] run scoreboard players remove @e[type=armor_stand,tag=block,scores={temp=1}] initial_rot_x 2500
execute if entity @p[scores={temp=1},x_rotation=-90..-45] run scoreboard players add @e[type=armor_stand,tag=block,scores={temp=1}] initial_rot_y 2500
execute if entity @p[scores={temp=1},x_rotation=45..90] run scoreboard players remove @e[type=armor_stand,tag=block,scores={temp=1}] initial_rot_y 2500
scoreboard players set @e[type=armor_stand,tag=block] temp 0