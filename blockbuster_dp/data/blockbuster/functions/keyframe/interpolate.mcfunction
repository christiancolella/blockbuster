execute as @e[type=armor_stand,tag=block,tag=has_keyframe,tag=update,scores={temp=0},limit=1] run scoreboard players set @s temp 1

# linear pos
scoreboard players set @e[type=armor_stand,tag=block,tag=has_pos_keyframe,scores={temp=1,pos_trans_type=1}] temp 2

## x
scoreboard players operation #from_value global = @e[type=armor_stand,tag=block,scores={temp=2}] from_pos_x
scoreboard players operation #to_value global = @e[type=armor_stand,tag=block,scores={temp=2}] to_pos_x
scoreboard players operation #time global = @e[type=armor_stand,tag=block,scores={temp=2}] time
scoreboard players operation #from_time global = @e[type=armor_stand,tag=block,scores={temp=2}] from_pos_time
scoreboard players operation #to_time global = @e[type=armor_stand,tag=block,scores={temp=2}] to_pos_time
function blockbuster:math/interpolate/linear
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] initial_pos_x = #output_value global

## y
scoreboard players operation #from_value global = @e[type=armor_stand,tag=block,scores={temp=2}] from_pos_y
scoreboard players operation #to_value global = @e[type=armor_stand,tag=block,scores={temp=2}] to_pos_y
scoreboard players operation #time global = @e[type=armor_stand,tag=block,scores={temp=2}] time
scoreboard players operation #from_time global = @e[type=armor_stand,tag=block,scores={temp=2}] from_pos_time
scoreboard players operation #to_time global = @e[type=armor_stand,tag=block,scores={temp=2}] to_pos_time
function blockbuster:math/interpolate/linear
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] initial_pos_y = #output_value global

## z
scoreboard players operation #from_value global = @e[type=armor_stand,tag=block,scores={temp=2}] from_pos_z
scoreboard players operation #to_value global = @e[type=armor_stand,tag=block,scores={temp=2}] to_pos_z
scoreboard players operation #time global = @e[type=armor_stand,tag=block,scores={temp=2}] time
scoreboard players operation #from_time global = @e[type=armor_stand,tag=block,scores={temp=2}] from_pos_time
scoreboard players operation #to_time global = @e[type=armor_stand,tag=block,scores={temp=2}] to_pos_time
function blockbuster:math/interpolate/linear
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] initial_pos_z = #output_value global

scoreboard players set @e[type=armor_stand,tag=block,scores={temp=2}] temp 1

# linear rot
scoreboard players set @e[type=armor_stand,tag=block,tag=has_rot_keyframe,scores={temp=1,rot_trans_type=1}] temp 2

## x
scoreboard players operation #from_value global = @e[type=armor_stand,tag=block,scores={temp=2}] from_rot_x
scoreboard players operation #to_value global = @e[type=armor_stand,tag=block,scores={temp=2}] to_rot_x
scoreboard players operation #time global = @e[type=armor_stand,tag=block,scores={temp=2}] time
scoreboard players operation #from_time global = @e[type=armor_stand,tag=block,scores={temp=2}] from_rot_time
scoreboard players operation #to_time global = @e[type=armor_stand,tag=block,scores={temp=2}] to_rot_time
function blockbuster:math/interpolate/linear
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] initial_rot_x = #output_value global

## y
scoreboard players operation #from_value global = @e[type=armor_stand,tag=block,scores={temp=2}] from_rot_y
scoreboard players operation #to_value global = @e[type=armor_stand,tag=block,scores={temp=2}] to_rot_y
scoreboard players operation #time global = @e[type=armor_stand,tag=block,scores={temp=2}] time
scoreboard players operation #from_time global = @e[type=armor_stand,tag=block,scores={temp=2}] from_rot_time
scoreboard players operation #to_time global = @e[type=armor_stand,tag=block,scores={temp=2}] to_rot_time
function blockbuster:math/interpolate/linear
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] initial_rot_y = #output_value global

## z
scoreboard players operation #from_value global = @e[type=armor_stand,tag=block,scores={temp=2}] from_rot_z
scoreboard players operation #to_value global = @e[type=armor_stand,tag=block,scores={temp=2}] to_rot_z
scoreboard players operation #time global = @e[type=armor_stand,tag=block,scores={temp=2}] time
scoreboard players operation #from_time global = @e[type=armor_stand,tag=block,scores={temp=2}] from_rot_time
scoreboard players operation #to_time global = @e[type=armor_stand,tag=block,scores={temp=2}] to_rot_time
function blockbuster:math/interpolate/linear
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] initial_rot_z = #output_value global

