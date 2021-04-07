# strictly positive animation length
scoreboard players set @e[type=armor_stand,tag=block,scores={anim_length=..0}] anim_length 1

# increase time
execute as @e[type=armor_stand,tag=block,scores={play=1}] run scoreboard players add @s time 1
execute as @e[type=armor_stand,tag=block,scores={play=1}] if score @s time > @s anim_length run scoreboard players set @s time 0

# delta time
execute as @e[type=armor_stand,tag=block,scores={play=1}] run scoreboard players operation @s delta_time = @s time
execute as @e[type=armor_stand,tag=block,scores={play=1}] run scoreboard players operation @s delta_time -= @s last_time
execute as @e[type=armor_stand,tag=block,scores={play=1}] run scoreboard players operation @s last_time = @s time

# check for any keyframes
tag @e[type=armor_stand,tag=block] remove has_keyframe
function blockbuster:keyframe/check

# teleport keyframes
function blockbuster:keyframe/teleport

# search for previous and next keyframes
function blockbuster:keyframe/search