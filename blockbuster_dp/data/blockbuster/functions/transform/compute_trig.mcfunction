execute as @e[type=armor_stand,tag=block,tag=is_parent,scores={global=1,temp=0},limit=1] run scoreboard players set @s temp 1

scoreboard players operation #input_cos global = @e[type=armor_stand,tag=block,scores={temp=1}] self_rot_x
function blockbuster:math/cos
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=1}] self_cos_x = #output_cos global

scoreboard players operation #input_cos global = @e[type=armor_stand,tag=block,scores={temp=1}] self_rot_y
function blockbuster:math/cos
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=1}] self_cos_y = #output_cos global

scoreboard players operation #input_cos global = @e[type=armor_stand,tag=block,scores={temp=1}] self_rot_z
function blockbuster:math/cos
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=1}] self_cos_z = #output_cos global

scoreboard players operation #input_sin global = @e[type=armor_stand,tag=block,scores={temp=1}] self_rot_x
function blockbuster:math/sin
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=1}] self_sin_x = #output_sin global

scoreboard players operation #input_sin global = @e[type=armor_stand,tag=block,scores={temp=1}] self_rot_y
function blockbuster:math/sin
scoreboard players operation @e[type=armor_stand,scores={temp=1}] self_sin_y = #output_sin global

scoreboard players operation #input_sin global = @e[type=armor_stand,tag=block,scores={temp=1}] self_rot_z
function blockbuster:math/sin
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=1}] self_sin_z = #output_sin global

scoreboard players set @e[type=armor_stand,tag=block,scores={temp=1}] temp 2
execute if entity @e[type=armor_stand,tag=block,tag=is_parent,scores={global=1,temp=0}] run function blockbuster:transform/compute_trig
scoreboard players set @e[type=armor_stand,tag=block] temp 0