scoreboard players set @e[type=armor_stand,tag=block,scores={temp=2}] temp 1

# ease in pos
scoreboard players set @e[type=armor_stand,tag=block,tag=has_pos_keyframe,scores={temp=1,pos_trans_type=2}] temp 2

## x
scoreboard players operation #from_value global = @e[type=armor_stand,tag=block,scores={temp=2}] from_pos_x
scoreboard players operation #to_value global = @e[type=armor_stand,tag=block,scores={temp=2}] to_pos_x
scoreboard players operation #time global = @e[type=armor_stand,tag=block,scores={temp=2}] time
scoreboard players operation #from_time global = @e[type=armor_stand,tag=block,scores={temp=2}] from_pos_time
scoreboard players operation #to_time global = @e[type=armor_stand,tag=block,scores={temp=2}] to_pos_time
function blockbuster:math/interpolate/ease_in
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] initial_pos_x = #output_value global

## y
scoreboard players operation #from_value global = @e[type=armor_stand,tag=block,scores={temp=2}] from_pos_y
scoreboard players operation #to_value global = @e[type=armor_stand,tag=block,scores={temp=2}] to_pos_y
scoreboard players operation #time global = @e[type=armor_stand,tag=block,scores={temp=2}] time
scoreboard players operation #from_time global = @e[type=armor_stand,tag=block,scores={temp=2}] from_pos_time
scoreboard players operation #to_time global = @e[type=armor_stand,tag=block,scores={temp=2}] to_pos_time
function blockbuster:math/interpolate/ease_in
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] initial_pos_y = #output_value global

## z
scoreboard players operation #from_value global = @e[type=armor_stand,tag=block,scores={temp=2}] from_pos_z
scoreboard players operation #to_value global = @e[type=armor_stand,tag=block,scores={temp=2}] to_pos_z
scoreboard players operation #time global = @e[type=armor_stand,tag=block,scores={temp=2}] time
scoreboard players operation #from_time global = @e[type=armor_stand,tag=block,scores={temp=2}] from_pos_time
scoreboard players operation #to_time global = @e[type=armor_stand,tag=block,scores={temp=2}] to_pos_time
function blockbuster:math/interpolate/ease_in
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] initial_pos_z = #output_value global

scoreboard players set @e[type=armor_stand,tag=block,scores={temp=2}] temp 1

# ease in rot
scoreboard players set @e[type=armor_stand,tag=block,tag=has_rot_keyframe,scores={temp=1,rot_trans_type=2}] temp 2

## x
scoreboard players operation #from_value global = @e[type=armor_stand,tag=block,scores={temp=2}] from_rot_x
scoreboard players operation #to_value global = @e[type=armor_stand,tag=block,scores={temp=2}] to_rot_x
scoreboard players operation #time global = @e[type=armor_stand,tag=block,scores={temp=2}] time
scoreboard players operation #from_time global = @e[type=armor_stand,tag=block,scores={temp=2}] from_rot_time
scoreboard players operation #to_time global = @e[type=armor_stand,tag=block,scores={temp=2}] to_rot_time
function blockbuster:math/interpolate/ease_in
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] initial_rot_x = #output_value global

## y
scoreboard players operation #from_value global = @e[type=armor_stand,tag=block,scores={temp=2}] from_rot_y
scoreboard players operation #to_value global = @e[type=armor_stand,tag=block,scores={temp=2}] to_rot_y
scoreboard players operation #time global = @e[type=armor_stand,tag=block,scores={temp=2}] time
scoreboard players operation #from_time global = @e[type=armor_stand,tag=block,scores={temp=2}] from_rot_time
scoreboard players operation #to_time global = @e[type=armor_stand,tag=block,scores={temp=2}] to_rot_time
function blockbuster:math/interpolate/ease_in
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] initial_rot_y = #output_value global

## z
scoreboard players operation #from_value global = @e[type=armor_stand,tag=block,scores={temp=2}] from_rot_z
scoreboard players operation #to_value global = @e[type=armor_stand,tag=block,scores={temp=2}] to_rot_z
scoreboard players operation #time global = @e[type=armor_stand,tag=block,scores={temp=2}] time
scoreboard players operation #from_time global = @e[type=armor_stand,tag=block,scores={temp=2}] from_rot_time
scoreboard players operation #to_time global = @e[type=armor_stand,tag=block,scores={temp=2}] to_rot_time
function blockbuster:math/interpolate/ease_in
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] initial_rot_z = #output_value global

scoreboard players set @e[type=armor_stand,tag=block,scores={temp=2}] temp 1

# ease out pos
scoreboard players set @e[type=armor_stand,tag=block,tag=has_pos_keyframe,scores={temp=1,pos_trans_type=3}] temp 2

