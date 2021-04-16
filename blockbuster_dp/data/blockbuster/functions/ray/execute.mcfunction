# hitbox
execute as @e[type=area_effect_cloud,tag=ray] at @s positioned ~ ~-0.75 ~ if entity @e[type=armor_stand,tag=block,tag=!hidden,distance=..0.5,limit=1,sort=nearest] run scoreboard players set @e[type=armor_stand,tag=block,tag=!hidden,distance=..0.5,limit=1,sort=nearest] temp 1

## summon new hitbox stands
execute at @e[type=armor_stand,tag=block,tag=!last_selected,tag=selected,scores={temp=1}] run summon armor_stand ~0.25 ~0.226 ~0.25 {Small:1b,Invisible:1b,NoGravity:1b,ShowArms:1b,NoBasePlate:1b,DisabledSlots:4079166,Tags:["new_hitbox"]}
execute at @e[type=armor_stand,tag=block,tag=!last_selected,tag=selected,scores={temp=1}] run summon armor_stand ~0.25 ~0.226 ~ {Small:1b,Invisible:1b,NoGravity:1b,ShowArms:1b,NoBasePlate:1b,DisabledSlots:4079166,Tags:["new_hitbox"]}
execute at @e[type=armor_stand,tag=block,tag=!last_selected,tag=selected,scores={temp=1}] run summon armor_stand ~0.25 ~0.226 ~-0.25 {Small:1b,Invisible:1b,NoGravity:1b,ShowArms:1b,NoBasePlate:1b,DisabledSlots:4079166,Tags:["new_hitbox"]}
execute at @e[type=armor_stand,tag=block,tag=!last_selected,tag=selected,scores={temp=1}] run summon armor_stand ~ ~0.226 ~0.25 {Small:1b,Invisible:1b,NoGravity:1b,ShowArms:1b,NoBasePlate:1b,DisabledSlots:4079166,Tags:["new_hitbox"]}
execute at @e[type=armor_stand,tag=block,tag=!last_selected,tag=selected,scores={temp=1}] run summon armor_stand ~ ~0.226 ~ {Small:1b,Invisible:1b,NoGravity:1b,ShowArms:1b,NoBasePlate:1b,DisabledSlots:4079166,Tags:["new_hitbox"]}
execute at @e[type=armor_stand,tag=block,tag=!last_selected,tag=selected,scores={temp=1}] run summon armor_stand ~ ~0.226 ~-0.25 {Small:1b,Invisible:1b,NoGravity:1b,ShowArms:1b,NoBasePlate:1b,DisabledSlots:4079166,Tags:["new_hitbox"]}
execute at @e[type=armor_stand,tag=block,tag=!last_selected,tag=selected,scores={temp=1}] run summon armor_stand ~-0.25 ~0.226 ~0.25 {Small:1b,Invisible:1b,NoGravity:1b,ShowArms:1b,NoBasePlate:1b,DisabledSlots:4079166,Tags:["new_hitbox"]}
execute at @e[type=armor_stand,tag=block,tag=!last_selected,tag=selected,scores={temp=1}] run summon armor_stand ~-0.25 ~0.226 ~ {Small:1b,Invisible:1b,NoGravity:1b,ShowArms:1b,NoBasePlate:1b,DisabledSlots:4079166,Tags:["new_hitbox"]}
execute at @e[type=armor_stand,tag=block,tag=!last_selected,tag=selected,scores={temp=1}] run summon armor_stand ~-0.25 ~0.226 ~-0.25 {Small:1b,Invisible:1b,NoGravity:1b,ShowArms:1b,NoBasePlate:1b,DisabledSlots:4079166,Tags:["new_hitbox"]}
scoreboard players operation @e[type=armor_stand,tag=new_hitbox] parent_uuid_0 = @e[type=armor_stand,tag=block,tag=!last_selected,tag=selected,scores={temp=1}] self_uuid_0
scoreboard players operation @e[type=armor_stand,tag=new_hitbox] parent_uuid_1 = @e[type=armor_stand,tag=block,tag=!last_selected,tag=selected,scores={temp=1}] self_uuid_1
scoreboard players operation @e[type=armor_stand,tag=new_hitbox] parent_uuid_2 = @e[type=armor_stand,tag=block,tag=!last_selected,tag=selected,scores={temp=1}] self_uuid_2
scoreboard players operation @e[type=armor_stand,tag=new_hitbox] parent_uuid_3 = @e[type=armor_stand,tag=block,tag=!last_selected,tag=selected,scores={temp=1}] self_uuid_3
execute as @e[type=armor_stand,tag=new_hitbox] store result score @s initial_pos_x run data get entity @s Pos[0] 1000
execute as @e[type=armor_stand,tag=new_hitbox] store result score @s initial_pos_y run data get entity @s Pos[1] 1000
execute as @e[type=armor_stand,tag=new_hitbox] store result score @s initial_pos_z run data get entity @s Pos[2] 1000
scoreboard players operation @e[type=armor_stand,tag=new_hitbox] initial_pos_x -= @e[type=armor_stand,tag=block,tag=!last_selected,tag=selected,scores={temp=1}] self_pos_x
scoreboard players operation @e[type=armor_stand,tag=new_hitbox] initial_pos_y -= @e[type=armor_stand,tag=block,tag=!last_selected,tag=selected,scores={temp=1}] self_pos_y
scoreboard players operation @e[type=armor_stand,tag=new_hitbox] initial_pos_z -= @e[type=armor_stand,tag=block,tag=!last_selected,tag=selected,scores={temp=1}] self_pos_z
tag @e[type=armor_stand,tag=new_hitbox] add hitbox
tag @e[type=armor_stand,tag=new_hitbox] remove new_hitbox

## teleport existing hitbox stands
execute as @e[type=armor_stand,tag=hitbox] if score @s parent_uuid_0 = @e[type=armor_stand,tag=block,tag=last_selected,tag=selected,scores={temp=1},limit=1] self_uuid_0 if score @s parent_uuid_1 = @e[type=armor_stand,tag=block,tag=last_selected,tag=selected,scores={temp=1},limit=1] self_uuid_1 if score @s parent_uuid_2 = @e[type=armor_stand,tag=block,tag=last_selected,tag=selected,scores={temp=1},limit=1] self_uuid_2 if score @s parent_uuid_3 = @e[type=armor_stand,tag=block,tag=last_selected,tag=selected,scores={temp=1},limit=1] self_uuid_3 run scoreboard players set @s temp 1
scoreboard players operation @e[type=armor_stand,tag=hitbox,scores={temp=1}] self_pos_x = @e[type=armor_stand,tag=block,tag=last_selected,tag=selected,scores={temp=1}] self_pos_x
scoreboard players operation @e[type=armor_stand,tag=hitbox,scores={temp=1}] self_pos_y = @e[type=armor_stand,tag=block,tag=last_selected,tag=selected,scores={temp=1}] self_pos_y
scoreboard players operation @e[type=armor_stand,tag=hitbox,scores={temp=1}] self_pos_z = @e[type=armor_stand,tag=block,tag=last_selected,tag=selected,scores={temp=1}] self_pos_z
execute as @e[type=armor_stand,tag=hitbox,scores={temp=1}] run scoreboard players operation @s self_pos_x += @s initial_pos_x
execute as @e[type=armor_stand,tag=hitbox,scores={temp=1}] run scoreboard players operation @s self_pos_y += @s initial_pos_y
execute as @e[type=armor_stand,tag=hitbox,scores={temp=1}] run scoreboard players operation @s self_pos_z += @s initial_pos_z
execute as @e[type=armor_stand,tag=hitbox,scores={temp=1}] store result entity @s Pos[0] double 0.001 run scoreboard players get @s self_pos_x
execute as @e[type=armor_stand,tag=hitbox,scores={temp=1}] store result entity @s Pos[1] double 0.001 run scoreboard players get @s self_pos_y
execute as @e[type=armor_stand,tag=hitbox,scores={temp=1}] store result entity @s Pos[2] double 0.001 run scoreboard players get @s self_pos_z
scoreboard players set @e[type=armor_stand,tag=hitbox] temp 0

scoreboard players set @e[type=armor_stand,tag=block] temp 0

# pass data to selected stand
scoreboard players set @e[type=armor_stand,tag=block] edit 0

execute if entity @p[scores={edit=1..,temp=1}] as @e[type=area_effect_cloud,tag=ray] at @s positioned ~ ~-0.75 ~ if entity @e[type=armor_stand,tag=block,tag=!hidden,distance=..0.5,limit=1,sort=nearest] run scoreboard players set @e[type=armor_stand,tag=block,tag=!hidden,distance=..0.5,limit=1,sort=nearest] temp 1
execute as @e[type=area_effect_cloud,tag=ray] run scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=1}] edit = @s edit
tag @e[type=armor_stand,tag=block,scores={temp=1}] add glow

## relay to parent
execute as @e[type=armor_stand,tag=block,tag=!hidden] if score @s self_uuid_0 = @e[type=armor_stand,tag=block,tag=!hidden,scores={temp=1},limit=1] parent_uuid_0 if score @s self_uuid_1 = @e[type=armor_stand,tag=block,tag=!hidden,scores={temp=1},limit=1] parent_uuid_1 if score @s self_uuid_2 = @e[type=armor_stand,tag=block,tag=!hidden,scores={temp=1},limit=1] parent_uuid_2 if score @s self_uuid_3 = @e[type=armor_stand,tag=block,tag=!hidden,scores={temp=1},limit=1] parent_uuid_3 run tag @s add parent_glow

## relay to player

### parent
execute as @e[type=area_effect_cloud,tag=ray] at @s positioned ~ ~-0.75 ~ if entity @e[type=armor_stand,tag=block,tag=!hidden,tag=has_parent,distance=..0.5,limit=1] run scoreboard players set @p[scores={edit=17..18,temp=1}] edit 19
execute as @e[type=area_effect_cloud,tag=ray] at @s positioned ~ ~-0.75 ~ if entity @e[type=armor_stand,tag=block,tag=!hidden,tag=!has_parent,distance=..0.5,limit=1] run scoreboard players set @p[scores={edit=19..20,temp=1}] edit 17

### collision box
execute as @e[type=area_effect_cloud,tag=ray] at @s positioned ~ ~-0.75 ~ if entity @e[type=armor_stand,tag=block,tag=!hidden,tag=has_collision,distance=..0.5,limit=1] run scoreboard players set @p[scores={edit=17,temp=1}] edit 18
execute as @e[type=area_effect_cloud,tag=ray] at @s positioned ~ ~-0.75 ~ if entity @e[type=armor_stand,tag=block,tag=!hidden,tag=!has_collision,distance=..0.5,limit=1] run scoreboard players set @p[scores={edit=18,temp=1}] edit 17
execute as @e[type=area_effect_cloud,tag=ray] at @s positioned ~ ~-0.75 ~ if entity @e[type=armor_stand,tag=block,tag=!hidden,tag=has_collision,distance=..0.5,limit=1] run scoreboard players set @p[scores={edit=19,temp=1}] edit 20
execute as @e[type=area_effect_cloud,tag=ray] at @s positioned ~ ~-0.75 ~ if entity @e[type=armor_stand,tag=block,tag=!hidden,tag=!has_collision,distance=..0.5,limit=1] run scoreboard players set @p[scores={edit=20,temp=1}] edit 19

### hide
execute as @e[type=area_effect_cloud,tag=ray] at @s positioned ~ ~-0.75 ~ if entity @e[type=armor_stand,tag=block,tag=!hidden,scores={play=1},distance=..0.5,limit=1] run scoreboard players set @p[scores={edit=5,temp=1}] edit 6
execute as @e[type=area_effect_cloud,tag=ray] at @s positioned ~ ~-0.75 ~ if entity @e[type=armor_stand,tag=block,tag=!hidden,scores={play=0},distance=..0.5,limit=1] run scoreboard players set @p[scores={edit=6,temp=1}] edit 5

### keyframe
execute as @e[type=area_effect_cloud,tag=ray] at @s positioned ~ ~-0.75 ~ if entity @e[type=armor_stand,tag=block,tag=!hidden,scores={keyframe_type=1},distance=..0.5,limit=1] run scoreboard players set @p[scores={edit=10,temp=1}] edit 11
execute as @e[type=area_effect_cloud,tag=ray] at @s positioned ~ ~-0.75 ~ if entity @e[type=armor_stand,tag=block,tag=!hidden,scores={keyframe_type=0},distance=..0.5,limit=1] run scoreboard players set @p[scores={edit=11,temp=1}] edit 10

scoreboard players set @e[type=armor_stand,tag=block] temp 0

# add parent
execute as @e[type=area_effect_cloud,tag=ray,tag=execute,scores={edit=4}] at @s positioned ~ ~-0.75 ~ as @e[type=armor_stand,tag=block,tag=!hidden,distance=..0.5,limit=1] run scoreboard players set @s temp 1
tag @e[type=armor_stand,tag=block,scores={temp=1}] add awaiting_parent
scoreboard players operation @p[scores={temp=1}] parent_uuid_0 = @e[type=armor_stand,tag=block,scores={temp=1}] self_uuid_0
scoreboard players operation @p[scores={temp=1}] parent_uuid_1 = @e[type=armor_stand,tag=block,scores={temp=1}] self_uuid_1
scoreboard players operation @p[scores={temp=1}] parent_uuid_2 = @e[type=armor_stand,tag=block,scores={temp=1}] self_uuid_2
scoreboard players operation @p[scores={temp=1}] parent_uuid_3 = @e[type=armor_stand,tag=block,scores={temp=1}] self_uuid_3
scoreboard players set @e[type=armor_stand,tag=block] temp 0
scoreboard players set @e[type=armor_stand,tag=block] global 0

# select parent
execute as @e[type=area_effect_cloud,tag=ray,tag=execute,scores={edit=9}] at @s positioned ~ ~-0.75 ~ as @e[type=armor_stand,tag=block,tag=!hidden,distance=..0.5,limit=1] run scoreboard players set @s temp 1
execute if entity @e[type=armor_stand,tag=block,scores={temp=1}] as @e[type=armor_stand,tag=block] if score @s self_uuid_0 = @p[scores={temp=1}] parent_uuid_0 if score @s self_uuid_1 = @p[scores={temp=1}] parent_uuid_1 if score @s self_uuid_2 = @p[scores={temp=1}] parent_uuid_2 if score @s self_uuid_3 = @p[scores={temp=1}] parent_uuid_3 run scoreboard players set @s temp 2
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] parent_uuid_0 = @e[type=armor_stand,tag=block,scores={temp=1}] self_uuid_0
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] parent_uuid_1 = @e[type=armor_stand,tag=block,scores={temp=1}] self_uuid_1
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] parent_uuid_2 = @e[type=armor_stand,tag=block,scores={temp=1}] self_uuid_2
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] parent_uuid_3 = @e[type=armor_stand,tag=block,scores={temp=1}] self_uuid_3
execute as @e[type=area_effect_cloud,tag=keyframe,scores={keyframe_type=1..2}] if score @s parent_uuid_0 = @e[type=armor_stand,tag=block,scores={temp=2},limit=1] self_uuid_0 if score @s parent_uuid_1 = @e[type=armor_stand,tag=block,scores={temp=2},limit=1] self_uuid_1 if score @s parent_uuid_2 = @e[type=armor_stand,tag=block,scores={temp=2},limit=1] self_uuid_2 if score @s parent_uuid_3 = @e[type=armor_stand,tag=block,scores={temp=2},limit=1] self_uuid_3 run scoreboard players set @s temp 1
execute as @e[type=armor_stand,tag=block,scores={temp=2}] run scoreboard players set @s global 1
function blockbuster:parent/on_add
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] last_init_pos_x = @e[type=armor_stand,tag=block,scores={temp=2}] initial_pos_x
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] last_init_pos_y = @e[type=armor_stand,tag=block,scores={temp=2}] initial_pos_y
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] last_init_pos_z = @e[type=armor_stand,tag=block,scores={temp=2}] initial_pos_z
tag @e[type=armor_stand,tag=block,scores={temp=2}] remove awaiting_parent
scoreboard players set @e[type=area_effect_cloud,tag=keyframe] temp 0
scoreboard players set @e[type=armor_stand,tag=block] global 0
scoreboard players set @e[type=armor_stand,tag=block] temp 0

