# strictly positive animation length
scoreboard players set @e[type=armor_stand,tag=block,scores={anim_length=..0}] anim_length 1

# increase time
execute as @e[type=armor_stand,tag=block,scores={play=1}] run scoreboard players add @s time 1
execute as @e[type=armor_stand,tag=block,scores={play=1}] if score @s time > @s anim_length run scoreboard players set @s time 0

# delta time
tag @e[type=armor_stand,tag=block] remove update
execute as @e[type=armor_stand,tag=block] run scoreboard players operation @s delta_time = @s time
execute as @e[type=armor_stand,tag=block] run scoreboard players operation @s delta_time -= @s last_time
execute as @e[type=armor_stand,tag=block] run scoreboard players operation @s last_time = @s time
execute as @e[type=armor_stand,tag=block] unless score @s delta_time matches 0 run tag @s add update

# check for any keyframes
tag @e[type=armor_stand,tag=block] remove has_keyframe
tag @e[type=armor_stand,tag=block] remove has_pos_keyframe
tag @e[type=armor_stand,tag=block] remove has_rot_keyframe
function blockbuster:keyframe/check

# teleport keyframes
function blockbuster:keyframe/teleport

# search for and retrieve data from keyframes
function blockbuster:keyframe/search
execute as @e[type=armor_stand,tag=block] if score @s from_pos_time = @s anim_length run scoreboard players add @s to_pos_time 1
execute as @e[type=armor_stand,tag=block] if score @s from_rot_time = @s anim_length run scoreboard players add @s to_rot_time 1

# calculate interpolations
function blockbuster:keyframe/interpolate

## constant

### pos
execute as @e[type=armor_stand,tag=block,tag=has_pos_keyframe,tag=update,scores={pos_trans_type=5}] run scoreboard players set @s temp 1
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run scoreboard players operation @s initial_pos_x = @s from_pos_x
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run scoreboard players operation @s initial_pos_y = @s from_pos_y
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run scoreboard players operation @s initial_pos_z = @s from_pos_z
scoreboard players set @e[type=armor_stand,tag=block] temp 0

### rot
execute as @e[type=armor_stand,tag=block,tag=has_rot_keyframe,tag=update,scores={rot_trans_type=5}] run scoreboard players set @s temp 1
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run scoreboard players operation @s initial_rot_x = @s from_rot_x
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run scoreboard players operation @s initial_rot_y = @s from_rot_y
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run scoreboard players operation @s initial_rot_z = @s from_rot_z
scoreboard players set @e[type=armor_stand,tag=block] temp 0

# delete keyframe if block is gone
function blockbuster:keyframe/delete
