#  Rz         Ry          Rx           R
# |Cz -Sz 0| | Cy  0 Sy| |1  0   0|   | CyCz -CxSz+SxSyCz  SxSz+CxSyCz|
# |Sz  Cz 0|*|  0  1  0|*|0 Cx -Sx| = | CySz  CxCz+SxSySz -SxCz+CxSySz|
# | 0   0 1| |-Sy  0 Cy| |0 Sx  Cx|   |-Sy    SxCy         CxCy       |

execute as @e[type=armor_stand,tag=is_parent,tag=!computed,limit=1] run tag @s add matrix

# compute trig values
scoreboard players operation #input_cos global = @e[type=armor_stand,tag=matrix] self_rot_x
function animations:math/cos
scoreboard players operation #temp_cos_x global = #output_cos global

scoreboard players operation #input_cos global = @e[type=armor_stand,tag=matrix] self_rot_y
function animations:math/cos
scoreboard players operation #temp_cos_y global = #output_cos global

scoreboard players operation #input_cos global = @e[type=armor_stand,tag=matrix] self_rot_z
function animations:math/cos
scoreboard players operation #temp_cos_z global = #output_cos global

scoreboard players operation #input_sin global = @e[type=armor_stand,tag=matrix] self_rot_x
function animations:math/sin
scoreboard players operation #temp_sin_x global = #output_sin global

scoreboard players operation #input_sin global = @e[type=armor_stand,tag=matrix] self_rot_y
function animations:math/sin
scoreboard players operation #temp_sin_y global = #output_sin global

scoreboard players operation #input_sin global = @e[type=armor_stand,tag=matrix] self_rot_z
function animations:math/sin
scoreboard players operation #temp_sin_z global = #output_sin global

# element 0
scoreboard players operation @e[type=armor_stand,tag=matrix] self_matrix_0 = #temp_cos_y global
scoreboard players operation @e[type=armor_stand,tag=matrix] self_matrix_0 *= #temp_cos_z global
scoreboard players operation @e[type=armor_stand,tag=matrix] self_matrix_0 /= #1000 constants

# element 1
scoreboard players operation @e[type=armor_stand,tag=matrix] self_matrix_1 = #temp_sin_x global
scoreboard players operation @e[type=armor_stand,tag=matrix] self_matrix_1 *= #temp_sin_y global
scoreboard players operation @e[type=armor_stand,tag=matrix] self_matrix_1 /= #1000 constants
scoreboard players operation @e[type=armor_stand,tag=matrix] self_matrix_1 *= #temp_cos_z global
scoreboard players operation @e[type=armor_stand,tag=matrix] self_matrix_1 /= #1000 constants
scoreboard players operation #temp global = #temp_cos_x global
scoreboard players operation #temp global *= #temp_sin_z global
scoreboard players operation #temp global /= #1000 constants
scoreboard players operation @e[type=armor_stand,tag=matrix] self_matrix_1 -= #temp global

# element 2
scoreboard players operation @e[type=armor_stand,tag=matrix] self_matrix_2 = #temp_sin_x global
scoreboard players operation @e[type=armor_stand,tag=matrix] self_matrix_2 *= #temp_sin_z global
scoreboard players operation @e[type=armor_stand,tag=matrix] self_matrix_2 /= #1000 constants
scoreboard players operation #temp global = #temp_cos_x global
scoreboard players operation #temp global *= #temp_sin_y global
scoreboard players operation #temp global /= #1000 constants
scoreboard players operation #temp global *= #temp_cos_z global
scoreboard players operation #temp global /= #1000 constants
scoreboard players operation @e[type=armor_stand,tag=matrix] self_matrix_2 += #temp global

# element 3
scoreboard players operation @e[type=armor_stand,tag=matrix] self_matrix_3 = #temp_cos_y global
scoreboard players operation @e[type=armor_stand,tag=matrix] self_matrix_3 *= #temp_sin_z global
scoreboard players operation @e[type=armor_stand,tag=matrix] self_matrix_3 /= #1000 constants

# element 4
scoreboard players operation @e[type=armor_stand,tag=matrix] self_matrix_4 = #temp_cos_x global
scoreboard players operation @e[type=armor_stand,tag=matrix] self_matrix_4 *= #temp_cos_z global
scoreboard players operation @e[type=armor_stand,tag=matrix] self_matrix_4 /= #1000 constants
scoreboard players operation #temp global = #temp_sin_x global
scoreboard players operation #temp global *= #temp_sin_y global
scoreboard players operation #temp global /= #1000 constants
scoreboard players operation #temp global *= #temp_sin_z global
scoreboard players operation #temp global /= #1000 constants
scoreboard players operation @e[type=armor_stand,tag=matrix] self_matrix_4 += #temp global

# element 5
scoreboard players operation @e[type=armor_stand,tag=matrix] self_matrix_5 = #temp_cos_x global
scoreboard players operation @e[type=armor_stand,tag=matrix] self_matrix_5 *= #temp_sin_y global
scoreboard players operation @e[type=armor_stand,tag=matrix] self_matrix_5 /= #1000 constants
scoreboard players operation @e[type=armor_stand,tag=matrix] self_matrix_5 *= #temp_sin_z global
scoreboard players operation @e[type=armor_stand,tag=matrix] self_matrix_5 /= #1000 constants
scoreboard players operation #temp global = #temp_sin_x global
scoreboard players operation #temp global *= #temp_cos_z global
scoreboard players operation #temp global /= #1000 constants
scoreboard players operation @e[type=armor_stand,tag=matrix] self_matrix_5 -= #temp global

# element 6
scoreboard players operation @e[type=armor_stand,tag=matrix] self_matrix_6 = #temp_sin_y global
scoreboard players operation @e[type=armor_stand,tag=matrix] self_matrix_6 *= #-1 constants

# element 7
scoreboard players operation @e[type=armor_stand,tag=matrix] self_matrix_7 = #temp_sin_x global
scoreboard players operation @e[type=armor_stand,tag=matrix] self_matrix_7 *= #temp_cos_y global
scoreboard players operation @e[type=armor_stand,tag=matrix] self_matrix_7 /= #1000 constants

# element 8
scoreboard players operation @e[type=armor_stand,tag=matrix] self_matrix_8 = #temp_cos_x global
scoreboard players operation @e[type=armor_stand,tag=matrix] self_matrix_8 *= #temp_cos_y global
scoreboard players operation @e[type=armor_stand,tag=matrix] self_matrix_8 /= #1000 constants

tag @e[type=armor_stand,tag=matrix] add computed
tag @e[type=armor_stand,tag=matrix] remove matrix

execute if entity @e[type=armor_stand,tag=is_parent,tag=!computed] run function animations:compute_matrix
tag @e[type=armor_stand,tag=computed] remove computed