# remove parent
execute as @e[type=area_effect_cloud,tag=ray,tag=execute,scores={edit=5}] at @s positioned ~ ~-0.75 ~ as @e[type=armor_stand,tag=block,tag=!hidden,distance=..0.5,limit=1] run scoreboard players set @s temp 1
execute as @e[type=area_effect_cloud,tag=keyframe,scores={keyframe_type=1..2}] if score @s parent_uuid_0 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_0 if score @s parent_uuid_1 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_1 if score @s parent_uuid_2 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_2 if score @s parent_uuid_3 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_3 run scoreboard players set @s temp 1
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run scoreboard players set @s global 1
function blockbuster:parent/on_remove
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
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=1}] last_init_pos_x = @e[type=armor_stand,tag=block,scores={temp=1}] initial_pos_x
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=1}] last_init_pos_y = @e[type=armor_stand,tag=block,scores={temp=1}] initial_pos_y
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=1}] last_init_pos_z = @e[type=armor_stand,tag=block,scores={temp=1}] initial_pos_z
scoreboard players set @e[type=area_effect_cloud,tag=keyframe] temp 0
scoreboard players set @e[type=armor_stand,tag=block] global 0
scoreboard players set @e[type=armor_stand,tag=block] temp 0

# hide
execute as @e[type=area_effect_cloud,tag=ray,tag=execute,scores={edit=6}] at @s positioned ~ ~-0.75 ~ as @e[type=armor_stand,tag=block,tag=!hidden,distance=..0.5,limit=1] run scoreboard players set @s temp 1
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run data modify entity @s ArmorItems[2] set from entity @s ArmorItems[3]
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run data modify entity @s ArmorItems[3] set value {id:"minecraft:barrier",Count:1b}
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run data merge entity @s {Marker:1b}
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run tag @s add hidden
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run kill @e[type=area_effect_cloud,tag=ray]
scoreboard players set @e[type=armor_stand,tag=block] temp 0

# delete
execute as @e[type=area_effect_cloud,tag=ray,tag=execute,scores={edit=8}] at @s positioned ~ ~-0.75 ~ as @e[type=armor_stand,tag=block,tag=!hidden,distance=..0.5,limit=1] run scoreboard players set @s temp 1
execute as @e[type=armor_stand,tag=block] if score @s parent_uuid_0 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_0 if score @s parent_uuid_1 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_1 if score @s parent_uuid_2 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_2 if score @s parent_uuid_3 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_3 run scoreboard players set @s temp 2
function blockbuster:parent/on_delete
execute as @e[type=armor_stand,tag=block,scores={temp=2}] run scoreboard players set @s parent_pos_x 0
execute as @e[type=armor_stand,tag=block,scores={temp=2}] run scoreboard players set @s parent_pos_y 0
execute as @e[type=armor_stand,tag=block,scores={temp=2}] run scoreboard players set @s parent_pos_z 0
execute as @e[type=armor_stand,tag=block,scores={temp=2}] run scoreboard players set @s parent_rot_x 0
execute as @e[type=armor_stand,tag=block,scores={temp=2}] run scoreboard players set @s parent_rot_y 0
execute as @e[type=armor_stand,tag=block,scores={temp=2}] run scoreboard players set @s parent_rot_z 0
execute as @e[type=armor_stand,tag=block,scores={temp=2}] run scoreboard players reset @s parent_uuid_0
execute as @e[type=armor_stand,tag=block,scores={temp=2}] run scoreboard players reset @s parent_uuid_1
execute as @e[type=armor_stand,tag=block,scores={temp=2}] run scoreboard players reset @s parent_uuid_2
execute as @e[type=armor_stand,tag=block,scores={temp=2}] run scoreboard players reset @s parent_uuid_3
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] last_init_pos_x = @e[type=armor_stand,tag=block,scores={temp=2}] initial_pos_x
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] last_init_pos_y = @e[type=armor_stand,tag=block,scores={temp=2}] initial_pos_y
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] last_init_pos_z = @e[type=armor_stand,tag=block,scores={temp=2}] initial_pos_z
execute as @e[type=armor_stand,tag=hitbox] if score @s parent_uuid_0 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_0 if score @s parent_uuid_1 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_1 if score @s parent_uuid_2 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_2 if score @s parent_uuid_3 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_3 run kill @s
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run kill @e[type=area_effect_cloud,tag=ray]
kill @e[type=armor_stand,tag=block,scores={temp=1}]
scoreboard players set @e[type=armor_stand,tag=block] temp 0

# delete hierarchy
execute as @e[type=area_effect_cloud,tag=ray,tag=execute,scores={edit=59}] at @s positioned ~ ~-0.75 ~ as @e[type=armor_stand,tag=block,tag=!hidden,distance=..0.5,limit=1] run scoreboard players set @s temp 1
execute if entity @e[type=armor_stand,tag=block,tag=is_parent,scores={temp=1}] run function blockbuster:misc/delete_hierarchy
execute as @e[type=armor_stand,tag=hitbox] if score @s parent_uuid_0 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_0 if score @s parent_uuid_1 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_1 if score @s parent_uuid_2 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_2 if score @s parent_uuid_3 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_3 run kill @s
execute as @e[type=armor_stand,tag=hitbox] if score @s parent_uuid_0 = @e[type=armor_stand,tag=block,scores={temp=4},limit=1] self_uuid_0 if score @s parent_uuid_1 = @e[type=armor_stand,tag=block,scores={temp=4},limit=1] self_uuid_1 if score @s parent_uuid_2 = @e[type=armor_stand,tag=block,scores={temp=4},limit=1] self_uuid_2 if score @s parent_uuid_3 = @e[type=armor_stand,tag=block,scores={temp=4},limit=1] self_uuid_3 run kill @s
kill @e[type=armor_stand,tag=block,scores={temp=1}]
kill @e[type=armor_stand,tag=block,scores={temp=4}]
scoreboard players set @e[type=armor_stand,tag=block] temp 0

# move

## forwards 2
execute as @e[type=area_effect_cloud,tag=ray,tag=execute,scores={edit=12}] at @s positioned ~ ~-0.75 ~ as @e[type=armor_stand,tag=block,tag=!hidden,distance=..0.5,limit=1] run scoreboard players set @s temp 1
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=-45..45] run scoreboard players add @e[type=armor_stand,tag=block,scores={temp=1}] initial_pos_z 2000
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=45..135] run scoreboard players remove @e[type=armor_stand,tag=block,tag=!has_parent,scores={temp=1}] initial_pos_x 2000
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=45..135] run scoreboard players add @e[type=armor_stand,tag=block,tag=has_parent,scores={temp=1}] initial_pos_x 2000
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=135..180] run scoreboard players remove @e[type=armor_stand,tag=block,scores={temp=1}] initial_pos_z 2000
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=-180..-135] run scoreboard players remove @e[type=armor_stand,tag=block,scores={temp=1}] initial_pos_z 2000
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=-135..-45] run scoreboard players add @e[type=armor_stand,tag=block,tag=!has_parent,scores={temp=1}] initial_pos_x 2000
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=-135..-45] run scoreboard players remove @e[type=armor_stand,tag=block,tag=has_parent,scores={temp=1}] initial_pos_x 2000
execute if entity @p[scores={temp=1},x_rotation=-90..-45] run scoreboard players add @e[type=armor_stand,tag=block,scores={temp=1}] initial_pos_y 2000
execute if entity @p[scores={temp=1},x_rotation=45..90] run scoreboard players remove @e[type=armor_stand,tag=block,scores={temp=1}] initial_pos_y 2000
scoreboard players set @e[type=armor_stand,tag=block] temp 0

## backwards 2
execute as @e[type=area_effect_cloud,tag=ray,tag=execute,scores={edit=13}] at @s positioned ~ ~-0.75 ~ as @e[type=armor_stand,tag=block,tag=!hidden,distance=..0.5,limit=1] run scoreboard players set @s temp 1
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=-45..45] run scoreboard players remove @e[type=armor_stand,tag=block,scores={temp=1}] initial_pos_z 2000
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=45..135] run scoreboard players add @e[type=armor_stand,tag=block,tag=!has_parent,scores={temp=1}] initial_pos_x 2000
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=45..135] run scoreboard players remove @e[type=armor_stand,tag=block,tag=has_parent,scores={temp=1}] initial_pos_x 2000
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=135..180] run scoreboard players add @e[type=armor_stand,tag=block,scores={temp=1}] initial_pos_z 2000
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=-180..-135] run scoreboard players add @e[type=armor_stand,tag=block,scores={temp=1}] initial_pos_z 2000
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=-135..-45] run scoreboard players remove @e[type=armor_stand,tag=block,tag=!has_parent,scores={temp=1}] initial_pos_x 2000
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=-135..-45] run scoreboard players add @e[type=armor_stand,tag=block,tag=has_parent,scores={temp=1}] initial_pos_x 2000
execute if entity @p[scores={temp=1},x_rotation=-90..-45] run scoreboard players remove @e[type=armor_stand,tag=block,scores={temp=1}] initial_pos_y 2000
execute if entity @p[scores={temp=1},x_rotation=45..90] run scoreboard players add @e[type=armor_stand,tag=block,scores={temp=1}] initial_pos_y 2000
scoreboard players set @e[type=armor_stand,tag=block] temp 0

## forwards 1/2
execute as @e[type=area_effect_cloud,tag=ray,tag=execute,scores={edit=14}] at @s positioned ~ ~-0.75 ~ as @e[type=armor_stand,tag=block,tag=!hidden,distance=..0.5,limit=1] run scoreboard players set @s temp 1
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=-45..45] run scoreboard players add @e[type=armor_stand,tag=block,scores={temp=1}] initial_pos_z 500
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=45..135] run scoreboard players remove @e[type=armor_stand,tag=block,tag=!has_parent,scores={temp=1}] initial_pos_x 500
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=45..135] run scoreboard players add @e[type=armor_stand,tag=block,tag=has_parent,scores={temp=1}] initial_pos_x 500
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=135..180] run scoreboard players remove @e[type=armor_stand,tag=block,scores={temp=1}] initial_pos_z 500
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=-180..-135] run scoreboard players remove @e[type=armor_stand,tag=block,scores={temp=1}] initial_pos_z 500
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=-135..-45] run scoreboard players add @e[type=armor_stand,tag=block,tag=!has_parent,scores={temp=1}] initial_pos_x 500
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=-135..-45] run scoreboard players remove @e[type=armor_stand,tag=block,tag=has_parent,scores={temp=1}] initial_pos_x 500
execute if entity @p[scores={temp=1},x_rotation=-90..-45] run scoreboard players add @e[type=armor_stand,tag=block,scores={temp=1}] initial_pos_y 500
execute if entity @p[scores={temp=1},x_rotation=45..90] run scoreboard players remove @e[type=armor_stand,tag=block,scores={temp=1}] initial_pos_y 500
scoreboard players set @e[type=armor_stand,tag=block] temp 0

## backwards 1/2
execute as @e[type=area_effect_cloud,tag=ray,tag=execute,scores={edit=15}] at @s positioned ~ ~-0.75 ~ as @e[type=armor_stand,tag=block,tag=!hidden,distance=..0.5,limit=1] run scoreboard players set @s temp 1
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=-45..45] run scoreboard players remove @e[type=armor_stand,tag=block,scores={temp=1}] initial_pos_z 500
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=45..135] run scoreboard players add @e[type=armor_stand,tag=block,tag=!has_parent,scores={temp=1}] initial_pos_x 500
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=45..135] run scoreboard players remove @e[type=armor_stand,tag=block,tag=has_parent,scores={temp=1}] initial_pos_x 500
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=135..180] run scoreboard players add @e[type=armor_stand,tag=block,scores={temp=1}] initial_pos_z 500
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=-180..-135] run scoreboard players add @e[type=armor_stand,tag=block,scores={temp=1}] initial_pos_z 500
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=-135..-45] run scoreboard players remove @e[type=armor_stand,tag=block,tag=!has_parent,scores={temp=1}] initial_pos_x 500
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=-135..-45] run scoreboard players add @e[type=armor_stand,tag=block,tag=has_parent,scores={temp=1}] initial_pos_x 500
execute if entity @p[scores={temp=1},x_rotation=-90..-45] run scoreboard players remove @e[type=armor_stand,tag=block,scores={temp=1}] initial_pos_y 500
execute if entity @p[scores={temp=1},x_rotation=45..90] run scoreboard players add @e[type=armor_stand,tag=block,scores={temp=1}] initial_pos_y 500
scoreboard players set @e[type=armor_stand,tag=block] temp 0

## forwards 1/16
execute as @e[type=area_effect_cloud,tag=ray,tag=execute,scores={edit=16}] at @s positioned ~ ~-0.75 ~ as @e[type=armor_stand,tag=block,tag=!hidden,distance=..0.5,limit=1] run scoreboard players set @s temp 1
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=-45..45] run scoreboard players add @e[type=armor_stand,tag=block,scores={temp=1}] initial_pos_z 62
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=45..135] run scoreboard players remove @e[type=armor_stand,tag=block,tag=!has_parent,scores={temp=1}] initial_pos_x 62
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=45..135] run scoreboard players add @e[type=armor_stand,tag=block,tag=has_parent,scores={temp=1}] initial_pos_x 62
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=135..180] run scoreboard players remove @e[type=armor_stand,tag=block,scores={temp=1}] initial_pos_z 62
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=-180..-135] run scoreboard players remove @e[type=armor_stand,tag=block,scores={temp=1}] initial_pos_z 62
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=-135..-45] run scoreboard players add @e[type=armor_stand,tag=block,tag=!has_parent,scores={temp=1}] initial_pos_x 62
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=-135..-45] run scoreboard players remove @e[type=armor_stand,tag=block,tag=has_parent,scores={temp=1}] initial_pos_x 62
execute if entity @p[scores={temp=1},x_rotation=-90..-45] run scoreboard players add @e[type=armor_stand,tag=block,scores={temp=1}] initial_pos_y 62
execute if entity @p[scores={temp=1},x_rotation=45..90] run scoreboard players remove @e[type=armor_stand,tag=block,scores={temp=1}] initial_pos_y 62
scoreboard players set @e[type=armor_stand,tag=block] temp 0

## backwards 1/16
execute as @e[type=area_effect_cloud,tag=ray,tag=execute,scores={edit=17}] at @s positioned ~ ~-0.75 ~ as @e[type=armor_stand,tag=block,tag=!hidden,distance=..0.5,limit=1] run scoreboard players set @s temp 1
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=-45..45] run scoreboard players remove @e[type=armor_stand,tag=block,scores={temp=1}] initial_pos_z 62
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=45..135] run scoreboard players add @e[type=armor_stand,tag=block,tag=!has_parent,scores={temp=1}] initial_pos_x 62
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=45..135] run scoreboard players remove @e[type=armor_stand,tag=block,tag=has_parent,scores={temp=1}] initial_pos_x 62
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=135..180] run scoreboard players add @e[type=armor_stand,tag=block,scores={temp=1}] initial_pos_z 62
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=-180..-135] run scoreboard players add @e[type=armor_stand,tag=block,scores={temp=1}] initial_pos_z 62
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=-135..-45] run scoreboard players remove @e[type=armor_stand,tag=block,tag=!has_parent,scores={temp=1}] initial_pos_x 62
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=-135..-45] run scoreboard players add @e[type=armor_stand,tag=block,tag=has_parent,scores={temp=1}] initial_pos_x 62
execute if entity @p[scores={temp=1},x_rotation=-90..-45] run scoreboard players remove @e[type=armor_stand,tag=block,scores={temp=1}] initial_pos_y 62
execute if entity @p[scores={temp=1},x_rotation=45..90] run scoreboard players add @e[type=armor_stand,tag=block,scores={temp=1}] initial_pos_y 62
scoreboard players set @e[type=armor_stand,tag=block] temp 0

# rotate

