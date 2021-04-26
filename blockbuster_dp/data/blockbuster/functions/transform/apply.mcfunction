scoreboard players operation @s[tag=has_parent] temp = @s[tag=has_parent] parent_vel_x
scoreboard players operation @s[tag=!has_parent] temp = @s[tag=!has_parent] self_vel_x
scoreboard players operation @s temp *= #150 constants
scoreboard players operation @s temp /= #100 constants
scoreboard players operation @s self_pos_x += @s temp
execute store result entity @s Pos[0] double 0.001 run scoreboard players get @s self_pos_x

scoreboard players operation @s[tag=has_parent] temp = @s[tag=has_parent] parent_vel_y
scoreboard players operation @s[tag=!has_parent] temp = @s[tag=!has_parent] self_vel_y
scoreboard players operation @s temp *= #150 constants
scoreboard players operation @s temp /= #100 constants
scoreboard players operation @s self_pos_y += @s temp
execute store result entity @s Pos[1] double 0.001 run scoreboard players get @s self_pos_y

scoreboard players operation @s[tag=has_parent] temp = @s[tag=has_parent] parent_vel_z
scoreboard players operation @s[tag=!has_parent] temp = @s[tag=!has_parent] self_vel_z
scoreboard players operation @s temp *= #150 constants
scoreboard players operation @s temp /= #100 constants
scoreboard players operation @s self_pos_z += @s temp
execute store result entity @s Pos[2] double 0.001 run scoreboard players get @s self_pos_z

execute store result entity @s Pose.Head[0] float 0.001 run scoreboard players get @s self_rot_x
execute store result entity @s Pose.Head[1] float 0.001 run scoreboard players get @s self_rot_y
execute store result entity @s Pose.Head[2] float 0.001 run scoreboard players get @s self_rot_z