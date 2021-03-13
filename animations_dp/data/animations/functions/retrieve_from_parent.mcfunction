execute as @e[type=armor_stand,tag=has_parent,tag=!checked,limit=1] run tag @s add child
execute as @e[type=armor_stand,tag=is_parent] if score @e[type=armor_stand,tag=child,limit=1] parent_uuid_0 = @s self_uuid_0 if score @e[type=armor_stand,tag=child,limit=1] parent_uuid_1 = @s self_uuid_1 if score @e[type=armor_stand,tag=child,limit=1] parent_uuid_2 = @s self_uuid_2 if score @e[type=armor_stand,tag=child,limit=1] parent_uuid_3 = @s self_uuid_3 run tag @s add parent

# retrieve parent position
scoreboard players operation @e[type=armor_stand,tag=child,limit=1] parent_pos_x = @e[type=armor_stand,tag=parent,limit=1] self_pos_x
scoreboard players operation @e[type=armor_stand,tag=child,limit=1] parent_pos_y = @e[type=armor_stand,tag=parent,limit=1] self_pos_y
scoreboard players operation @e[type=armor_stand,tag=child,limit=1] parent_pos_z = @e[type=armor_stand,tag=parent,limit=1] self_pos_z

# retrieve parent rotation
scoreboard players operation @e[type=armor_stand,tag=child,limit=1] parent_rot_x = @e[type=armor_stand,tag=parent,limit=1] self_rot_x
scoreboard players operation @e[type=armor_stand,tag=child,limit=1] parent_rot_y = @e[type=armor_stand,tag=parent,limit=1] self_rot_y
scoreboard players operation @e[type=armor_stand,tag=child,limit=1] parent_rot_z = @e[type=armor_stand,tag=parent,limit=1] self_rot_z

# retrieve parent matrix
scoreboard players operation @e[type=armor_stand,tag=child,limit=1] parent_matrix_0 = @e[type=armor_stand,tag=parent,limit=1] self_matrix_0
scoreboard players operation @e[type=armor_stand,tag=child,limit=1] parent_matrix_1 = @e[type=armor_stand,tag=parent,limit=1] self_matrix_1
scoreboard players operation @e[type=armor_stand,tag=child,limit=1] parent_matrix_2 = @e[type=armor_stand,tag=parent,limit=1] self_matrix_2
scoreboard players operation @e[type=armor_stand,tag=child,limit=1] parent_matrix_3 = @e[type=armor_stand,tag=parent,limit=1] self_matrix_3
scoreboard players operation @e[type=armor_stand,tag=child,limit=1] parent_matrix_4 = @e[type=armor_stand,tag=parent,limit=1] self_matrix_4
scoreboard players operation @e[type=armor_stand,tag=child,limit=1] parent_matrix_5 = @e[type=armor_stand,tag=parent,limit=1] self_matrix_5
scoreboard players operation @e[type=armor_stand,tag=child,limit=1] parent_matrix_6 = @e[type=armor_stand,tag=parent,limit=1] self_matrix_6
scoreboard players operation @e[type=armor_stand,tag=child,limit=1] parent_matrix_7 = @e[type=armor_stand,tag=parent,limit=1] self_matrix_7
scoreboard players operation @e[type=armor_stand,tag=child,limit=1] parent_matrix_8 = @e[type=armor_stand,tag=parent,limit=1] self_matrix_8

tag @e[type=armor_stand,tag=child] add checked
tag @e[type=armor_stand,tag=child] remove child
tag @e[type=armor_stand,tag=parent] remove parent

execute if entity @e[type=armor_stand,tag=has_parent,tag=!checked] run function animations:retrieve_from_parent
tag @e[type=armor_stand,tag=checked] remove checked