## 90d clockwise
execute as @e[type=area_effect_cloud,tag=ray,tag=execute,scores={edit=39}] at @s positioned ~ ~-0.75 ~ as @e[type=armor_stand,tag=block,tag=!hidden,distance=..0.5,limit=1] run scoreboard players set @s temp 1
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=-45..45] run scoreboard players remove @e[type=armor_stand,tag=block,scores={temp=1}] initial_rot_z 90000
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=45..135] run scoreboard players remove @e[type=armor_stand,tag=block,scores={temp=1}] initial_rot_x 90000
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=135..180] run scoreboard players add @e[type=armor_stand,tag=block,scores={temp=1}] initial_rot_z 90000
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=-180..-135] run scoreboard players add @e[type=armor_stand,tag=block,scores={temp=1}] initial_rot_z 90000
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=-135..-45] run scoreboard players add @e[type=armor_stand,tag=block,scores={temp=1}] initial_rot_x 90000
execute if entity @p[scores={temp=1},x_rotation=-90..-45] run scoreboard players remove @e[type=armor_stand,tag=block,scores={temp=1}] initial_rot_y 90000
execute if entity @p[scores={temp=1},x_rotation=45..90] run scoreboard players add @e[type=armor_stand,tag=block,scores={temp=1}] initial_rot_y 90000
scoreboard players set @e[type=armor_stand,tag=block] temp 0

## 90d counter clockwise
execute as @e[type=area_effect_cloud,tag=ray,tag=execute,scores={edit=40}] at @s positioned ~ ~-0.75 ~ as @e[type=armor_stand,tag=block,tag=!hidden,distance=..0.5,limit=1] run scoreboard players set @s temp 1
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=-45..45] run scoreboard players add @e[type=armor_stand,tag=block,scores={temp=1}] initial_rot_z 90000
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=45..135] run scoreboard players add @e[type=armor_stand,tag=block,scores={temp=1}] initial_rot_x 90000
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=135..180] run scoreboard players remove @e[type=armor_stand,tag=block,scores={temp=1}] initial_rot_z 90000
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=-180..-135] run scoreboard players remove @e[type=armor_stand,tag=block,scores={temp=1}] initial_rot_z 90000
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=-135..-45] run scoreboard players remove @e[type=armor_stand,tag=block,scores={temp=1}] initial_rot_x 90000
execute if entity @p[scores={temp=1},x_rotation=-90..-45] run scoreboard players add @e[type=armor_stand,tag=block,scores={temp=1}] initial_rot_y 90000
execute if entity @p[scores={temp=1},x_rotation=45..90] run scoreboard players remove @e[type=armor_stand,tag=block,scores={temp=1}] initial_rot_y 90000
scoreboard players set @e[type=armor_stand,tag=block] temp 0

## 15d clockwise
execute as @e[type=area_effect_cloud,tag=ray,tag=execute,scores={edit=41}] at @s positioned ~ ~-0.75 ~ as @e[type=armor_stand,tag=block,tag=!hidden,distance=..0.5,limit=1] run scoreboard players set @s temp 1
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=-45..45] run scoreboard players remove @e[type=armor_stand,tag=block,scores={temp=1}] initial_rot_z 15000
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=45..135] run scoreboard players remove @e[type=armor_stand,tag=block,scores={temp=1}] initial_rot_x 15000
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=135..180] run scoreboard players add @e[type=armor_stand,tag=block,scores={temp=1}] initial_rot_z 15000
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=-180..-135] run scoreboard players add @e[type=armor_stand,tag=block,scores={temp=1}] initial_rot_z 15000
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=-135..-45] run scoreboard players add @e[type=armor_stand,tag=block,scores={temp=1}] initial_rot_x 15000
execute if entity @p[scores={temp=1},x_rotation=-90..-45] run scoreboard players remove @e[type=armor_stand,tag=block,scores={temp=1}] initial_rot_y 15000
execute if entity @p[scores={temp=1},x_rotation=45..90] run scoreboard players add @e[type=armor_stand,tag=block,scores={temp=1}] initial_rot_y 15000
scoreboard players set @e[type=armor_stand,tag=block] temp 0

## 15d counter clockwise
execute as @e[type=area_effect_cloud,tag=ray,tag=execute,scores={edit=42}] at @s positioned ~ ~-0.75 ~ as @e[type=armor_stand,tag=block,tag=!hidden,distance=..0.5,limit=1] run scoreboard players set @s temp 1
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=-45..45] run scoreboard players add @e[type=armor_stand,tag=block,scores={temp=1}] initial_rot_z 15000
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=45..135] run scoreboard players add @e[type=armor_stand,tag=block,scores={temp=1}] initial_rot_x 15000
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=135..180] run scoreboard players remove @e[type=armor_stand,tag=block,scores={temp=1}] initial_rot_z 15000
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=-180..-135] run scoreboard players remove @e[type=armor_stand,tag=block,scores={temp=1}] initial_rot_z 15000
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=-135..-45] run scoreboard players remove @e[type=armor_stand,tag=block,scores={temp=1}] initial_rot_x 15000
execute if entity @p[scores={temp=1},x_rotation=-90..-45] run scoreboard players add @e[type=armor_stand,tag=block,scores={temp=1}] initial_rot_y 15000
execute if entity @p[scores={temp=1},x_rotation=45..90] run scoreboard players remove @e[type=armor_stand,tag=block,scores={temp=1}] initial_rot_y 15000
scoreboard players set @e[type=armor_stand,tag=block] temp 0

## 2.5d clockwise
execute as @e[type=area_effect_cloud,tag=ray,tag=execute,scores={edit=43}] at @s positioned ~ ~-0.75 ~ as @e[type=armor_stand,tag=block,tag=!hidden,distance=..0.5,limit=1] run scoreboard players set @s temp 1
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=-45..45] run scoreboard players remove @e[type=armor_stand,tag=block,scores={temp=1}] initial_rot_z 2500
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=45..135] run scoreboard players remove @e[type=armor_stand,tag=block,scores={temp=1}] initial_rot_x 2500
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=135..180] run scoreboard players add @e[type=armor_stand,tag=block,scores={temp=1}] initial_rot_z 2500
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=-180..-135] run scoreboard players add @e[type=armor_stand,tag=block,scores={temp=1}] initial_rot_z 2500
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=-135..-45] run scoreboard players add @e[type=armor_stand,tag=block,scores={temp=1}] initial_rot_x 2500
execute if entity @p[scores={temp=1},x_rotation=-90..-45] run scoreboard players remove @e[type=armor_stand,tag=block,scores={temp=1}] initial_rot_y 2500
execute if entity @p[scores={temp=1},x_rotation=45..90] run scoreboard players add @e[type=armor_stand,tag=block,scores={temp=1}] initial_rot_y 2500
scoreboard players set @e[type=armor_stand,tag=block] temp 0

## 2.5d counter clockwise
execute as @e[type=area_effect_cloud,tag=ray,tag=execute,scores={edit=44}] at @s positioned ~ ~-0.75 ~ as @e[type=armor_stand,tag=block,tag=!hidden,distance=..0.5,limit=1] run scoreboard players set @s temp 1
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=-45..45] run scoreboard players add @e[type=armor_stand,tag=block,scores={temp=1}] initial_rot_z 2500
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=45..135] run scoreboard players add @e[type=armor_stand,tag=block,scores={temp=1}] initial_rot_x 2500
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=135..180] run scoreboard players remove @e[type=armor_stand,tag=block,scores={temp=1}] initial_rot_z 2500
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=-180..-135] run scoreboard players remove @e[type=armor_stand,tag=block,scores={temp=1}] initial_rot_z 2500
execute if entity @p[scores={temp=1},x_rotation=-45..45,y_rotation=-135..-45] run scoreboard players remove @e[type=armor_stand,tag=block,scores={temp=1}] initial_rot_x 2500
execute if entity @p[scores={temp=1},x_rotation=-90..-45] run scoreboard players add @e[type=armor_stand,tag=block,scores={temp=1}] initial_rot_y 2500
execute if entity @p[scores={temp=1},x_rotation=45..90] run scoreboard players remove @e[type=armor_stand,tag=block,scores={temp=1}] initial_rot_y 2500
scoreboard players set @e[type=armor_stand,tag=block] temp 0

# animation length

## add 0.25 seconds
execute as @e[type=area_effect_cloud,tag=ray,tag=execute,scores={edit=45}] at @s positioned ~ ~-0.75 ~ as @e[type=armor_stand,tag=block,tag=!hidden,distance=..0.5,limit=1] run scoreboard players set @s temp 1
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run scoreboard players add @s anim_length 5
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run scoreboard players set @s global 1
scoreboard players set @e[type=armor_stand,tag=block] temp 0

## remove 0.25 seconds
execute as @e[type=area_effect_cloud,tag=ray,tag=execute,scores={edit=46}] at @s positioned ~ ~-0.75 ~ as @e[type=armor_stand,tag=block,tag=!hidden,distance=..0.5,limit=1] run scoreboard players set @s temp 1
execute as @e[type=armor_stand,tag=block,scores={temp=1}] if score @s anim_length matches 6.. run scoreboard players remove @s anim_length 5
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run scoreboard players set @s global 1
scoreboard players set @e[type=armor_stand,tag=block] temp 0

## add 0.05 seconds
execute as @e[type=area_effect_cloud,tag=ray,tag=execute,scores={edit=47}] at @s positioned ~ ~-0.75 ~ as @e[type=armor_stand,tag=block,tag=!hidden,distance=..0.5,limit=1] run scoreboard players set @s temp 1
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run scoreboard players add @s anim_length 1
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run scoreboard players set @s global 1
scoreboard players set @e[type=armor_stand,tag=block] temp 0

## remove 0.05 seconds
execute as @e[type=area_effect_cloud,tag=ray,tag=execute,scores={edit=48}] at @s positioned ~ ~-0.75 ~ as @e[type=armor_stand,tag=block,tag=!hidden,distance=..0.5,limit=1] run scoreboard players set @s temp 1
execute as @e[type=armor_stand,tag=block,scores={temp=1}] if score @s anim_length matches 2.. run scoreboard players remove @s anim_length 1
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run scoreboard players set @s global 1
scoreboard players set @e[type=armor_stand,tag=block] temp 0

# timeline

## move +0.25 seconds
execute as @e[type=area_effect_cloud,tag=ray,tag=execute,scores={edit=23}] at @s positioned ~ ~-0.75 ~ as @e[type=armor_stand,tag=block,tag=!hidden,distance=..0.5,limit=1] run scoreboard players set @s temp 1
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run scoreboard players operation #temp global = @s anim_length
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run scoreboard players operation #temp global -= @s time
execute as @e[type=armor_stand,tag=block,scores={temp=1}] if score #temp global matches 5.. run scoreboard players add @s time 5
execute as @e[type=armor_stand,tag=block,scores={temp=1}] if score #temp global matches ..4 run scoreboard players operation @s time = @s anim_length
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run scoreboard players set @s global 1
scoreboard players set @e[type=armor_stand,tag=block] temp 0

## move -0.25 seconds
execute as @e[type=area_effect_cloud,tag=ray,tag=execute,scores={edit=24}] at @s positioned ~ ~-0.75 ~ as @e[type=armor_stand,tag=block,tag=!hidden,distance=..0.5,limit=1] run scoreboard players set @s temp 1
execute as @e[type=armor_stand,tag=block,scores={temp=1}] if score @s time matches 5.. run scoreboard players remove @s time 5
execute as @e[type=armor_stand,tag=block,scores={temp=1}] if score @s time matches ..4 run scoreboard players set @s time 0
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run scoreboard players set @s global 1
scoreboard players set @e[type=armor_stand,tag=block] temp 0

## move +0.05 seconds
execute as @e[type=area_effect_cloud,tag=ray,tag=execute,scores={edit=25}] at @s positioned ~ ~-0.75 ~ as @e[type=armor_stand,tag=block,tag=!hidden,distance=..0.5,limit=1] run scoreboard players set @s temp 1
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run scoreboard players operation #temp global = @s anim_length
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run scoreboard players operation #temp global -= @s time
execute as @e[type=armor_stand,tag=block,scores={temp=1}] if score #temp global matches 1.. run scoreboard players add @s time 1
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run scoreboard players set @s global 1
scoreboard players set @e[type=armor_stand,tag=block] temp 0

## move -0.05 seconds
execute as @e[type=area_effect_cloud,tag=ray,tag=execute,scores={edit=26}] at @s positioned ~ ~-0.75 ~ as @e[type=armor_stand,tag=block,tag=!hidden,distance=..0.5,limit=1] run scoreboard players set @s temp 1
execute as @e[type=armor_stand,tag=block,scores={temp=1}] if score @s time matches 1.. run scoreboard players remove @s time 1
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run scoreboard players set @s global 1
scoreboard players set @e[type=armor_stand,tag=block] temp 0

## jump to beginning
execute as @e[type=area_effect_cloud,tag=ray,tag=execute,scores={edit=27}] at @s positioned ~ ~-0.75 ~ as @e[type=armor_stand,tag=block,tag=!hidden,distance=..0.5,limit=1] run scoreboard players set @s temp 1
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run scoreboard players set @s time 0
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run scoreboard players set @s global 1
scoreboard players set @e[type=armor_stand,tag=block] temp 0

## jump to end
execute as @e[type=area_effect_cloud,tag=ray,tag=execute,scores={edit=28}] at @s positioned ~ ~-0.75 ~ as @e[type=armor_stand,tag=block,tag=!hidden,distance=..0.5,limit=1] run scoreboard players set @s temp 1
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run scoreboard players operation @s time = @s anim_length
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run scoreboard players set @s global 1
scoreboard players set @e[type=armor_stand,tag=block] temp 0

# play
execute as @e[type=area_effect_cloud,tag=ray,tag=execute,scores={edit=18}] at @s positioned ~ ~-0.75 ~ as @e[type=armor_stand,tag=block,tag=!hidden,distance=..0.5,limit=1] run scoreboard players set @s temp 1
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run scoreboard players set @s play 1
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run scoreboard players set @s global 1
scoreboard players set @e[type=armor_stand,tag=block] temp 0

# stop
execute as @e[type=area_effect_cloud,tag=ray,tag=execute,scores={edit=19}] at @s positioned ~ ~-0.75 ~ as @e[type=armor_stand,tag=block,tag=!hidden,distance=..0.5,limit=1] run scoreboard players set @s temp 1
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run scoreboard players set @s play 0
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run scoreboard players set @s global 1
scoreboard players set @e[type=armor_stand,tag=block] temp 0

# move keyframe

## +0.05 seconds
execute as @e[type=area_effect_cloud,tag=ray,tag=execute,scores={edit=49}] at @s positioned ~ ~-0.75 ~ as @e[type=armor_stand,tag=block,tag=!hidden,distance=..0.5,limit=1] run scoreboard players set @s temp 1
scoreboard players operation #temp global = @e[type=armor_stand,tag=block,scores={temp=1}] time
execute as @e[type=area_effect_cloud,tag=keyframe] if score @s parent_uuid_0 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_0 if score @s parent_uuid_1 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_1 if score @s parent_uuid_2 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_2 if score @s parent_uuid_3 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_3 if score @s time = #temp global run scoreboard players set @s temp 1
scoreboard players add #temp global 1
execute as @e[type=area_effect_cloud,tag=keyframe] if score @s parent_uuid_0 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_0 if score @s parent_uuid_1 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_1 if score @s parent_uuid_2 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_2 if score @s parent_uuid_3 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_3 if score @s time = #temp global run scoreboard players set @s temp 2
execute as @e[type=armor_stand,tag=block,scores={temp=1},limit=1] unless score @s time = @s anim_length unless entity @e[type=area_effect_cloud,tag=keyframe,scores={temp=2}] run scoreboard players set @e[type=area_effect_cloud,tag=keyframe,scores={temp=1}] temp 3
execute as @e[type=area_effect_cloud,tag=keyframe,scores={temp=3}] run scoreboard players add @s time 1
execute as @e[type=area_effect_cloud,tag=keyframe,scores={temp=3}] run scoreboard players add @e[type=armor_stand,tag=block,scores={temp=1}] time 1
execute as @e[type=area_effect_cloud,tag=keyframe,scores={temp=3}] run scoreboard players set @e[type=armor_stand,tag=block,scores={temp=1}] global 1
scoreboard players set @e[type=armor_stand,tag=block] temp 0
scoreboard players set @e[type=area_effect_cloud,tag=keyframe] temp 0

