## x
execute as @e[type=armor_stand,tag=has_parent] run scoreboard players operation @s correction_x = @s initial_offset_x
execute as @e[type=armor_stand,tag=has_parent] run scoreboard players operation @s temp = @s parent_omega_y
execute as @e[type=armor_stand,tag=has_parent] run scoreboard players operation @s temp *= @s initial_offset_z
execute as @e[type=armor_stand,tag=has_parent] run scoreboard players operation @s temp /= #1000 constants
execute as @e[type=armor_stand,tag=has_parent] run scoreboard players operation @s temp /= #24 constants
execute as @e[type=armor_stand,tag=has_parent] run scoreboard players operation @s correction_x += @s temp
execute as @e[type=armor_stand,tag=has_parent] run scoreboard players operation @s temp = @s parent_omega_z
execute as @e[type=armor_stand,tag=has_parent] run scoreboard players operation @s temp *= @s initial_offset_y
execute as @e[type=armor_stand,tag=has_parent] run scoreboard players operation @s temp /= #1000 constants
execute as @e[type=armor_stand,tag=has_parent] run scoreboard players operation @s temp /= #24 constants
execute as @e[type=armor_stand,tag=has_parent] run scoreboard players operation @s correction_x -= @s temp


## y
execute as @e[type=armor_stand,tag=has_parent] run scoreboard players operation @s correction_y = @s initial_offset_y
execute as @e[type=armor_stand,tag=has_parent] run scoreboard players operation @s temp = @s parent_omega_x
execute as @e[type=armor_stand,tag=has_parent] run scoreboard players operation @s temp *= @s initial_offset_z
execute as @e[type=armor_stand,tag=has_parent] run scoreboard players operation @s temp /= #1000 constants
execute as @e[type=armor_stand,tag=has_parent] run scoreboard players operation @s temp /= #24 constants
execute as @e[type=armor_stand,tag=has_parent] run scoreboard players operation @s correction_y -= @s temp
execute as @e[type=armor_stand,tag=has_parent] run scoreboard players operation @s temp = @s parent_omega_z
execute as @e[type=armor_stand,tag=has_parent] run scoreboard players operation @s temp *= @s initial_offset_x
execute as @e[type=armor_stand,tag=has_parent] run scoreboard players operation @s temp /= #1000 constants
execute as @e[type=armor_stand,tag=has_parent] run scoreboard players operation @s temp /= #24 constants
execute as @e[type=armor_stand,tag=has_parent] run scoreboard players operation @s correction_y += @s temp

## z
execute as @e[type=armor_stand,tag=has_parent] run scoreboard players operation @s correction_z = @s initial_offset_z
execute as @e[type=armor_stand,tag=has_parent] run scoreboard players operation @s temp = @s parent_omega_x
execute as @e[type=armor_stand,tag=has_parent] run scoreboard players operation @s temp *= @s initial_offset_y
execute as @e[type=armor_stand,tag=has_parent] run scoreboard players operation @s temp /= #1000 constants
execute as @e[type=armor_stand,tag=has_parent] run scoreboard players operation @s temp /= #24 constants
execute as @e[type=armor_stand,tag=has_parent] run scoreboard players operation @s correction_z += @s temp
execute as @e[type=armor_stand,tag=has_parent] run scoreboard players operation @s temp = @s parent_omega_y
execute as @e[type=armor_stand,tag=has_parent] run scoreboard players operation @s temp *= @s initial_offset_x
execute as @e[type=armor_stand,tag=has_parent] run scoreboard players operation @s temp /= #1000 constants
execute as @e[type=armor_stand,tag=has_parent] run scoreboard players operation @s temp /= #24 constants
execute as @e[type=armor_stand,tag=has_parent] run scoreboard players operation @s correction_z -= @s temp