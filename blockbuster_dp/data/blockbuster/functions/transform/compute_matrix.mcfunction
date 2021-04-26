#  Rz         Ry          Rx           R
# |Cz -Sz 0| | Cy  0 Sy| |1  0   0|   | CyCz -CxSz+SxSyCz  SxSz+CxSyCz|
# |Sz  Cz 0|*|  0  1  0|*|0 Cx -Sx| = | CySz  CxCz+SxSySz -SxCz+CxSySz|
# | 0   0 1| |-Sy  0 Cy| |0 Sx  Cx|   |-Sy    SxCy         CxCy       |

# element 0
scoreboard players operation @s self_matrix_0 = @s self_cos_y
scoreboard players operation @s self_matrix_0 *= @s self_cos_z
scoreboard players operation @s self_matrix_0 /= #1000 constants
scoreboard players operation @s self_matrix_0 *= #-1 constants

# element 1
scoreboard players operation @s self_matrix_1 = @s self_sin_x
scoreboard players operation @s self_matrix_1 *= @s self_sin_y
scoreboard players operation @s self_matrix_1 /= #1000 constants
scoreboard players operation @s self_matrix_1 *= @s self_cos_z
scoreboard players operation @s self_matrix_1 /= #1000 constants
scoreboard players operation @s temp = @s self_cos_x
scoreboard players operation @s temp *= @s self_sin_z
scoreboard players operation @s temp /= #1000 constants
scoreboard players operation @s self_matrix_1 -= @s temp
scoreboard players operation @s self_matrix_1 *= #-1 constants

# element 2
scoreboard players operation @s self_matrix_2 = @s self_sin_x
scoreboard players operation @s self_matrix_2 *= @s self_sin_z
scoreboard players operation @s self_matrix_2 /= #1000 constants
scoreboard players operation @s temp = @s self_cos_x
scoreboard players operation @s temp *= @s self_sin_y
scoreboard players operation @s temp /= #1000 constants
scoreboard players operation @s temp *= @s self_cos_z
scoreboard players operation @s temp /= #1000 constants
scoreboard players operation @s self_matrix_2 += @s temp
scoreboard players operation @s self_matrix_2 *= #-1 constants

# element 3
scoreboard players operation @s self_matrix_3 = @s self_cos_y
scoreboard players operation @s self_matrix_3 *= @s self_sin_z
scoreboard players operation @s self_matrix_3 /= #1000 constants

# element 4
scoreboard players operation @s self_matrix_4 = @s self_cos_x
scoreboard players operation @s self_matrix_4 *= @s self_cos_z
scoreboard players operation @s self_matrix_4 /= #1000 constants
scoreboard players operation @s temp = @s self_sin_x
scoreboard players operation @s temp *= @s self_sin_y
scoreboard players operation @s temp /= #1000 constants
scoreboard players operation @s temp *= @s self_sin_z
scoreboard players operation @s temp /= #1000 constants
scoreboard players operation @s self_matrix_4 += @s temp

# element 5
scoreboard players operation @s self_matrix_5 = @s self_cos_x
scoreboard players operation @s self_matrix_5 *= @s self_sin_y
scoreboard players operation @s self_matrix_5 /= #1000 constants
scoreboard players operation @s self_matrix_5 *= @s self_sin_z
scoreboard players operation @s self_matrix_5 /= #1000 constants
scoreboard players operation @s temp = @s self_sin_x
scoreboard players operation @s temp *= @s self_cos_z
scoreboard players operation @s temp /= #1000 constants
scoreboard players operation @s self_matrix_5 -= @s temp

# element 6
scoreboard players operation @s self_matrix_6 = @s self_sin_y
scoreboard players operation @s self_matrix_6 *= #-1 constants

# element 7
scoreboard players operation @s self_matrix_7 = @s self_sin_x
scoreboard players operation @s self_matrix_7 *= @s self_cos_y
scoreboard players operation @s self_matrix_7 /= #1000 constants

# element 8
scoreboard players operation @s self_matrix_8 = @s self_cos_x
scoreboard players operation @s self_matrix_8 *= @s self_cos_y
scoreboard players operation @s self_matrix_8 /= #1000 constants
