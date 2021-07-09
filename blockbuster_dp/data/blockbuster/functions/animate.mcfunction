# positive animation length
scoreboard players set @s[scores={anim_length=..0}] anim_length 1

# increase time
scoreboard players add @s[scores={play=1}] time 1
execute as @s[scores={play=1}] if score @s time > @s anim_length run scoreboard players set @s time 0

# delta time
tag @s remove update
scoreboard players operation @s delta_time = @s time
scoreboard players operation @s delta_time -= @s last_time
scoreboard players operation @s last_time = @s time
execute unless score @s delta_time matches 0 run tag @s add update

# check for any keyframes
tag @s remove has_keyframe
tag @s remove has_pos_keyframe
tag @s remove has_rot_keyframe
function blockbuster:keyframe/check

# teleport keyframes to armor stands
function blockbuster:keyframe/teleport

# search for and retrieve data from keyframes
execute as @s[tag=has_keyframe] run function blockbuster:keyframe/search
execute if score @s from_pos_time = @s to_pos_time run scoreboard players add @s to_pos_time 1
execute if score @s from_rot_time = @s to_rot_time run scoreboard players add @s to_rot_time 1

# calculate interpolations
execute as @s[tag=has_keyframe,tag=update] run function blockbuster:keyframe/interpolate

## constant

### pos
scoreboard players set @s temp 0
execute as @s[tag=has_pos_keyframe,tag=update,scores={pos_trans_type=5}] run scoreboard players set @s temp 1
execute as @s[scores={temp=1}] run scoreboard players operation @s initial_pos_x = @s from_pos_x
execute as @s[scores={temp=1}] run scoreboard players operation @s initial_pos_y = @s from_pos_y
execute as @s[scores={temp=1}] run scoreboard players operation @s initial_pos_z = @s from_pos_z

### rot
scoreboard players set @s temp 0
execute as @s[tag=has_rot_keyframe,tag=update,scores={rot_trans_type=5}] run scoreboard players set @s temp 1
execute as @s[scores={temp=1}] run scoreboard players operation @s initial_rot_x = @s from_rot_x
execute as @s[scores={temp=1}] run scoreboard players operation @s initial_rot_y = @s from_rot_y
execute as @s[scores={temp=1}] run scoreboard players operation @s initial_rot_z = @s from_rot_z

scoreboard players set @s temp 0