## -0.05 seconds
execute as @e[type=area_effect_cloud,tag=ray,tag=execute,scores={edit=50}] at @s positioned ~ ~-0.75 ~ as @e[type=armor_stand,tag=block,tag=!hidden,distance=..0.5,limit=1] run scoreboard players set @s temp 1
scoreboard players operation #temp global = @e[type=armor_stand,tag=block,scores={temp=1}] time
execute as @e[type=area_effect_cloud,tag=keyframe] if score @s parent_uuid_0 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_0 if score @s parent_uuid_1 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_1 if score @s parent_uuid_2 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_2 if score @s parent_uuid_3 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_3 if score @s time = #temp global run scoreboard players set @s temp 1
scoreboard players remove #temp global 1
execute as @e[type=area_effect_cloud,tag=keyframe] if score @s parent_uuid_0 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_0 if score @s parent_uuid_1 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_1 if score @s parent_uuid_2 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_2 if score @s parent_uuid_3 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_3 if score @s time = #temp global run scoreboard players set @s temp 2
execute as @e[type=armor_stand,tag=block,scores={temp=1},limit=1] unless score @s time matches 0 unless entity @e[type=area_effect_cloud,tag=keyframe,scores={temp=2}] run scoreboard players set @e[type=area_effect_cloud,tag=keyframe,scores={temp=1}] temp 3
execute as @e[type=area_effect_cloud,tag=keyframe,scores={temp=3}] run scoreboard players remove @s time 1
execute as @e[type=area_effect_cloud,tag=keyframe,scores={temp=3}] run scoreboard players remove @e[type=armor_stand,tag=block,scores={temp=1}] time 1
execute as @e[type=area_effect_cloud,tag=keyframe,scores={temp=3}] run scoreboard players set @e[type=armor_stand,tag=block,scores={temp=1}] global 1
scoreboard players set @e[type=armor_stand,tag=block] temp 0
scoreboard players set @e[type=area_effect_cloud,tag=keyframe] temp 0

## jump to previous keyframe
execute as @e[type=area_effect_cloud,tag=ray,tag=execute,scores={edit=51}] at @s positioned ~ ~-0.75 ~ as @e[type=armor_stand,tag=block,tag=has_keyframe,tag=!hidden,distance=..0.5,limit=1] run scoreboard players set @s temp 1
execute as @e[type=area_effect_cloud,tag=keyframe] if score @s parent_uuid_0 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_0 if score @s parent_uuid_1 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_1 if score @s parent_uuid_2 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_2 if score @s parent_uuid_3 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_3 run scoreboard players set @s temp 2
execute as @e[type=armor_stand,tag=block,scores={temp=1}] unless score @s time matches 0 run scoreboard players remove @s time 1
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run scoreboard players operation #temp global = @s time
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run function blockbuster:keyframe/from_pos
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run scoreboard players operation #temp global = @s time
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run function blockbuster:keyframe/from_rot
execute as @e[type=armor_stand,tag=block,scores={temp=1}] if score @s from_pos_time >= @s from_rot_time run scoreboard players operation @s time = @s from_pos_time
execute as @e[type=armor_stand,tag=block,scores={temp=1}] if score @s from_pos_time < @s from_rot_time run scoreboard players operation @s time = @s from_rot_time
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run scoreboard players set @s global 1
scoreboard players set @e[type=armor_stand,tag=block] temp 0

## jump to next keyframe
execute as @e[type=area_effect_cloud,tag=ray,tag=execute,scores={edit=52}] at @s positioned ~ ~-0.75 ~ as @e[type=armor_stand,tag=block,tag=has_keyframe,tag=!hidden,distance=..0.5,limit=1] run scoreboard players set @s temp 1
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run scoreboard players operation #temp global = @s time
execute as @e[type=armor_stand,tag=block,scores={temp=1}] if score @s to_pos_time <= @s to_rot_time run scoreboard players operation @s time = @s to_pos_time
execute as @e[type=armor_stand,tag=block,scores={temp=1}] if score @s to_pos_time > @s to_rot_time run scoreboard players operation @s time = @s to_rot_time
execute as @e[type=area_effect_cloud,tag=keyframe] if score @s parent_uuid_0 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_0 if score @s parent_uuid_1 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_1 if score @s parent_uuid_2 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_2 if score @s parent_uuid_3 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_3 if score @s time = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] anim_length run scoreboard players set @e[type=armor_stand,tag=block,scores={temp=1},limit=1] temp 2
execute as @e[type=armor_stand,tag=block,scores={temp=1}] if score @s time = @s anim_length run scoreboard players operation @s time = #temp global
execute as @e[type=armor_stand,tag=block,scores={temp=1..2}] run scoreboard players set @s global 1
scoreboard players set @e[type=armor_stand,tag=block] temp 0

# update parent
function blockbuster:parent/send_to_parent
execute as @e[type=armor_stand,tag=block] run scoreboard players set @s global 0

# new keyframe

## position
execute as @e[type=area_effect_cloud,tag=ray,tag=execute,scores={edit=29}] at @s positioned ~ ~-0.75 ~ as @e[type=armor_stand,tag=block,tag=!hidden,distance=..0.5,limit=1] run scoreboard players set @s temp 1
execute as @e[type=armor_stand,tag=block,scores={temp=1}] at @s run summon area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["new_keyframe"]}
scoreboard players operation @e[type=area_effect_cloud,tag=new_keyframe] parent_uuid_0 = @e[type=armor_stand,tag=block,scores={temp=1}] self_uuid_0
scoreboard players operation @e[type=area_effect_cloud,tag=new_keyframe] parent_uuid_1 = @e[type=armor_stand,tag=block,scores={temp=1}] self_uuid_1
scoreboard players operation @e[type=area_effect_cloud,tag=new_keyframe] parent_uuid_2 = @e[type=armor_stand,tag=block,scores={temp=1}] self_uuid_2
scoreboard players operation @e[type=area_effect_cloud,tag=new_keyframe] parent_uuid_3 = @e[type=armor_stand,tag=block,scores={temp=1}] self_uuid_3
scoreboard players operation @e[type=area_effect_cloud,tag=new_keyframe] time = @e[type=armor_stand,tag=block,scores={temp=1}] time
scoreboard players operation @e[type=area_effect_cloud,tag=new_keyframe] initial_pos_x = @e[type=armor_stand,tag=block,scores={temp=1}] initial_pos_x
scoreboard players operation @e[type=area_effect_cloud,tag=new_keyframe] initial_pos_y = @e[type=armor_stand,tag=block,scores={temp=1}] initial_pos_y
scoreboard players operation @e[type=area_effect_cloud,tag=new_keyframe] initial_pos_z = @e[type=armor_stand,tag=block,scores={temp=1}] initial_pos_z
scoreboard players set @e[type=area_effect_cloud,tag=new_keyframe] keyframe_type 1
scoreboard players set @e[type=area_effect_cloud,tag=new_keyframe] transition_type 1
tag @e[tag=new_keyframe] add keyframe
tag @e[tag=new_keyframe] remove new_keyframe
scoreboard players set @e[type=armor_stand,tag=block] temp 0

## rotation
execute as @e[type=area_effect_cloud,tag=ray,tag=execute,scores={edit=30}] at @s positioned ~ ~-0.75 ~ as @e[type=armor_stand,tag=block,tag=!hidden,distance=..0.5,limit=1] run scoreboard players set @s temp 1
execute as @e[type=armor_stand,tag=block,scores={temp=1}] at @s run summon area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["new_keyframe"]}
scoreboard players operation @e[type=area_effect_cloud,tag=new_keyframe] parent_uuid_0 = @e[type=armor_stand,tag=block,scores={temp=1}] self_uuid_0
scoreboard players operation @e[type=area_effect_cloud,tag=new_keyframe] parent_uuid_1 = @e[type=armor_stand,tag=block,scores={temp=1}] self_uuid_1
scoreboard players operation @e[type=area_effect_cloud,tag=new_keyframe] parent_uuid_2 = @e[type=armor_stand,tag=block,scores={temp=1}] self_uuid_2
scoreboard players operation @e[type=area_effect_cloud,tag=new_keyframe] parent_uuid_3 = @e[type=armor_stand,tag=block,scores={temp=1}] self_uuid_3
scoreboard players operation @e[type=area_effect_cloud,tag=new_keyframe] time = @e[type=armor_stand,tag=block,scores={temp=1}] time
scoreboard players operation @e[type=area_effect_cloud,tag=new_keyframe] initial_rot_x = @e[type=armor_stand,tag=block,scores={temp=1}] initial_rot_x
scoreboard players operation @e[type=area_effect_cloud,tag=new_keyframe] initial_rot_y = @e[type=armor_stand,tag=block,scores={temp=1}] initial_rot_y
scoreboard players operation @e[type=area_effect_cloud,tag=new_keyframe] initial_rot_z = @e[type=armor_stand,tag=block,scores={temp=1}] initial_rot_z
scoreboard players set @e[type=area_effect_cloud,tag=new_keyframe] keyframe_type 3
scoreboard players set @e[type=area_effect_cloud,tag=new_keyframe] transition_type 1
tag @e[tag=new_keyframe] add keyframe
tag @e[tag=new_keyframe] remove new_keyframe
scoreboard players set @e[type=armor_stand,tag=block] temp 0

## position and rotation
execute as @e[type=area_effect_cloud,tag=ray,tag=execute,scores={edit=31}] at @s positioned ~ ~-0.75 ~ as @e[type=armor_stand,tag=block,tag=!hidden,distance=..0.5,limit=1] run scoreboard players set @s temp 1
execute as @e[type=armor_stand,tag=block,scores={temp=1}] at @s run summon area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["new_keyframe"]}
scoreboard players operation @e[type=area_effect_cloud,tag=new_keyframe] parent_uuid_0 = @e[type=armor_stand,tag=block,scores={temp=1}] self_uuid_0
scoreboard players operation @e[type=area_effect_cloud,tag=new_keyframe] parent_uuid_1 = @e[type=armor_stand,tag=block,scores={temp=1}] self_uuid_1
scoreboard players operation @e[type=area_effect_cloud,tag=new_keyframe] parent_uuid_2 = @e[type=armor_stand,tag=block,scores={temp=1}] self_uuid_2
scoreboard players operation @e[type=area_effect_cloud,tag=new_keyframe] parent_uuid_3 = @e[type=armor_stand,tag=block,scores={temp=1}] self_uuid_3
scoreboard players operation @e[type=area_effect_cloud,tag=new_keyframe] time = @e[type=armor_stand,tag=block,scores={temp=1}] time
scoreboard players operation @e[type=area_effect_cloud,tag=new_keyframe] initial_pos_x = @e[type=armor_stand,tag=block,scores={temp=1}] initial_pos_x
scoreboard players operation @e[type=area_effect_cloud,tag=new_keyframe] initial_pos_y = @e[type=armor_stand,tag=block,scores={temp=1}] initial_pos_y
scoreboard players operation @e[type=area_effect_cloud,tag=new_keyframe] initial_pos_z = @e[type=armor_stand,tag=block,scores={temp=1}] initial_pos_z
scoreboard players operation @e[type=area_effect_cloud,tag=new_keyframe] initial_rot_x = @e[type=armor_stand,tag=block,scores={temp=1}] initial_rot_x
scoreboard players operation @e[type=area_effect_cloud,tag=new_keyframe] initial_rot_y = @e[type=armor_stand,tag=block,scores={temp=1}] initial_rot_y
scoreboard players operation @e[type=area_effect_cloud,tag=new_keyframe] initial_rot_z = @e[type=armor_stand,tag=block,scores={temp=1}] initial_rot_z
scoreboard players set @e[type=area_effect_cloud,tag=new_keyframe] keyframe_type 2
scoreboard players set @e[type=area_effect_cloud,tag=new_keyframe] transition_type 1
tag @e[tag=new_keyframe] add keyframe
tag @e[tag=new_keyframe] remove new_keyframe
scoreboard players set @e[type=armor_stand,tag=block] temp 0

# test for keyframe at time
execute as @e[type=area_effect_cloud,tag=ray] at @s positioned ~ ~-0.75 ~ as @e[type=armor_stand,tag=block,tag=!hidden,distance=..0.5,limit=1] run scoreboard players set @s temp 1
scoreboard players set @e[type=armor_stand,tag=block] keyframe_type 0
execute as @e[type=area_effect_cloud,tag=keyframe] if score @s parent_uuid_0 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_0 if score @s parent_uuid_1 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_1 if score @s parent_uuid_2 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_2 if score @s parent_uuid_3 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_3 if score @s time = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] time run scoreboard players set @e[type=armor_stand,tag=block,scores={temp=1}] keyframe_type 1
scoreboard players set @e[type=armor_stand,tag=block] temp 0

# remove keyframe
execute as @e[type=area_effect_cloud,tag=ray,tag=execute,scores={edit=32}] at @s positioned ~ ~-0.75 ~ as @e[type=armor_stand,tag=block,tag=!hidden,distance=..0.5,limit=1] run scoreboard players set @s temp 1
execute as @e[type=area_effect_cloud,tag=keyframe] if score @s parent_uuid_0 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_0 if score @s parent_uuid_1 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_1 if score @s parent_uuid_2 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_2 if score @s parent_uuid_3 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_3 if score @s time = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] time run kill @s
scoreboard players set @e[type=armor_stand,tag=block] temp 0

# change transition type

## linear
execute as @e[type=area_effect_cloud,tag=ray,tag=execute,scores={edit=34}] at @s positioned ~ ~-0.75 ~ as @e[type=armor_stand,tag=block,tag=!hidden,distance=..0.5,limit=1] run scoreboard players set @s temp 1
execute as @e[type=area_effect_cloud,tag=keyframe] if score @s parent_uuid_0 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_0 if score @s parent_uuid_1 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_1 if score @s parent_uuid_2 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_2 if score @s parent_uuid_3 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_3 if score @s time = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] time run scoreboard players set @s transition_type 1
scoreboard players set @e[type=armor_stand,tag=block] temp 0

## ease in
execute as @e[type=area_effect_cloud,tag=ray,tag=execute,scores={edit=35}] at @s positioned ~ ~-0.75 ~ as @e[type=armor_stand,tag=block,tag=!hidden,distance=..0.5,limit=1] run scoreboard players set @s temp 1
execute as @e[type=area_effect_cloud,tag=keyframe] if score @s parent_uuid_0 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_0 if score @s parent_uuid_1 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_1 if score @s parent_uuid_2 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_2 if score @s parent_uuid_3 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_3 if score @s time = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] time run scoreboard players set @s transition_type 2
scoreboard players set @e[type=armor_stand,tag=block] temp 0

## ease out
execute as @e[type=area_effect_cloud,tag=ray,tag=execute,scores={edit=36}] at @s positioned ~ ~-0.75 ~ as @e[type=armor_stand,tag=block,tag=!hidden,distance=..0.5,limit=1] run scoreboard players set @s temp 1
execute as @e[type=area_effect_cloud,tag=keyframe] if score @s parent_uuid_0 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_0 if score @s parent_uuid_1 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_1 if score @s parent_uuid_2 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_2 if score @s parent_uuid_3 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_3 if score @s time = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] time run scoreboard players set @s transition_type 3
scoreboard players set @e[type=armor_stand,tag=block] temp 0

## ease in and out
execute as @e[type=area_effect_cloud,tag=ray,tag=execute,scores={edit=37}] at @s positioned ~ ~-0.75 ~ as @e[type=armor_stand,tag=block,tag=!hidden,distance=..0.5,limit=1] run scoreboard players set @s temp 1
execute as @e[type=area_effect_cloud,tag=keyframe] if score @s parent_uuid_0 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_0 if score @s parent_uuid_1 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_1 if score @s parent_uuid_2 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_2 if score @s parent_uuid_3 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_3 if score @s time = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] time run scoreboard players set @s transition_type 4
scoreboard players set @e[type=armor_stand,tag=block] temp 0