## x
scoreboard players operation #from_value global = @e[type=armor_stand,tag=block,scores={temp=2}] from_pos_x
scoreboard players operation #to_value global = @e[type=armor_stand,tag=block,scores={temp=2}] to_pos_x
scoreboard players operation #time global = @e[type=armor_stand,tag=block,scores={temp=2}] time
scoreboard players operation #from_time global = @e[type=armor_stand,tag=block,scores={temp=2}] from_pos_time
scoreboard players operation #to_time global = @e[type=armor_stand,tag=block,scores={temp=2}] to_pos_time
function blockbuster:math/interpolate/ease_out
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] initial_pos_x = #output_value global

## y
scoreboard players operation #from_value global = @e[type=armor_stand,tag=block,scores={temp=2}] from_pos_y
scoreboard players operation #to_value global = @e[type=armor_stand,tag=block,scores={temp=2}] to_pos_y
scoreboard players operation #time global = @e[type=armor_stand,tag=block,scores={temp=2}] time
scoreboard players operation #from_time global = @e[type=armor_stand,tag=block,scores={temp=2}] from_pos_time
scoreboard players operation #to_time global = @e[type=armor_stand,tag=block,scores={temp=2}] to_pos_time
function blockbuster:math/interpolate/ease_out
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] initial_pos_y = #output_value global

## z
scoreboard players operation #from_value global = @e[type=armor_stand,tag=block,scores={temp=2}] from_pos_z
scoreboard players operation #to_value global = @e[type=armor_stand,tag=block,scores={temp=2}] to_pos_z
scoreboard players operation #time global = @e[type=armor_stand,tag=block,scores={temp=2}] time
scoreboard players operation #from_time global = @e[type=armor_stand,tag=block,scores={temp=2}] from_pos_time
scoreboard players operation #to_time global = @e[type=armor_stand,tag=block,scores={temp=2}] to_pos_time
function blockbuster:math/interpolate/ease_out
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] initial_pos_z = #output_value global

scoreboard players set @e[type=armor_stand,tag=block,scores={temp=2}] temp 1

# ease out rot
scoreboard players set @e[type=armor_stand,tag=block,tag=has_rot_keyframe,scores={temp=1,rot_trans_type=3}] temp 2

## x
scoreboard players operation #from_value global = @e[type=armor_stand,tag=block,scores={temp=2}] from_rot_x
scoreboard players operation #to_value global = @e[type=armor_stand,tag=block,scores={temp=2}] to_rot_x
scoreboard players operation #time global = @e[type=armor_stand,tag=block,scores={temp=2}] time
scoreboard players operation #from_time global = @e[type=armor_stand,tag=block,scores={temp=2}] from_rot_time
scoreboard players operation #to_time global = @e[type=armor_stand,tag=block,scores={temp=2}] to_rot_time
function blockbuster:math/interpolate/ease_out
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] initial_rot_x = #output_value global

## y
scoreboard players operation #from_value global = @e[type=armor_stand,tag=block,scores={temp=2}] from_rot_y
scoreboard players operation #to_value global = @e[type=armor_stand,tag=block,scores={temp=2}] to_rot_y
scoreboard players operation #time global = @e[type=armor_stand,tag=block,scores={temp=2}] time
scoreboard players operation #from_time global = @e[type=armor_stand,tag=block,scores={temp=2}] from_rot_time
scoreboard players operation #to_time global = @e[type=armor_stand,tag=block,scores={temp=2}] to_rot_time
function blockbuster:math/interpolate/ease_out
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] initial_rot_y = #output_value global

## z
scoreboard players operation #from_value global = @e[type=armor_stand,tag=block,scores={temp=2}] from_rot_z
scoreboard players operation #to_value global = @e[type=armor_stand,tag=block,scores={temp=2}] to_rot_z
scoreboard players operation #time global = @e[type=armor_stand,tag=block,scores={temp=2}] time
scoreboard players operation #from_time global = @e[type=armor_stand,tag=block,scores={temp=2}] from_rot_time
scoreboard players operation #to_time global = @e[type=armor_stand,tag=block,scores={temp=2}] to_rot_time
function blockbuster:math/interpolate/ease_out
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] initial_rot_z = #output_value global

scoreboard players set @e[type=armor_stand,tag=block,scores={temp=2}] temp 1

# ease in and out pos
scoreboard players set @e[type=armor_stand,tag=block,tag=has_pos_keyframe,scores={temp=1,pos_trans_type=4}] temp 2

