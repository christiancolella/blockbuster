execute as @e[type=armor_stand,tag=is_parent,scores={temp=0},limit=1] run scoreboard players set @s temp 1

scoreboard players operation #input_cos global = @e[type=armor_stand,scores={temp=1}] self_rot_x
function animations:math/cos
scoreboard players operation @e[type=armor_stand,scores={temp=1}] self_cos_x = #output_cos global

scoreboard players operation #input_cos global = @e[type=armor_stand,scores={temp=1}] self_rot_y
function animations:math/cos
scoreboard players operation @e[type=armor_stand,scores={temp=1}] self_cos_y = #output_cos global

scoreboard players operation #input_cos global = @e[type=armor_stand,scores={temp=1}] self_rot_z
function animations:math/cos
scoreboard players operation @e[type=armor_stand,scores={temp=1}] self_cos_z = #output_cos global

scoreboard players operation #input_sin global = @e[type=armor_stand,scores={temp=1}] self_rot_x
function animations:math/sin
scoreboard players operation @e[type=armor_stand,scores={temp=1}] self_sin_x = #output_sin global

scoreboard players operation #input_sin global = @e[type=armor_stand,scores={temp=1}] self_rot_y
function animations:math/sin
scoreboard players operation @e[type=armor_stand,scores={temp=1}] self_sin_y = #output_sin global

scoreboard players operation #input_sin global = @e[type=armor_stand,scores={temp=1}] self_rot_z
function animations:math/sin
scoreboard players operation @e[type=armor_stand,scores={temp=1}] self_sin_z = #output_sin global

scoreboard players set @e[type=armor_stand,scores={temp=1}] temp 2
execute if entity @e[type=armor_stand,tag=is_parent,scores={temp=0}] run function animations:compute_trig
scoreboard players set @e[type=armor_stand,tag=is_parent] temp 0