## constant
execute as @e[type=area_effect_cloud,tag=ray,tag=execute,scores={edit=38}] at @s positioned ~ ~-0.75 ~ as @e[type=armor_stand,tag=block,tag=!hidden,distance=..0.5,limit=1] run scoreboard players set @s temp 1
execute as @e[type=area_effect_cloud,tag=keyframe] if score @s parent_uuid_0 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_0 if score @s parent_uuid_1 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_1 if score @s parent_uuid_2 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_2 if score @s parent_uuid_3 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_3 if score @s time = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] time run scoreboard players set @s transition_type 5
scoreboard players set @e[type=armor_stand,tag=block] temp 0

# collision box
execute as @e[type=area_effect_cloud,tag=ray,tag=execute,scores={edit=57}] at @s positioned ~ ~-0.75 ~ as @e[type=armor_stand,tag=block,tag=!hidden,distance=..0.5,limit=1] run tag @s add has_collision
execute as @e[type=area_effect_cloud,tag=ray,tag=execute,scores={edit=58}] at @s positioned ~ ~-0.75 ~ as @e[type=armor_stand,tag=block,tag=!hidden,distance=..0.5,limit=1] run tag @s remove has_collision

# transform and timeline text
execute as @e[type=area_effect_cloud,tag=ray] at @s positioned ~ ~-0.75 ~ as @e[type=armor_stand,tag=block,tag=!hidden,distance=..0.5,limit=1] run scoreboard players set @s temp 1

data merge storage blockbuster:main {signs:["","","","","","","","","","","",""]}
data merge storage blockbuster:main {timeline:["","","","","","","","","","","","","","","","","","","",""]}
data merge storage blockbuster:main {timeline_short:["","","","",""]}

scoreboard players operation #x_pos global = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] initial_pos_x
execute if entity @e[type=armor_stand,tag=block,tag=!has_parent,scores={temp=1}] run scoreboard players remove #x_pos global 500
execute if entity @e[type=armor_stand,tag=block,tag=!has_parent,scores={temp=1}] if score #x_pos global matches ..-1 run data modify storage blockbuster:main signs[0] set value "-"
execute if entity @e[type=armor_stand,tag=block,tag=has_parent,scores={temp=1}] if score #x_pos global matches 1.. run data modify storage blockbuster:main signs[0] set value "-"
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

scoreboard players operation #y_pos global = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] initial_pos_y
execute if entity @e[type=armor_stand,tag=block,tag=!has_parent,scores={temp=1}] run scoreboard players add #y_pos global 226
execute if score #y_pos global matches ..-1 run data modify storage blockbuster:main signs[1] set value "-"
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

scoreboard players operation #z_pos global = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] initial_pos_z
execute if entity @e[type=armor_stand,tag=block,tag=!has_parent,scores={temp=1}] run scoreboard players remove #z_pos global 500
execute if score #z_pos global matches ..-1 run data modify storage blockbuster:main signs[2] set value "-"
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
execute if score #x_rot global matches ..-1 run data modify storage blockbuster:main signs[3] set value "-"
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
execute if score #y_rot global matches 1.. run data modify storage blockbuster:main signs[4] set value "-"
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
execute if score #z_rot global matches 1.. run data modify storage blockbuster:main signs[5] set value "-"
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

scoreboard players operation #anim_length global = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] anim_length
scoreboard players operation #anim_length_int global = #anim_length global
scoreboard players operation #anim_length_int global /= #20 constants
scoreboard players operation #anim_length_dec_0 global = #anim_length global
scoreboard players operation #anim_length_dec_0 global %= #20 constants
scoreboard players operation #anim_length_dec_0 global /= #2 constants
scoreboard players operation #anim_length_dec_1 global = #anim_length global
scoreboard players operation #anim_length_dec_1 global %= #2 constants
scoreboard players operation #anim_length_dec_1 global *= #5 constants

scoreboard players operation #time global = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] time
scoreboard players operation #time_int global = #time global
scoreboard players operation #time_int global /= #20 constants
scoreboard players operation #time_dec_0 global = #time global
scoreboard players operation #time_dec_0 global %= #20 constants
scoreboard players operation #time_dec_0 global /= #2 constants
scoreboard players operation #time_dec_1 global = #time global
scoreboard players operation #time_dec_1 global %= #2 constants
scoreboard players operation #time_dec_1 global *= #5 constants

scoreboard players operation #progress global = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] time
scoreboard players operation #progress global *= #100 constants
scoreboard players operation #progress global /= @e[type=armor_stand,tag=block,scores={temp=1},limit=1] anim_length

data modify storage blockbuster:strings position set value "[{\"text\":\"[\",\"color\":\"#202020\"},{\"storage\":\"blockbuster:main\",\"nbt\":\"signs[0]\",\"color\":\"dark_red\"},{\"score\":{\"name\":\"#x_pos_int\",\"objective\":\"global\"},\"color\":\"dark_red\"},{\"text\":\".\",\"color\":\"dark_red\"},{\"score\":{\"name\":\"#x_pos_dec_0\",\"objective\":\"global\"},\"color\":\"dark_red\"},{\"score\":{\"name\":\"#x_pos_dec_1\",\"objective\":\"global\"},\"color\":\"dark_red\"},{\"score\":{\"name\":\"#x_pos_dec_2\",\"objective\":\"global\"},\"color\":\"dark_red\"},{\"text\":\", \",\"color\":\"#202020\"},{\"storage\":\"blockbuster:main\",\"nbt\":\"signs[1]\",\"color\":\"dark_green\"},{\"score\":{\"name\":\"#y_pos_int\",\"objective\":\"global\"},\"color\":\"dark_green\"},{\"text\":\".\",\"color\":\"dark_green\"},{\"score\":{\"name\":\"#y_pos_dec_0\",\"objective\":\"global\"},\"color\":\"dark_green\"},{\"score\":{\"name\":\"#y_pos_dec_1\",\"objective\":\"global\"},\"color\":\"dark_green\"},{\"score\":{\"name\":\"#y_pos_dec_2\",\"objective\":\"global\"},\"color\":\"dark_green\"},{\"text\":\", \",\"color\":\"#202020\"},{\"storage\":\"blockbuster:main\",\"nbt\":\"signs[2]\",\"color\":\"dark_blue\"},{\"score\":{\"name\":\"#z_pos_int\",\"objective\":\"global\"},\"color\":\"dark_blue\"},{\"text\":\".\",\"color\":\"dark_blue\"},{\"score\":{\"name\":\"#z_pos_dec_0\",\"objective\":\"global\"},\"color\":\"dark_blue\"},{\"score\":{\"name\":\"#z_pos_dec_1\",\"objective\":\"global\"},\"color\":\"dark_blue\"},{\"score\":{\"name\":\"#z_pos_dec_2\",\"objective\":\"global\"},\"color\":\"dark_blue\"},{\"text\":\"]\",\"color\":\"#202020\"}]"
data modify storage blockbuster:strings rotation set value "[{\"text\":\"[\",\"color\":\"#202020\"},{\"storage\":\"blockbuster:main\",\"nbt\":\"signs[3]\",\"color\":\"dark_red\"},{\"score\":{\"name\":\"#x_rot_int\",\"objective\":\"global\"},\"color\":\"dark_red\"},{\"text\":\".\",\"color\":\"dark_red\"},{\"score\":{\"name\":\"#x_rot_dec_0\",\"objective\":\"global\"},\"color\":\"dark_red\"},{\"score\":{\"name\":\"#x_rot_dec_1\",\"objective\":\"global\"},\"color\":\"dark_red\"},{\"score\":{\"name\":\"#x_rot_dec_2\",\"objective\":\"global\"},\"color\":\"dark_red\"},{\"text\":\", \",\"color\":\"#202020\"},{\"storage\":\"blockbuster:main\",\"nbt\":\"signs[4]\",\"color\":\"dark_green\"},{\"score\":{\"name\":\"#y_rot_int\",\"objective\":\"global\"},\"color\":\"dark_green\"},{\"text\":\".\",\"color\":\"dark_green\"},{\"score\":{\"name\":\"#y_rot_dec_0\",\"objective\":\"global\"},\"color\":\"dark_green\"},{\"score\":{\"name\":\"#y_rot_dec_1\",\"objective\":\"global\"},\"color\":\"dark_green\"},{\"score\":{\"name\":\"#y_rot_dec_2\",\"objective\":\"global\"},\"color\":\"dark_green\"},{\"text\":\", \",\"color\":\"#202020\"},{\"storage\":\"blockbuster:main\",\"nbt\":\"signs[5]\",\"color\":\"dark_blue\"},{\"score\":{\"name\":\"#z_rot_int\",\"objective\":\"global\"},\"color\":\"dark_blue\"},{\"text\":\".\",\"color\":\"dark_blue\"},{\"score\":{\"name\":\"#z_rot_dec_0\",\"objective\":\"global\"},\"color\":\"dark_blue\"},{\"score\":{\"name\":\"#z_rot_dec_1\",\"objective\":\"global\"},\"color\":\"dark_blue\"},{\"score\":{\"name\":\"#z_rot_dec_2\",\"objective\":\"global\"},\"color\":\"dark_blue\"},{\"text\":\"]\",\"color\":\"#202020\"}]"

data modify storage blockbuster:main timeline[0] set value "{\"text\":\"-\",\"color\":\"light_purple\"}"
data modify storage blockbuster:main timeline[1] set value "{\"text\":\"-\",\"color\":\"light_purple\"}"
data modify storage blockbuster:main timeline[2] set value "{\"text\":\"-\",\"color\":\"light_purple\"}"
data modify storage blockbuster:main timeline[3] set value "{\"text\":\"-\",\"color\":\"light_purple\"}"
data modify storage blockbuster:main timeline[4] set value "{\"text\":\"-\",\"color\":\"light_purple\"}"
data modify storage blockbuster:main timeline[5] set value "{\"text\":\"-\",\"color\":\"light_purple\"}"
data modify storage blockbuster:main timeline[6] set value "{\"text\":\"-\",\"color\":\"light_purple\"}"
data modify storage blockbuster:main timeline[7] set value "{\"text\":\"-\",\"color\":\"light_purple\"}"
data modify storage blockbuster:main timeline[8] set value "{\"text\":\"-\",\"color\":\"light_purple\"}"
data modify storage blockbuster:main timeline[9] set value "{\"text\":\"-\",\"color\":\"light_purple\"}"
data modify storage blockbuster:main timeline[10] set value "{\"text\":\"-\",\"color\":\"light_purple\"}"
data modify storage blockbuster:main timeline[11] set value "{\"text\":\"-\",\"color\":\"light_purple\"}"
data modify storage blockbuster:main timeline[12] set value "{\"text\":\"-\",\"color\":\"light_purple\"}"
data modify storage blockbuster:main timeline[13] set value "{\"text\":\"-\",\"color\":\"light_purple\"}"
data modify storage blockbuster:main timeline[14] set value "{\"text\":\"-\",\"color\":\"light_purple\"}"
data modify storage blockbuster:main timeline[15] set value "{\"text\":\"-\",\"color\":\"light_purple\"}"
data modify storage blockbuster:main timeline[16] set value "{\"text\":\"-\",\"color\":\"light_purple\"}"
data modify storage blockbuster:main timeline[17] set value "{\"text\":\"-\",\"color\":\"light_purple\"}"
data modify storage blockbuster:main timeline[18] set value "{\"text\":\"-\",\"color\":\"light_purple\"}"
data modify storage blockbuster:main timeline[19] set value "{\"text\":\"-\",\"color\":\"light_purple\"}"

execute if score #progress global matches ..4 if score @e[type=armor_stand,tag=block,scores={temp=1},limit=1] keyframe_type matches 0 run data modify storage blockbuster:main timeline[0] set value "[{\"text\":\"<\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_int\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\".\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_dec_0\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_dec_1\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\">\",\"color\":\"light_purple\"}]"
execute if score #progress global matches 5..9 if score @e[type=armor_stand,tag=block,scores={temp=1},limit=1] keyframe_type matches 0 run data modify storage blockbuster:main timeline[1] set value "[{\"text\":\"<\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_int\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\".\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_dec_0\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_dec_1\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\">\",\"color\":\"light_purple\"}]"
execute if score #progress global matches 10..14 if score @e[type=armor_stand,tag=block,scores={temp=1},limit=1] keyframe_type matches 0 run data modify storage blockbuster:main timeline[2] set value "[{\"text\":\"<\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_int\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\".\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_dec_0\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_dec_1\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\">\",\"color\":\"light_purple\"}]"
execute if score #progress global matches 15..19 if score @e[type=armor_stand,tag=block,scores={temp=1},limit=1] keyframe_type matches 0 run data modify storage blockbuster:main timeline[3] set value "[{\"text\":\"<\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_int\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\".\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_dec_0\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_dec_1\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\">\",\"color\":\"light_purple\"}]"
execute if score #progress global matches 20..24 if score @e[type=armor_stand,tag=block,scores={temp=1},limit=1] keyframe_type matches 0 run data modify storage blockbuster:main timeline[4] set value "[{\"text\":\"<\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_int\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\".\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_dec_0\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_dec_1\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\">\",\"color\":\"light_purple\"}]"
execute if score #progress global matches 25..29 if score @e[type=armor_stand,tag=block,scores={temp=1},limit=1] keyframe_type matches 0 run data modify storage blockbuster:main timeline[5] set value "[{\"text\":\"<\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_int\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\".\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_dec_0\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_dec_1\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\">\",\"color\":\"light_purple\"}]"
execute if score #progress global matches 30..34 if score @e[type=armor_stand,tag=block,scores={temp=1},limit=1] keyframe_type matches 0 run data modify storage blockbuster:main timeline[6] set value "[{\"text\":\"<\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_int\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\".\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_dec_0\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_dec_1\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\">\",\"color\":\"light_purple\"}]"
execute if score #progress global matches 35..39 if score @e[type=armor_stand,tag=block,scores={temp=1},limit=1] keyframe_type matches 0 run data modify storage blockbuster:main timeline[7] set value "[{\"text\":\"<\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_int\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\".\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_dec_0\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_dec_1\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\">\",\"color\":\"light_purple\"}]"
execute if score #progress global matches 40..44 if score @e[type=armor_stand,tag=block,scores={temp=1},limit=1] keyframe_type matches 0 run data modify storage blockbuster:main timeline[8] set value "[{\"text\":\"<\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_int\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\".\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_dec_0\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_dec_1\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\">\",\"color\":\"light_purple\"}]"
execute if score #progress global matches 45..49 if score @e[type=armor_stand,tag=block,scores={temp=1},limit=1] keyframe_type matches 0 run data modify storage blockbuster:main timeline[9] set value "[{\"text\":\"<\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_int\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\".\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_dec_0\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_dec_1\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\">\",\"color\":\"light_purple\"}]"
execute if score #progress global matches 50..54 if score @e[type=armor_stand,tag=block,scores={temp=1},limit=1] keyframe_type matches 0 run data modify storage blockbuster:main timeline[10] set value "[{\"text\":\"<\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_int\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\".\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_dec_0\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_dec_1\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\">\",\"color\":\"light_purple\"}]"
execute if score #progress global matches 55..59 if score @e[type=armor_stand,tag=block,scores={temp=1},limit=1] keyframe_type matches 0 run data modify storage blockbuster:main timeline[11] set value "[{\"text\":\"<\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_int\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\".\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_dec_0\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_dec_1\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\">\",\"color\":\"light_purple\"}]"
execute if score #progress global matches 60..64 if score @e[type=armor_stand,tag=block,scores={temp=1},limit=1] keyframe_type matches 0 run data modify storage blockbuster:main timeline[12] set value "[{\"text\":\"<\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_int\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\".\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_dec_0\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_dec_1\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\">\",\"color\":\"light_purple\"}]"
execute if score #progress global matches 65..69 if score @e[type=armor_stand,tag=block,scores={temp=1},limit=1] keyframe_type matches 0 run data modify storage blockbuster:main timeline[13] set value "[{\"text\":\"<\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_int\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\".\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_dec_0\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_dec_1\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\">\",\"color\":\"light_purple\"}]"
execute if score #progress global matches 70..74 if score @e[type=armor_stand,tag=block,scores={temp=1},limit=1] keyframe_type matches 0 run data modify storage blockbuster:main timeline[14] set value "[{\"text\":\"<\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_int\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\".\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_dec_0\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_dec_1\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\">\",\"color\":\"light_purple\"}]"
execute if score #progress global matches 75..79 if score @e[type=armor_stand,tag=block,scores={temp=1},limit=1] keyframe_type matches 0 run data modify storage blockbuster:main timeline[15] set value "[{\"text\":\"<\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_int\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\".\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_dec_0\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_dec_1\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\">\",\"color\":\"light_purple\"}]"
execute if score #progress global matches 80..84 if score @e[type=armor_stand,tag=block,scores={temp=1},limit=1] keyframe_type matches 0 run data modify storage blockbuster:main timeline[16] set value "[{\"text\":\"<\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_int\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\".\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_dec_0\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_dec_1\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\">\",\"color\":\"light_purple\"}]"
execute if score #progress global matches 85..89 if score @e[type=armor_stand,tag=block,scores={temp=1},limit=1] keyframe_type matches 0 run data modify storage blockbuster:main timeline[17] set value "[{\"text\":\"<\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_int\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\".\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_dec_0\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_dec_1\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\">\",\"color\":\"light_purple\"}]"
execute if score #progress global matches 90..94 if score @e[type=armor_stand,tag=block,scores={temp=1},limit=1] keyframe_type matches 0 run data modify storage blockbuster:main timeline[18] set value "[{\"text\":\"<\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_int\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\".\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_dec_0\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_dec_1\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\">\",\"color\":\"light_purple\"}]"
execute if score #progress global matches 95..100 if score @e[type=armor_stand,tag=block,scores={temp=1},limit=1] keyframe_type matches 0 run data modify storage blockbuster:main timeline[19] set value "[{\"text\":\"<\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_int\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\".\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_dec_0\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_dec_1\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\">\",\"color\":\"light_purple\"}]"