## x
scoreboard players operation #from_value global = @e[type=armor_stand,tag=block,scores={temp=2}] from_pos_x
scoreboard players operation #to_value global = @e[type=armor_stand,tag=block,scores={temp=2}] to_pos_x
scoreboard players operation #time global = @e[type=armor_stand,tag=block,scores={temp=2}] time
scoreboard players operation #from_time global = @e[type=armor_stand,tag=block,scores={temp=2}] from_pos_time
scoreboard players operation #to_time global = @e[type=armor_stand,tag=block,scores={temp=2}] to_pos_time
function blockbuster:math/interpolate/ease_in_and_out
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] initial_pos_x = #output_value global

## y
scoreboard players operation #from_value global = @e[type=armor_stand,tag=block,scores={temp=2}] from_pos_y
scoreboard players operation #to_value global = @e[type=armor_stand,tag=block,scores={temp=2}] to_pos_y
scoreboard players operation #time global = @e[type=armor_stand,tag=block,scores={temp=2}] time
scoreboard players operation #from_time global = @e[type=armor_stand,tag=block,scores={temp=2}] from_pos_time
scoreboard players operation #to_time global = @e[type=armor_stand,tag=block,scores={temp=2}] to_pos_time
function blockbuster:math/interpolate/ease_in_and_out
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] initial_pos_y = #output_value global

## z
scoreboard players operation #from_value global = @e[type=armor_stand,tag=block,scores={temp=2}] from_pos_z
scoreboard players operation #to_value global = @e[type=armor_stand,tag=block,scores={temp=2}] to_pos_z
scoreboard players operation #time global = @e[type=armor_stand,tag=block,scores={temp=2}] time
scoreboard players operation #from_time global = @e[type=armor_stand,tag=block,scores={temp=2}] from_pos_time
scoreboard players operation #to_time global = @e[type=armor_stand,tag=block,scores={temp=2}] to_pos_time
function blockbuster:math/interpolate/ease_in_and_out
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] initial_pos_z = #output_value global

scoreboard players set @e[type=armor_stand,tag=block,scores={temp=2}] temp 1

# ease in and out rot
scoreboard players set @e[type=armor_stand,tag=block,tag=has_rot_keyframe,scores={temp=1,rot_trans_type=4}] temp 2

## x
scoreboard players operation #from_value global = @e[type=armor_stand,tag=block,scores={temp=2}] from_rot_x
scoreboard players operation #to_value global = @e[type=armor_stand,tag=block,scores={temp=2}] to_rot_x
scoreboard players operation #time global = @e[type=armor_stand,tag=block,scores={temp=2}] time
scoreboard players operation #from_time global = @e[type=armor_stand,tag=block,scores={temp=2}] from_rot_time
scoreboard players operation #to_time global = @e[type=armor_stand,tag=block,scores={temp=2}] to_rot_time
function blockbuster:math/interpolate/ease_in_and_out
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] initial_rot_x = #output_value global

## y
scoreboard players operation #from_value global = @e[type=armor_stand,tag=block,scores={temp=2}] from_rot_y
scoreboard players operation #to_value global = @e[type=armor_stand,tag=block,scores={temp=2}] to_rot_y
scoreboard players operation #time global = @e[type=armor_stand,tag=block,scores={temp=2}] time
scoreboard players operation #from_time global = @e[type=armor_stand,tag=block,scores={temp=2}] from_rot_time
scoreboard players operation #to_time global = @e[type=armor_stand,tag=block,scores={temp=2}] to_rot_time
function blockbuster:math/interpolate/ease_in_and_out
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] initial_rot_y = #output_value global

## z
scoreboard players operation #from_value global = @e[type=armor_stand,tag=block,scores={temp=2}] from_rot_z
scoreboard players operation #to_value global = @e[type=armor_stand,tag=block,scores={temp=2}] to_rot_z
scoreboard players operation #time global = @e[type=armor_stand,tag=block,scores={temp=2}] time
scoreboard players operation #from_time global = @e[type=armor_stand,tag=block,scores={temp=2}] from_rot_time
scoreboard players operation #to_time global = @e[type=armor_stand,tag=block,scores={temp=2}] to_rot_time
function blockbuster:math/interpolate/ease_in_and_out
scoreboard players operation @e[type=armor_stand,tag=block,scores={temp=2}] initial_rot_z = #output_value global

scoreboard players set @e[type=armor_stand,tag=block,scores={temp=2}] temp 1

scoreboard players set @e[type=armor_stand,tag=block,scores={temp=1}] temp 3
execute if entity @e[type=armor_stand,tag=block,tag=has_keyframe,tag=update,scores={temp=0}] run function blockbuster:keyframe/interpolate
scoreboard players set @e[type=armor_stand,tag=block] temp 0
