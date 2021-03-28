#  Rz         Ry          Rx           R
# |Cz -Sz 0| | Cy  0 Sy| |1  0   0|   | CyCz -CxSz+SxSyCz  SxSz+CxSyCz|
# |Sz  Cz 0|*|  0  1  0|*|0 Cx -Sx| = | CySz  CxCz+SxSySz -SxCz+CxSySz|
# | 0   0 1| |-Sy  0 Cy| |0 Sx  Cx|   |-Sy    SxCy         CxCy       |

# element 0
execute as @e[type=armor_stand,tag=is_parent] run scoreboard players operation @s self_matrix_0 = @s self_cos_y
execute as @e[type=armor_stand,tag=is_parent] run scoreboard players operation @s self_matrix_0 *= @s self_cos_z
execute as @e[type=armor_stand,tag=is_parent] run scoreboard players operation @s self_matrix_0 /= #1000 constants

# element 1
execute as @e[type=armor_stand,tag=is_parent] run scoreboard players operation @s self_matrix_1 = @s self_sin_x
execute as @e[type=armor_stand,tag=is_parent] run scoreboard players operation @s self_matrix_1 *= @s self_sin_y
execute as @e[type=armor_stand,tag=is_parent] run scoreboard players operation @s self_matrix_1 /= #1000 constants
execute as @e[type=armor_stand,tag=is_parent] run scoreboard players operation @s self_matrix_1 *= @s self_cos_z
execute as @e[type=armor_stand,tag=is_parent] run scoreboard players operation @s self_matrix_1 /= #1000 constants
execute as @e[type=armor_stand,tag=is_parent] run scoreboard players operation #temp global = @s self_cos_x
execute as @e[type=armor_stand,tag=is_parent] run scoreboard players operation #temp global *= @s self_sin_z
execute as @e[type=armor_stand,tag=is_parent] run scoreboard players operation #temp global /= #1000 constants
execute as @e[type=armor_stand,tag=is_parent] run scoreboard players operation @s self_matrix_1 -= #temp global

# element 2
execute as @e[type=armor_stand,tag=is_parent] run scoreboard players operation @s self_matrix_2 = @s self_sin_x
execute as @e[type=armor_stand,tag=is_parent] run scoreboard players operation @s self_matrix_2 *= @s self_sin_z
execute as @e[type=armor_stand,tag=is_parent] run scoreboard players operation @s self_matrix_2 /= #1000 constants
execute as @e[type=armor_stand,tag=is_parent] run scoreboard players operation #temp global = @s self_cos_x
execute as @e[type=armor_stand,tag=is_parent] run scoreboard players operation #temp global *= @s self_sin_y
execute as @e[type=armor_stand,tag=is_parent] run scoreboard players operation #temp global /= #1000 constants
execute as @e[type=armor_stand,tag=is_parent] run scoreboard players operation #temp global *= @s self_cos_z
execute as @e[type=armor_stand,tag=is_parent] run scoreboard players operation #temp global /= #1000 constants
execute as @e[type=armor_stand,tag=is_parent] run scoreboard players operation @s self_matrix_2 += #temp global

# element 3
execute as @e[type=armor_stand,tag=is_parent] run scoreboard players operation @s self_matrix_3 = @s self_cos_y
execute as @e[type=armor_stand,tag=is_parent] run scoreboard players operation @s self_matrix_3 *= @s self_sin_z
execute as @e[type=armor_stand,tag=is_parent] run scoreboard players operation @s self_matrix_3 /= #1000 constants

# element 4
execute as @e[type=armor_stand,tag=is_parent] run scoreboard players operation @s self_matrix_4 = @s self_cos_x
execute as @e[type=armor_stand,tag=is_parent] run scoreboard players operation @s self_matrix_4 *= @s self_cos_z
execute as @e[type=armor_stand,tag=is_parent] run scoreboard players operation @s self_matrix_4 /= #1000 constants
execute as @e[type=armor_stand,tag=is_parent] run scoreboard players operation #temp global = @s self_sin_x
execute as @e[type=armor_stand,tag=is_parent] run scoreboard players operation #temp global *= @s self_sin_y
execute as @e[type=armor_stand,tag=is_parent] run scoreboard players operation #temp global /= #1000 constants
execute as @e[type=armor_stand,tag=is_parent] run scoreboard players operation #temp global *= @s self_sin_z
execute as @e[type=armor_stand,tag=is_parent] run scoreboard players operation #temp global /= #1000 constants
execute as @e[type=armor_stand,tag=is_parent] run scoreboard players operation @s self_matrix_4 += #temp global

# element 5
execute as @e[type=armor_stand,tag=is_parent] run scoreboard players operation @s self_matrix_5 = @s self_cos_x
execute as @e[type=armor_stand,tag=is_parent] run scoreboard players operation @s self_matrix_5 *= @s self_sin_y
execute as @e[type=armor_stand,tag=is_parent] run scoreboard players operation @s self_matrix_5 /= #1000 constants
execute as @e[type=armor_stand,tag=is_parent] run scoreboard players operation @s self_matrix_5 *= @s self_sin_z
execute as @e[type=armor_stand,tag=is_parent] run scoreboard players operation @s self_matrix_5 /= #1000 constants
execute as @e[type=armor_stand,tag=is_parent] run scoreboard players operation #temp global = @s self_sin_x
execute as @e[type=armor_stand,tag=is_parent] run scoreboard players operation #temp global *= @s self_cos_z
execute as @e[type=armor_stand,tag=is_parent] run scoreboard players operation #temp global /= #1000 constants
execute as @e[type=armor_stand,tag=is_parent] run scoreboard players operation @s self_matrix_5 -= #temp global

# element 6
execute as @e[type=armor_stand,tag=is_parent] run scoreboard players operation @s self_matrix_6 = @s self_sin_y
execute as @e[type=armor_stand,tag=is_parent] run scoreboard players operation @s self_matrix_6 *= #-1 constants

# element 7
execute as @e[type=armor_stand,tag=is_parent] run scoreboard players operation @s self_matrix_7 = @s self_sin_x
execute as @e[type=armor_stand,tag=is_parent] run scoreboard players operation @s self_matrix_7 *= @s self_cos_y
execute as @e[type=armor_stand,tag=is_parent] run scoreboard players operation @s self_matrix_7 /= #1000 constants

# element 8
execute as @e[type=armor_stand,tag=is_parent] run scoreboard players operation @s self_matrix_8 = @s self_cos_x
execute as @e[type=armor_stand,tag=is_parent] run scoreboard players operation @s self_matrix_8 *= @s self_cos_y
execute as @e[type=armor_stand,tag=is_parent] run scoreboard players operation @s self_matrix_8 /= #1000 constants