execute if score #progress global matches ..4 if score @e[type=armor_stand,tag=block,scores={temp=1},limit=1] keyframe_type matches 1 run data modify storage blockbuster:main timeline[0] set value "[{\"text\":\"<\",\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_int\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"text\":\".\",\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_dec_0\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_dec_1\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"text\":\">\",\"color\":\"#663bb3\"}]"
execute if score #progress global matches 5..9 if score @e[type=armor_stand,tag=block,scores={temp=1},limit=1] keyframe_type matches 1 run data modify storage blockbuster:main timeline[1] set value "[{\"text\":\"<\",\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_int\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"text\":\".\",\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_dec_0\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_dec_1\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"text\":\">\",\"color\":\"#663bb3\"}]"
execute if score #progress global matches 10..14 if score @e[type=armor_stand,tag=block,scores={temp=1},limit=1] keyframe_type matches 1 run data modify storage blockbuster:main timeline[2] set value "[{\"text\":\"<\",\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_int\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"text\":\".\",\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_dec_0\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_dec_1\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"text\":\">\",\"color\":\"#663bb3\"}]"
execute if score #progress global matches 15..19 if score @e[type=armor_stand,tag=block,scores={temp=1},limit=1] keyframe_type matches 1 run data modify storage blockbuster:main timeline[3] set value "[{\"text\":\"<\",\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_int\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"text\":\".\",\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_dec_0\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_dec_1\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"text\":\">\",\"color\":\"#663bb3\"}]"
execute if score #progress global matches 20..24 if score @e[type=armor_stand,tag=block,scores={temp=1},limit=1] keyframe_type matches 1 run data modify storage blockbuster:main timeline[4] set value "[{\"text\":\"<\",\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_int\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"text\":\".\",\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_dec_0\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_dec_1\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"text\":\">\",\"color\":\"#663bb3\"}]"
execute if score #progress global matches 25..29 if score @e[type=armor_stand,tag=block,scores={temp=1},limit=1] keyframe_type matches 1 run data modify storage blockbuster:main timeline[5] set value "[{\"text\":\"<\",\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_int\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"text\":\".\",\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_dec_0\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_dec_1\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"text\":\">\",\"color\":\"#663bb3\"}]"
execute if score #progress global matches 30..34 if score @e[type=armor_stand,tag=block,scores={temp=1},limit=1] keyframe_type matches 1 run data modify storage blockbuster:main timeline[6] set value "[{\"text\":\"<\",\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_int\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"text\":\".\",\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_dec_0\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_dec_1\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"text\":\">\",\"color\":\"#663bb3\"}]"
execute if score #progress global matches 35..39 if score @e[type=armor_stand,tag=block,scores={temp=1},limit=1] keyframe_type matches 1 run data modify storage blockbuster:main timeline[7] set value "[{\"text\":\"<\",\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_int\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"text\":\".\",\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_dec_0\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_dec_1\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"text\":\">\",\"color\":\"#663bb3\"}]"
execute if score #progress global matches 40..44 if score @e[type=armor_stand,tag=block,scores={temp=1},limit=1] keyframe_type matches 1 run data modify storage blockbuster:main timeline[8] set value "[{\"text\":\"<\",\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_int\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"text\":\".\",\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_dec_0\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_dec_1\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"text\":\">\",\"color\":\"#663bb3\"}]"
execute if score #progress global matches 45..49 if score @e[type=armor_stand,tag=block,scores={temp=1},limit=1] keyframe_type matches 1 run data modify storage blockbuster:main timeline[9] set value "[{\"text\":\"<\",\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_int\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"text\":\".\",\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_dec_0\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_dec_1\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"text\":\">\",\"color\":\"#663bb3\"}]"
execute if score #progress global matches 50..54 if score @e[type=armor_stand,tag=block,scores={temp=1},limit=1] keyframe_type matches 1 run data modify storage blockbuster:main timeline[10] set value "[{\"text\":\"<\",\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_int\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"text\":\".\",\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_dec_0\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_dec_1\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"text\":\">\",\"color\":\"#663bb3\"}]"
execute if score #progress global matches 55..59 if score @e[type=armor_stand,tag=block,scores={temp=1},limit=1] keyframe_type matches 1 run data modify storage blockbuster:main timeline[11] set value "[{\"text\":\"<\",\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_int\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"text\":\".\",\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_dec_0\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_dec_1\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"text\":\">\",\"color\":\"#663bb3\"}]"
execute if score #progress global matches 60..64 if score @e[type=armor_stand,tag=block,scores={temp=1},limit=1] keyframe_type matches 1 run data modify storage blockbuster:main timeline[12] set value "[{\"text\":\"<\",\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_int\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"text\":\".\",\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_dec_0\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_dec_1\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"text\":\">\",\"color\":\"#663bb3\"}]"
execute if score #progress global matches 65..69 if score @e[type=armor_stand,tag=block,scores={temp=1},limit=1] keyframe_type matches 1 run data modify storage blockbuster:main timeline[13] set value "[{\"text\":\"<\",\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_int\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"text\":\".\",\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_dec_0\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_dec_1\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"text\":\">\",\"color\":\"#663bb3\"}]"
execute if score #progress global matches 70..74 if score @e[type=armor_stand,tag=block,scores={temp=1},limit=1] keyframe_type matches 1 run data modify storage blockbuster:main timeline[14] set value "[{\"text\":\"<\",\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_int\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"text\":\".\",\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_dec_0\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_dec_1\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"text\":\">\",\"color\":\"#663bb3\"}]"
execute if score #progress global matches 75..79 if score @e[type=armor_stand,tag=block,scores={temp=1},limit=1] keyframe_type matches 1 run data modify storage blockbuster:main timeline[15] set value "[{\"text\":\"<\",\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_int\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"text\":\".\",\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_dec_0\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_dec_1\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"text\":\">\",\"color\":\"#663bb3\"}]"
execute if score #progress global matches 80..84 if score @e[type=armor_stand,tag=block,scores={temp=1},limit=1] keyframe_type matches 1 run data modify storage blockbuster:main timeline[16] set value "[{\"text\":\"<\",\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_int\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"text\":\".\",\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_dec_0\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_dec_1\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"text\":\">\",\"color\":\"#663bb3\"}]"
execute if score #progress global matches 85..89 if score @e[type=armor_stand,tag=block,scores={temp=1},limit=1] keyframe_type matches 1 run data modify storage blockbuster:main timeline[17] set value "[{\"text\":\"<\",\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_int\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"text\":\".\",\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_dec_0\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_dec_1\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"text\":\">\",\"color\":\"#663bb3\"}]"
execute if score #progress global matches 90..94 if score @e[type=armor_stand,tag=block,scores={temp=1},limit=1] keyframe_type matches 1 run data modify storage blockbuster:main timeline[18] set value "[{\"text\":\"<\",\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_int\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"text\":\".\",\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_dec_0\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_dec_1\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"text\":\">\",\"color\":\"#663bb3\"}]"
execute if score #progress global matches 95..100 if score @e[type=armor_stand,tag=block,scores={temp=1},limit=1] keyframe_type matches 1 run data modify storage blockbuster:main timeline[19] set value "[{\"text\":\"<\",\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_int\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"text\":\".\",\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_dec_0\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_dec_1\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"text\":\">\",\"color\":\"#663bb3\"}]"

data modify storage blockbuster:main timeline_short[0] set value "{\"text\":\"-\",\"color\":\"light_purple\"}"
data modify storage blockbuster:main timeline_short[1] set value "{\"text\":\"-\",\"color\":\"light_purple\"}"
data modify storage blockbuster:main timeline_short[2] set value "{\"text\":\"-\",\"color\":\"light_purple\"}"
data modify storage blockbuster:main timeline_short[3] set value "{\"text\":\"-\",\"color\":\"light_purple\"}"
data modify storage blockbuster:main timeline_short[4] set value "{\"text\":\"-\",\"color\":\"light_purple\"}"

execute if score #progress global matches ..19 if score @e[type=armor_stand,tag=block,scores={temp=1},limit=1] keyframe_type matches 0 run data modify storage blockbuster:main timeline_short[0] set value "[{\"text\":\"<\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_int\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\".\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_dec_0\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_dec_1\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\">\",\"color\":\"light_purple\"}]"
execute if score #progress global matches 20..39 if score @e[type=armor_stand,tag=block,scores={temp=1},limit=1] keyframe_type matches 0 run data modify storage blockbuster:main timeline_short[1] set value "[{\"text\":\"<\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_int\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\".\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_dec_0\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_dec_1\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\">\",\"color\":\"light_purple\"}]"
execute if score #progress global matches 40..59 if score @e[type=armor_stand,tag=block,scores={temp=1},limit=1] keyframe_type matches 0 run data modify storage blockbuster:main timeline_short[2] set value "[{\"text\":\"<\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_int\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\".\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_dec_0\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_dec_1\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\">\",\"color\":\"light_purple\"}]"
execute if score #progress global matches 60..79 if score @e[type=armor_stand,tag=block,scores={temp=1},limit=1] keyframe_type matches 0 run data modify storage blockbuster:main timeline_short[3] set value "[{\"text\":\"<\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_int\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\".\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_dec_0\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_dec_1\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\">\",\"color\":\"light_purple\"}]"
execute if score #progress global matches 80.. if score @e[type=armor_stand,tag=block,scores={temp=1},limit=1] keyframe_type matches 0 run data modify storage blockbuster:main timeline_short[4] set value "[{\"text\":\"<\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_int\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\".\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_dec_0\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_dec_1\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\">\",\"color\":\"light_purple\"}]"

execute if score #progress global matches ..19 if score @e[type=armor_stand,tag=block,scores={temp=1},limit=1] keyframe_type matches 1 run data modify storage blockbuster:main timeline_short[0] set value "[{\"text\":\"<\",\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_int\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"text\":\".\",\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_dec_0\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_dec_1\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"text\":\">\",\"color\":\"#663bb3\"}]"
execute if score #progress global matches 20..39 if score @e[type=armor_stand,tag=block,scores={temp=1},limit=1] keyframe_type matches 1 run data modify storage blockbuster:main timeline_short[1] set value "[{\"text\":\"<\",\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_int\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"text\":\".\",\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_dec_0\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_dec_1\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"text\":\">\",\"color\":\"#663bb3\"}]"
execute if score #progress global matches 40..59 if score @e[type=armor_stand,tag=block,scores={temp=1},limit=1] keyframe_type matches 1 run data modify storage blockbuster:main timeline_short[2] set value "[{\"text\":\"<\",\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_int\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"text\":\".\",\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_dec_0\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_dec_1\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"text\":\">\",\"color\":\"#663bb3\"}]"
execute if score #progress global matches 60..79 if score @e[type=armor_stand,tag=block,scores={temp=1},limit=1] keyframe_type matches 1 run data modify storage blockbuster:main timeline_short[3] set value "[{\"text\":\"<\",\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_int\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"text\":\".\",\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_dec_0\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_dec_1\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"text\":\">\",\"color\":\"#663bb3\"}]"
execute if score #progress global matches 80.. if score @e[type=armor_stand,tag=block,scores={temp=1},limit=1] keyframe_type matches 1 run data modify storage blockbuster:main timeline_short[4] set value "[{\"text\":\"<\",\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_int\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"text\":\".\",\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_dec_0\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_dec_1\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"text\":\">\",\"color\":\"#663bb3\"}]"

data modify storage blockbuster:strings timeline set value "[{\"text\":\"0.00 |\",\"color\":\"light_purple\"},{\"storage\":\"blockbuster:main\",\"nbt\":\"timeline[0]\",\"interpret\":true},{\"storage\":\"blockbuster:main\",\"nbt\":\"timeline[1]\",\"interpret\":true},{\"storage\":\"blockbuster:main\",\"nbt\":\"timeline[2]\",\"interpret\":true},{\"storage\":\"blockbuster:main\",\"nbt\":\"timeline[3]\",\"interpret\":true},{\"storage\":\"blockbuster:main\",\"nbt\":\"timeline[4]\",\"interpret\":true},{\"storage\":\"blockbuster:main\",\"nbt\":\"timeline[5]\",\"interpret\":true},{\"storage\":\"blockbuster:main\",\"nbt\":\"timeline[6]\",\"interpret\":true},{\"storage\":\"blockbuster:main\",\"nbt\":\"timeline[7]\",\"interpret\":true},{\"storage\":\"blockbuster:main\",\"nbt\":\"timeline[8]\",\"interpret\":true},{\"storage\":\"blockbuster:main\",\"nbt\":\"timeline[9]\",\"interpret\":true},{\"storage\":\"blockbuster:main\",\"nbt\":\"timeline[10]\",\"interpret\":true},{\"storage\":\"blockbuster:main\",\"nbt\":\"timeline[11]\",\"interpret\":true},{\"storage\":\"blockbuster:main\",\"nbt\":\"timeline[12]\",\"interpret\":true},{\"storage\":\"blockbuster:main\",\"nbt\":\"timeline[13]\",\"interpret\":true},{\"storage\":\"blockbuster:main\",\"nbt\":\"timeline[14]\",\"interpret\":true},{\"storage\":\"blockbuster:main\",\"nbt\":\"timeline[15]\",\"interpret\":true},{\"storage\":\"blockbuster:main\",\"nbt\":\"timeline[16]\",\"interpret\":true},{\"storage\":\"blockbuster:main\",\"nbt\":\"timeline[17]\",\"interpret\":true},{\"storage\":\"blockbuster:main\",\"nbt\":\"timeline[18]\",\"interpret\":true},{\"storage\":\"blockbuster:main\",\"nbt\":\"timeline[19]\",\"interpret\":true},{\"text\":\"| \",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#anim_length_int\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\".\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#anim_length_dec_0\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"score\":{\"name\":\"#anim_length_dec_1\",\"objective\":\"global\"},\"color\":\"light_purple\"}]"

data modify storage blockbuster:strings timeline_short set value "[{\"text\":\"0.00 |\",\"color\":\"light_purple\"},{\"storage\":\"blockbuster:main\",\"nbt\":\"timeline_short[0]\",\"interpret\":true},{\"storage\":\"blockbuster:main\",\"nbt\":\"timeline_short[1]\",\"interpret\":true},{\"storage\":\"blockbuster:main\",\"nbt\":\"timeline_short[2]\",\"interpret\":true},{\"storage\":\"blockbuster:main\",\"nbt\":\"timeline_short[3]\",\"interpret\":true},{\"storage\":\"blockbuster:main\",\"nbt\":\"timeline_short[4]\",\"interpret\":true},{\"text\":\"| \",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#anim_length_int\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\".\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#anim_length_dec_0\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"score\":{\"name\":\"#anim_length_dec_1\",\"objective\":\"global\"},\"color\":\"light_purple\"}]"

scoreboard players operation #kx_pos global = @e[type=armor_stand,tag=block,scores={temp=1,keyframe_type=1},limit=1] from_pos_x
execute if entity @e[type=armor_stand,tag=block,tag=!has_parent,scores={temp=1}] run scoreboard players remove #kx_pos global 500
execute if entity @e[type=armor_stand,tag=block,tag=!has_parent,scores={temp=1}] if score #kx_pos global matches ..-1 run data modify storage blockbuster:main signs[6] set value "-"
execute if entity @e[type=armor_stand,tag=block,tag=has_parent,scores={temp=1}] if score #kx_pos global matches 1.. run data modify storage blockbuster:main signs[6] set value "-"
execute if score #kx_pos global matches ..-1 run scoreboard players operation #kx_pos global *= #-1 constants
scoreboard players operation #kx_pos_int global = #kx_pos global
scoreboard players operation #kx_pos_int global /= #1000 constants
scoreboard players operation #kx_pos_dec global = #kx_pos global
scoreboard players operation #kx_pos_dec global %= #1000 constants
scoreboard players operation #kx_pos_dec_0 global = #kx_pos_dec global
scoreboard players operation #kx_pos_dec_0 global /= #100 constants
scoreboard players operation #kx_pos_dec_1 global = #kx_pos_dec global
scoreboard players operation #kx_pos_dec_1 global %= #100 constants
scoreboard players operation #kx_pos_dec_1 global /= #10 constants
scoreboard players operation #kx_pos_dec_2 global = #kx_pos_dec global
scoreboard players operation #kx_pos_dec_2 global %= #10 constants

scoreboard players operation #ky_pos global = @e[type=armor_stand,tag=block,scores={temp=1,keyframe_type=1},limit=1] from_pos_y
execute if entity @e[type=armor_stand,tag=block,tag=!has_parent,scores={temp=1}] run scoreboard players add #ky_pos global 226
execute if score #ky_pos global matches ..-1 run data modify storage blockbuster:main signs[7] set value "-"
execute if score #ky_pos global matches ..-1 run scoreboard players operation #ky_pos global *= #-1 constants
scoreboard players operation #ky_pos_int global = #ky_pos global
scoreboard players operation #ky_pos_int global /= #1000 constants
scoreboard players operation #ky_pos_dec global = #ky_pos global
scoreboard players operation #ky_pos_dec global %= #1000 constants
scoreboard players operation #ky_pos_dec_0 global = #ky_pos_dec global
scoreboard players operation #ky_pos_dec_0 global /= #100 constants
scoreboard players operation #ky_pos_dec_1 global = #ky_pos_dec global
scoreboard players operation #ky_pos_dec_1 global %= #100 constants
scoreboard players operation #ky_pos_dec_1 global /= #10 constants
scoreboard players operation #ky_pos_dec_2 global = #ky_pos_dec global
scoreboard players operation #ky_pos_dec_2 global %= #10 constants

scoreboard players operation #kz_pos global = @e[type=armor_stand,tag=block,scores={temp=1,keyframe_type=1},limit=1] from_pos_z
execute if entity @e[type=armor_stand,tag=block,tag=!has_parent,scores={temp=1}] run scoreboard players remove #kz_pos global 500
execute if score #kz_pos global matches ..-1 run data modify storage blockbuster:main signs[8] set value "-"
execute if score #kz_pos global matches ..-1 run scoreboard players operation #kz_pos global *= #-1 constants
scoreboard players operation #kz_pos_int global = #kz_pos global
scoreboard players operation #kz_pos_int global /= #1000 constants
scoreboard players operation #kz_pos_dec global = #kz_pos global
scoreboard players operation #kz_pos_dec global %= #1000 constants
scoreboard players operation #kz_pos_dec_0 global = #kz_pos_dec global
scoreboard players operation #kz_pos_dec_0 global /= #100 constants
scoreboard players operation #kz_pos_dec_1 global = #kz_pos_dec global
scoreboard players operation #kz_pos_dec_1 global %= #100 constants
scoreboard players operation #kz_pos_dec_1 global /= #10 constants
scoreboard players operation #kz_pos_dec_2 global = #kz_pos_dec global
scoreboard players operation #kz_pos_dec_2 global %= #10 constants

scoreboard players operation #kx_rot global = @e[type=armor_stand,tag=block,scores={temp=1,keyframe_type=1},limit=1] from_rot_x
execute if score #kx_rot global matches ..-1 run data modify storage blockbuster:main signs[9] set value "-"
execute if score #kx_rot global matches ..-1 run scoreboard players operation #kx_rot global *= #-1 constants
scoreboard players operation #kx_rot_int global = #kx_rot global
scoreboard players operation #kx_rot_int global /= #1000 constants
scoreboard players operation #kx_rot_dec global = #kx_rot global
scoreboard players operation #kx_rot_dec global %= #1000 constants
scoreboard players operation #kx_rot_dec_0 global = #kx_rot_dec global
scoreboard players operation #kx_rot_dec_0 global /= #100 constants
scoreboard players operation #kx_rot_dec_1 global = #kx_rot_dec global
scoreboard players operation #kx_rot_dec_1 global %= #100 constants
scoreboard players operation #kx_rot_dec_1 global /= #10 constants
scoreboard players operation #kx_rot_dec_2 global = #kx_rot_dec global
scoreboard players operation #kx_rot_dec_2 global %= #10 constants

scoreboard players operation #ky_rot global = @e[type=armor_stand,tag=block,scores={temp=1,keyframe_type=1},limit=1] from_rot_y
execute if score #ky_rot global matches 1.. run data modify storage blockbuster:main signs[10] set value "-"
execute if score #ky_rot global matches ..-1 run scoreboard players operation #ky_rot global *= #-1 constants
scoreboard players operation #ky_rot_int global = #ky_rot global
scoreboard players operation #ky_rot_int global /= #1000 constants
scoreboard players operation #ky_rot_dec global = #ky_rot global
scoreboard players operation #ky_rot_dec global %= #1000 constants
scoreboard players operation #ky_rot_dec_0 global = #ky_rot_dec global
scoreboard players operation #ky_rot_dec_0 global /= #100 constants
scoreboard players operation #ky_rot_dec_1 global = #ky_rot_dec global
scoreboard players operation #ky_rot_dec_1 global %= #100 constants
scoreboard players operation #ky_rot_dec_1 global /= #10 constants
scoreboard players operation #ky_rot_dec_2 global = #ky_rot_dec global
scoreboard players operation #ky_rot_dec_2 global %= #10 constants

scoreboard players operation #kz_rot global = @e[type=armor_stand,tag=block,scores={temp=1,keyframe_type=1},limit=1] from_rot_z
execute if score #kz_rot global matches 1.. run data modify storage blockbuster:main signs[11] set value "-"
execute if score #kz_rot global matches ..-1 run scoreboard players operation #kz_rot global *= #-1 constants
scoreboard players operation #kz_rot_int global = #kz_rot global
scoreboard players operation #kz_rot_int global /= #1000 constants
scoreboard players operation #kz_rot_dec global = #kz_rot global
scoreboard players operation #kz_rot_dec global %= #1000 constants
scoreboard players operation #kz_rot_dec_0 global = #kz_rot_dec global
scoreboard players operation #kz_rot_dec_0 global /= #100 constants
scoreboard players operation #kz_rot_dec_1 global = #kz_rot_dec global
scoreboard players operation #kz_rot_dec_1 global %= #100 constants
scoreboard players operation #kz_rot_dec_1 global /= #10 constants
scoreboard players operation #kz_rot_dec_2 global = #kz_rot_dec global
scoreboard players operation #kz_rot_dec_2 global %= #10 constants

data modify storage blockbuster:strings keyframe_pos set value "[{\"text\":\"[\",\"color\":\"#663bb3\"},{\"storage\":\"blockbuster:main\",\"nbt\":\"signs[6]\",\"color\":\"dark_red\"},{\"score\":{\"name\":\"#kx_pos_int\",\"objective\":\"global\"},\"color\":\"dark_red\"},{\"text\":\".\",\"color\":\"dark_red\"},{\"score\":{\"name\":\"#kx_pos_dec_0\",\"objective\":\"global\"},\"color\":\"dark_red\"},{\"score\":{\"name\":\"#kx_pos_dec_1\",\"objective\":\"global\"},\"color\":\"dark_red\"},{\"score\":{\"name\":\"#kx_pos_dec_2\",\"objective\":\"global\"},\"color\":\"dark_red\"},{\"text\":\", \",\"color\":\"#663bb3\"},{\"storage\":\"blockbuster:main\",\"nbt\":\"signs[7]\",\"color\":\"dark_green\"},{\"score\":{\"name\":\"#ky_pos_int\",\"objective\":\"global\"},\"color\":\"dark_green\"},{\"text\":\".\",\"color\":\"dark_green\"},{\"score\":{\"name\":\"#ky_pos_dec_0\",\"objective\":\"global\"},\"color\":\"dark_green\"},{\"score\":{\"name\":\"#ky_pos_dec_1\",\"objective\":\"global\"},\"color\":\"dark_green\"},{\"score\":{\"name\":\"#ky_pos_dec_2\",\"objective\":\"global\"},\"color\":\"dark_green\"},{\"text\":\", \",\"color\":\"#663bb3\"},{\"storage\":\"blockbuster:main\",\"nbt\":\"signs[8]\",\"color\":\"dark_blue\"},{\"score\":{\"name\":\"#kz_pos_int\",\"objective\":\"global\"},\"color\":\"dark_blue\"},{\"text\":\".\",\"color\":\"dark_blue\"},{\"score\":{\"name\":\"#kz_pos_dec_0\",\"objective\":\"global\"},\"color\":\"dark_blue\"},{\"score\":{\"name\":\"#kz_pos_dec_1\",\"objective\":\"global\"},\"color\":\"dark_blue\"},{\"score\":{\"name\":\"#kz_pos_dec_2\",\"objective\":\"global\"},\"color\":\"dark_blue\"},{\"text\":\"]\",\"color\":\"#663bb3\"}]"
data modify storage blockbuster:strings keyframe_rot set value "[{\"text\":\"[\",\"color\":\"#663bb3\"},{\"storage\":\"blockbuster:main\",\"nbt\":\"signs[9]\",\"color\":\"dark_red\"},{\"score\":{\"name\":\"#kx_rot_int\",\"objective\":\"global\"},\"color\":\"dark_red\"},{\"text\":\".\",\"color\":\"dark_red\"},{\"score\":{\"name\":\"#kx_rot_dec_0\",\"objective\":\"global\"},\"color\":\"dark_red\"},{\"score\":{\"name\":\"#kx_rot_dec_1\",\"objective\":\"global\"},\"color\":\"dark_red\"},{\"score\":{\"name\":\"#kx_rot_dec_2\",\"objective\":\"global\"},\"color\":\"dark_red\"},{\"text\":\", \",\"color\":\"#663bb3\"},{\"storage\":\"blockbuster:main\",\"nbt\":\"signs[10]\",\"color\":\"dark_green\"},{\"score\":{\"name\":\"#ky_rot_int\",\"objective\":\"global\"},\"color\":\"dark_green\"},{\"text\":\".\",\"color\":\"dark_green\"},{\"score\":{\"name\":\"#ky_rot_dec_0\",\"objective\":\"global\"},\"color\":\"dark_green\"},{\"score\":{\"name\":\"#ky_rot_dec_1\",\"objective\":\"global\"},\"color\":\"dark_green\"},{\"score\":{\"name\":\"#ky_rot_dec_2\",\"objective\":\"global\"},\"color\":\"dark_green\"},{\"text\":\", \",\"color\":\"#663bb3\"},{\"storage\":\"blockbuster:main\",\"nbt\":\"signs[11]\",\"color\":\"dark_blue\"},{\"score\":{\"name\":\"#kz_rot_int\",\"objective\":\"global\"},\"color\":\"dark_blue\"},{\"text\":\".\",\"color\":\"dark_blue\"},{\"score\":{\"name\":\"#kz_rot_dec_0\",\"objective\":\"global\"},\"color\":\"dark_blue\"},{\"score\":{\"name\":\"#kz_rot_dec_1\",\"objective\":\"global\"},\"color\":\"dark_blue\"},{\"score\":{\"name\":\"#kz_rot_dec_2\",\"objective\":\"global\"},\"color\":\"dark_blue\"},{\"text\":\"]\",\"color\":\"#663bb3\"}]"

execute as @e[type=area_effect_cloud,tag=keyframe] if score @s parent_uuid_0 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_0 if score @s parent_uuid_1 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_1 if score @s parent_uuid_2 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_2 if score @s parent_uuid_3 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_3 if score @s time = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] time run scoreboard players set @s temp 1
execute if score @e[type=area_effect_cloud,tag=keyframe,scores={temp=1},limit=1] transition_type matches 1 run data modify storage blockbuster:strings transition_type set value "[{\"text\":\" | Linear\",\"color\":\"#232393\"}]"
execute if score @e[type=area_effect_cloud,tag=keyframe,scores={temp=1},limit=1] transition_type matches 2 run data modify storage blockbuster:strings transition_type set value "[{\"text\":\" | Ease In\",\"color\":\"#232393\"}]"
execute if score @e[type=area_effect_cloud,tag=keyframe,scores={temp=1},limit=1] transition_type matches 3 run data modify storage blockbuster:strings transition_type set value "[{\"text\":\" | Ease Out\",\"color\":\"#232393\"}]"
execute if score @e[type=area_effect_cloud,tag=keyframe,scores={temp=1},limit=1] transition_type matches 4 run data modify storage blockbuster:strings transition_type set value "[{\"text\":\" | Ease In and Out\",\"color\":\"#232393\"}]"
execute if score @e[type=area_effect_cloud,tag=keyframe,scores={temp=1},limit=1] transition_type matches 5 run data modify storage blockbuster:strings transition_type set value "[{\"text\":\" | Constant\",\"color\":\"#232393\"}]"

execute if entity @e[type=armor_stand,tag=block,tag=!has_parent,scores={temp=1}] if score @e[type=area_effect_cloud,tag=keyframe,scores={temp=1},limit=1] keyframe_type matches 1 run data modify storage blockbuster:strings keyframe_transform set value "[{\"text\":\" Pos: \",\"color\":\"#663bb3\"},{\"storage\":\"blockbuster:strings\",\"nbt\":\"keyframe_pos\",\"interpret\":true}]"
execute if entity @e[type=armor_stand,tag=block,tag=!has_parent,scores={temp=1}] if score @e[type=area_effect_cloud,tag=keyframe,scores={temp=1},limit=1] keyframe_type matches 2 run data modify storage blockbuster:strings keyframe_transform set value "[{\"text\":\" Pos: \",\"color\":\"#663bb3\"},{\"storage\":\"blockbuster:strings\",\"nbt\":\"keyframe_pos\",\"interpret\":true},{\"text\":\" | Rot: \",\"color\":\"#663bb3\"},{\"storage\":\"blockbuster:strings\",\"nbt\":\"keyframe_rot\",\"interpret\":true}]"
execute if entity @e[type=armor_stand,tag=block,tag=!has_parent,scores={temp=1}] if score @e[type=area_effect_cloud,tag=keyframe,scores={temp=1},limit=1] keyframe_type matches 3 run data modify storage blockbuster:strings keyframe_transform set value "[{\"text\":\" Rot: \",\"color\":\"#663bb3\"},{\"storage\":\"blockbuster:strings\",\"nbt\":\"keyframe_rot\",\"interpret\":true}]"
execute if entity @e[type=armor_stand,tag=block,tag=has_parent,scores={temp=1}] if score @e[type=area_effect_cloud,tag=keyframe,scores={temp=1},limit=1] keyframe_type matches 1 run data modify storage blockbuster:strings keyframe_transform set value "[{\"text\":\" Rel Pos: \",\"color\":\"#663bb3\"},{\"storage\":\"blockbuster:strings\",\"nbt\":\"keyframe_pos\",\"interpret\":true}]"
execute if entity @e[type=armor_stand,tag=block,tag=has_parent,scores={temp=1}] if score @e[type=area_effect_cloud,tag=keyframe,scores={temp=1},limit=1] keyframe_type matches 2 run data modify storage blockbuster:strings keyframe_transform set value "[{\"text\":\" Rel Pos: \",\"color\":\"#663bb3\"},{\"storage\":\"blockbuster:strings\",\"nbt\":\"keyframe_pos\",\"interpret\":true},{\"text\":\" | Rel Rot: \",\"color\":\"#663bb3\"},{\"storage\":\"blockbuster:strings\",\"nbt\":\"keyframe_rot\",\"interpret\":true}]"
execute if entity @e[type=armor_stand,tag=block,tag=has_parent,scores={temp=1}] if score @e[type=area_effect_cloud,tag=keyframe,scores={temp=1},limit=1] keyframe_type matches 3 run data modify storage blockbuster:strings keyframe_transform set value "[{\"text\":\" Rel Rot: \",\"color\":\"#663bb3\"},{\"storage\":\"blockbuster:strings\",\"nbt\":\"keyframe_rot\",\"interpret\":true}]"

execute if entity @e[type=area_effect_cloud,tag=ray,scores={edit=2}] if entity @e[type=armor_stand,tag=block,tag=!has_parent,scores={temp=1}] run title @p[scores={temp=1,edit=1..2}] actionbar [{"text":"Pos: ","color":"#202020"},{"storage":"blockbuster:strings","nbt":"position","interpret":true},{"text":" | Rot: ","color":"#202020"},{"storage":"blockbuster:strings","nbt":"rotation","interpret":true}]
execute if entity @e[type=area_effect_cloud,tag=ray,scores={edit=2}] if entity @e[type=armor_stand,tag=block,tag=has_parent,scores={temp=1}] run title @p[scores={temp=1,edit=1..2}] actionbar [{"text":"Rel Pos: ","color":"#202020"},{"storage":"blockbuster:strings","nbt":"position","interpret":true},{"text":" | Rel Rot: ","color":"#202020"},{"storage":"blockbuster:strings","nbt":"rotation","interpret":true}]
execute if entity @e[type=area_effect_cloud,tag=ray,scores={edit=2}] if entity @e[type=armor_stand,tag=block,tag=!has_parent,scores={temp=1}] run title @p[scores={temp=1,edit=5..6}] actionbar [{"storage":"blockbuster:strings","nbt":"timeline_short","interpret":true},{"text":" | Pos: ","color":"#202020"},{"storage":"blockbuster:strings","nbt":"position","interpret":true},{"text":" | Rot: ","color":"#202020"},{"storage":"blockbuster:strings","nbt":"rotation","interpret":true}]
execute if entity @e[type=area_effect_cloud,tag=ray,scores={edit=2}] if entity @e[type=armor_stand,tag=block,tag=has_parent,scores={temp=1}] run title @p[scores={temp=1,edit=5..6}] actionbar [{"storage":"blockbuster:strings","nbt":"timeline_short","interpret":true},{"text":" | Rel Pos: ","color":"#202020"},{"storage":"blockbuster:strings","nbt":"position","interpret":true},{"text":" | Rel Rot: ","color":"#202020"},{"storage":"blockbuster:strings","nbt":"rotation","interpret":true}]
execute if entity @e[type=area_effect_cloud,tag=ray,scores={edit=21}] if entity @e[type=armor_stand,tag=block,tag=!has_parent,scores={temp=1}] run title @p[scores={temp=1}] actionbar [{"storage":"blockbuster:strings","nbt":"timeline_short","interpret":true},{"text":" | Pos: ","color":"#202020"},{"storage":"blockbuster:strings","nbt":"position","interpret":true},{"text":" | Rot: ","color":"#202020"},{"storage":"blockbuster:strings","nbt":"rotation","interpret":true}]
execute if entity @e[type=area_effect_cloud,tag=ray,scores={edit=21}] if entity @e[type=armor_stand,tag=block,tag=has_parent,scores={temp=1}] run title @p[scores={temp=1}] actionbar [{"storage":"blockbuster:strings","nbt":"timeline_short","interpret":true},{"text":" | Rel Pos: ","color":"#202020"},{"storage":"blockbuster:strings","nbt":"position","interpret":true},{"text":" | Rel Rot: ","color":"#202020"},{"storage":"blockbuster:strings","nbt":"rotation","interpret":true}]

execute if entity @e[type=area_effect_cloud,tag=ray,scores={edit=10..11}] if entity @e[type=armor_stand,tag=block,tag=!has_parent,scores={temp=1}] run title @p[scores={temp=1,edit=4}] actionbar [{"text":"Pos: ","color":"#202020"},{"storage":"blockbuster:strings","nbt":"position","interpret":true},{"text":" | Rot: ","color":"#202020"},{"storage":"blockbuster:strings","nbt":"rotation","interpret":true}]
execute if entity @e[type=area_effect_cloud,tag=ray,scores={edit=10..11}] if entity @e[type=armor_stand,tag=block,tag=has_parent,scores={temp=1}] run title @p[scores={temp=1,edit=4}] actionbar [{"text":"Rel Pos: ","color":"#202020"},{"storage":"blockbuster:strings","nbt":"position","interpret":true},{"text":" | Rel Rot: ","color":"#202020"},{"storage":"blockbuster:strings","nbt":"rotation","interpret":true}]
execute if entity @e[type=area_effect_cloud,tag=ray,scores={edit=10..11}] if entity @e[type=armor_stand,tag=block,tag=!has_parent,scores={temp=1}] run title @p[scores={temp=1,edit=9}] actionbar [{"storage":"blockbuster:strings","nbt":"timeline_short","interpret":true},{"text":" | Pos: ","color":"#202020"},{"storage":"blockbuster:strings","nbt":"position","interpret":true},{"text":" | Rot: ","color":"#202020"},{"storage":"blockbuster:strings","nbt":"rotation","interpret":true}]
execute if entity @e[type=area_effect_cloud,tag=ray,scores={edit=10..11}] if entity @e[type=armor_stand,tag=block,tag=has_parent,scores={temp=1}] run title @p[scores={temp=1,edit=9}] actionbar [{"storage":"blockbuster:strings","nbt":"timeline_short","interpret":true},{"text":" | Rel Pos: ","color":"#202020"},{"storage":"blockbuster:strings","nbt":"position","interpret":true},{"text":" | Rel Rot: ","color":"#202020"},{"storage":"blockbuster:strings","nbt":"rotation","interpret":true}]

execute if entity @e[type=area_effect_cloud,tag=ray,scores={edit=12..17}] if entity @e[type=armor_stand,tag=block,tag=!has_parent,scores={temp=1}] run title @p[scores={temp=1,edit=13}] actionbar [{"text":"Position: ","color":"#202020"},{"storage":"blockbuster:strings","nbt":"position","interpret":true}]
execute if entity @e[type=area_effect_cloud,tag=ray,scores={edit=12..17}] if entity @e[type=armor_stand,tag=block,tag=has_parent,scores={temp=1}] run title @p[scores={temp=1,edit=13}] actionbar [{"text":"Relative Position: ","color":"#202020"},{"storage":"blockbuster:strings","nbt":"position","interpret":true}]
execute if entity @e[type=area_effect_cloud,tag=ray,scores={edit=12..17}] if entity @e[type=armor_stand,tag=block,tag=!has_parent,scores={temp=1}] run title @p[scores={temp=1,edit=15}] actionbar [{"storage":"blockbuster:strings","nbt":"timeline_short","interpret":true},{"text":" | Pos: ","color":"#202020"},{"storage":"blockbuster:strings","nbt":"position","interpret":true}]
execute if entity @e[type=area_effect_cloud,tag=ray,scores={edit=12..17}] if entity @e[type=armor_stand,tag=block,tag=has_parent,scores={temp=1}] run title @p[scores={temp=1,edit=15}] actionbar [{"storage":"blockbuster:strings","nbt":"timeline_short","interpret":true},{"text":" | Rel Pos: ","color":"#202020"},{"storage":"blockbuster:strings","nbt":"position","interpret":true}]

execute if entity @e[type=area_effect_cloud,tag=ray,scores={edit=39..44}] if entity @e[type=armor_stand,tag=block,tag=!has_parent,scores={temp=1}] run title @p[scores={temp=1,edit=14}] actionbar [{"text":"Rotation: ","color":"#202020"},{"storage":"blockbuster:strings","nbt":"rotation","interpret":true}]
execute if entity @e[type=area_effect_cloud,tag=ray,scores={edit=39..44}] if entity @e[type=armor_stand,tag=block,tag=has_parent,scores={temp=1}] run title @p[scores={temp=1,edit=14}] actionbar [{"text":"Relative Rotation: ","color":"#202020"},{"storage":"blockbuster:strings","nbt":"rotation","interpret":true}]
execute if entity @e[type=area_effect_cloud,tag=ray,scores={edit=39..44}] if entity @e[type=armor_stand,tag=block,tag=!has_parent,scores={temp=1}] run title @p[scores={temp=1,edit=16}] actionbar [{"storage":"blockbuster:strings","nbt":"timeline_short","interpret":true},{"text":" | Rot: ","color":"#202020"},{"storage":"blockbuster:strings","nbt":"rotation","interpret":true}]
execute if entity @e[type=area_effect_cloud,tag=ray,scores={edit=39..44}] if entity @e[type=armor_stand,tag=block,tag=has_parent,scores={temp=1}] run title @p[scores={temp=1,edit=16}] actionbar [{"storage":"blockbuster:strings","nbt":"timeline_short","interpret":true},{"text":" | Rel Rot: ","color":"#202020"},{"storage":"blockbuster:strings","nbt":"rotation","interpret":true}]

execute if entity @e[type=area_effect_cloud,tag=ray,scores={edit=18..20}] if entity @e[type=armor_stand,tag=block,scores={temp=1}] run title @p[scores={temp=1}] actionbar [{"storage":"blockbuster:strings","nbt":"timeline","interpret":true}]
execute if entity @e[type=area_effect_cloud,tag=ray,scores={edit=22..28}] if entity @e[type=armor_stand,tag=block,scores={temp=1}] run title @p[scores={temp=1}] actionbar [{"storage":"blockbuster:strings","nbt":"timeline","interpret":true}]
execute if entity @e[type=area_effect_cloud,tag=ray,scores={edit=45..48}] if entity @e[type=armor_stand,tag=block,scores={temp=1}] run title @p[scores={temp=1}] actionbar [{"storage":"blockbuster:strings","nbt":"timeline","interpret":true}]

execute if entity @e[type=area_effect_cloud,tag=ray,scores={edit=29}] if entity @e[type=armor_stand,tag=block,tag=!has_parent,scores={temp=1}] run title @p[scores={temp=1}] actionbar [{"storage":"blockbuster:strings","nbt":"timeline_short","interpret":true},{"text":" | Pos: ","color":"#202020"},{"storage":"blockbuster:strings","nbt":"position","interpret":true}]
execute if entity @e[type=area_effect_cloud,tag=ray,scores={edit=29}] if entity @e[type=armor_stand,tag=block,tag=has_parent,scores={temp=1}] run title @p[scores={temp=1}] actionbar [{"storage":"blockbuster:strings","nbt":"timeline_short","interpret":true},{"text":" | Rel Pos: ","color":"#202020"},{"storage":"blockbuster:strings","nbt":"position","interpret":true}]
execute if entity @e[type=area_effect_cloud,tag=ray,scores={edit=30}] if entity @e[type=armor_stand,tag=block,tag=!has_parent,scores={temp=1}] run title @p[scores={temp=1}] actionbar [{"storage":"blockbuster:strings","nbt":"timeline_short","interpret":true},{"text":" | Rot: ","color":"#202020"},{"storage":"blockbuster:strings","nbt":"rotation","interpret":true}]
execute if entity @e[type=area_effect_cloud,tag=ray,scores={edit=30}] if entity @e[type=armor_stand,tag=block,tag=has_parent,scores={temp=1}] run title @p[scores={temp=1}] actionbar [{"storage":"blockbuster:strings","nbt":"timeline_short","interpret":true},{"text":" | Rel Rot: ","color":"#202020"},{"storage":"blockbuster:strings","nbt":"rotation","interpret":true}]
execute if entity @e[type=area_effect_cloud,tag=ray,scores={edit=31}] if entity @e[type=armor_stand,tag=block,tag=!has_parent,scores={temp=1}] run title @p[scores={temp=1}] actionbar [{"storage":"blockbuster:strings","nbt":"timeline_short","interpret":true},{"text":" | Pos: ","color":"#202020"},{"storage":"blockbuster:strings","nbt":"position","interpret":true},{"text":" | Rot: ","color":"#202020"},{"storage":"blockbuster:strings","nbt":"rotation","interpret":true}]
execute if entity @e[type=area_effect_cloud,tag=ray,scores={edit=31}] if entity @e[type=armor_stand,tag=block,tag=has_parent,scores={temp=1}] run title @p[scores={temp=1}] actionbar [{"storage":"blockbuster:strings","nbt":"timeline_short","interpret":true},{"text":" | Rel Pos: ","color":"#202020"},{"storage":"blockbuster:strings","nbt":"position","interpret":true},{"text":" | Rel Rot: ","color":"#202020"},{"storage":"blockbuster:strings","nbt":"rotation","interpret":true}]

execute if entity @e[type=area_effect_cloud,tag=ray,scores={edit=32..33}] if entity @e[type=armor_stand,tag=block,scores={temp=1,keyframe_type=1}] run title @p[scores={temp=1}] actionbar [{"storage":"blockbuster:strings","nbt":"timeline_short","interpret":true},{"storage":"blockbuster:strings","nbt":"transition_type","interpret":true},{"text":" |","color":"#232393"},{"storage":"blockbuster:strings","nbt":"keyframe_transform","interpret":true}]
execute if entity @e[type=area_effect_cloud,tag=ray,scores={edit=32..33}] if entity @e[type=armor_stand,tag=block,scores={temp=1,keyframe_type=0}] run title @p[scores={temp=1}] actionbar [{"storage":"blockbuster:strings","nbt":"timeline","interpret":true}]
execute if entity @e[type=area_effect_cloud,tag=ray,scores={edit=49..53}] if entity @e[type=armor_stand,tag=block,scores={temp=1,keyframe_type=1}] run title @p[scores={temp=1}] actionbar [{"storage":"blockbuster:strings","nbt":"timeline_short","interpret":true},{"storage":"blockbuster:strings","nbt":"transition_type","interpret":true},{"text":" |","color":"#232393"},{"storage":"blockbuster:strings","nbt":"keyframe_transform","interpret":true}]
execute if entity @e[type=area_effect_cloud,tag=ray,scores={edit=49..53}] if entity @e[type=armor_stand,tag=block,scores={temp=1,keyframe_type=0}] run title @p[scores={temp=1}] actionbar [{"storage":"blockbuster:strings","nbt":"timeline","interpret":true}]

execute if entity @e[type=area_effect_cloud,tag=ray,scores={edit=34..38}] if entity @e[type=armor_stand,tag=block,scores={temp=1,keyframe_type=1}] run title @p[scores={temp=1}] actionbar [{"storage":"blockbuster:strings","nbt":"timeline_short","interpret":true},{"storage":"blockbuster:strings","nbt":"transition_type","interpret":true}]
execute if entity @e[type=area_effect_cloud,tag=ray,scores={edit=34..38}] if entity @e[type=armor_stand,tag=block,scores={temp=1,keyframe_type=0}] run title @p[scores={temp=1}] actionbar [{"storage":"blockbuster:strings","nbt":"timeline","interpret":true}]

scoreboard players set @e[type=armor_stand,tag=block] temp 0
scoreboard players set @e[type=area_effect_cloud,tag=keyframe] temp 0