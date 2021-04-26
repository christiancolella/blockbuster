scoreboard players operation #x_pos global = @s initial_pos_x
execute if entity @s[tag=!has_parent] run scoreboard players remove #x_pos global 500
execute if entity @s[tag=!has_parent] if score #x_pos global matches ..-1 run data modify storage blockbuster:main signs[0] set value "-"
execute if entity @s[tag=has_parent] if score #x_pos global matches 1.. run data modify storage blockbuster:main signs[0] set value "-"
execute if score #x_pos global matches ..-1 run scoreboard players operation #x_pos global *= #-1 constants
scoreboard players operation #x_pos_int global = #x_pos global
scoreboard players operation #x_pos_int global /= #1000 constants
scoreboard players operation #x_pos_dec global = #x_pos global
scoreboard players operation #x_pos_dec global %= #1000 constants
scoreboard players operation #x_pos_dec_0 global = #x_pos_dec global
scoreboard players operation #x_pos_dec_0 global /= #100 constants
scoreboard players operation #x_pos_dec_1 global = #x_pos_dec global
scoreboard players operation #x_pos_dec_1 global %= #100 constants
scoreboard players operation #x_pos_dec_1 global /= #10 constants
scoreboard players operation #x_pos_dec_2 global = #x_pos_dec global
scoreboard players operation #x_pos_dec_2 global %= #10 constants

scoreboard players operation #y_pos global = @s initial_pos_y
execute if entity @s[tag=!has_parent] run scoreboard players add #y_pos global 226
execute if score #y_pos global matches ..-1 run data modify storage blockbuster:main signs[1] set value "-"
execute if score #y_pos global matches ..-1 run scoreboard players operation #y_pos global *= #-1 constants
scoreboard players operation #y_pos_int global = #y_pos global
scoreboard players operation #y_pos_int global /= #1000 constants
scoreboard players operation #y_pos_dec global = #y_pos global
scoreboard players operation #y_pos_dec global %= #1000 constants
scoreboard players operation #y_pos_dec_0 global = #y_pos_dec global
scoreboard players operation #y_pos_dec_0 global /= #100 constants
scoreboard players operation #y_pos_dec_1 global = #y_pos_dec global
scoreboard players operation #y_pos_dec_1 global %= #100 constants
scoreboard players operation #y_pos_dec_1 global /= #10 constants
scoreboard players operation #y_pos_dec_2 global = #y_pos_dec global
scoreboard players operation #y_pos_dec_2 global %= #10 constants

scoreboard players operation #z_pos global = @s initial_pos_z
execute if entity @s[tag=!has_parent] run scoreboard players remove #z_pos global 500
execute if score #z_pos global matches ..-1 run data modify storage blockbuster:main signs[2] set value "-"
execute if score #z_pos global matches ..-1 run scoreboard players operation #z_pos global *= #-1 constants
scoreboard players operation #z_pos_int global = #z_pos global
scoreboard players operation #z_pos_int global /= #1000 constants
scoreboard players operation #z_pos_dec global = #z_pos global
scoreboard players operation #z_pos_dec global %= #1000 constants
scoreboard players operation #z_pos_dec_0 global = #z_pos_dec global
scoreboard players operation #z_pos_dec_0 global /= #100 constants
scoreboard players operation #z_pos_dec_1 global = #z_pos_dec global
scoreboard players operation #z_pos_dec_1 global %= #100 constants
scoreboard players operation #z_pos_dec_1 global /= #10 constants
scoreboard players operation #z_pos_dec_2 global = #z_pos_dec global
scoreboard players operation #z_pos_dec_2 global %= #10 constants

scoreboard players operation #x_rot global = @s initial_rot_x
execute if score #x_rot global matches ..-1 run data modify storage blockbuster:main signs[3] set value "-"
execute if score #x_rot global matches ..-1 run scoreboard players operation #x_rot global *= #-1 constants
scoreboard players operation #x_rot_int global = #x_rot global
scoreboard players operation #x_rot_int global /= #1000 constants
scoreboard players operation #x_rot_dec global = #x_rot global
scoreboard players operation #x_rot_dec global %= #1000 constants
scoreboard players operation #x_rot_dec_0 global = #x_rot_dec global
scoreboard players operation #x_rot_dec_0 global /= #100 constants
scoreboard players operation #x_rot_dec_1 global = #x_rot_dec global
scoreboard players operation #x_rot_dec_1 global %= #100 constants
scoreboard players operation #x_rot_dec_1 global /= #10 constants
scoreboard players operation #x_rot_dec_2 global = #x_rot_dec global
scoreboard players operation #x_rot_dec_2 global %= #10 constants

scoreboard players operation #y_rot global = @s initial_rot_y
execute if score #y_rot global matches 1.. run data modify storage blockbuster:main signs[4] set value "-"
execute if score #y_rot global matches ..-1 run scoreboard players operation #y_rot global *= #-1 constants
scoreboard players operation #y_rot_int global = #y_rot global
scoreboard players operation #y_rot_int global /= #1000 constants
scoreboard players operation #y_rot_dec global = #y_rot global
scoreboard players operation #y_rot_dec global %= #1000 constants
scoreboard players operation #y_rot_dec_0 global = #y_rot_dec global
scoreboard players operation #y_rot_dec_0 global /= #100 constants
scoreboard players operation #y_rot_dec_1 global = #y_rot_dec global
scoreboard players operation #y_rot_dec_1 global %= #100 constants
scoreboard players operation #y_rot_dec_1 global /= #10 constants
scoreboard players operation #y_rot_dec_2 global = #y_rot_dec global
scoreboard players operation #y_rot_dec_2 global %= #10 constants

scoreboard players operation #z_rot global = @s initial_rot_z
execute if score #z_rot global matches 1.. run data modify storage blockbuster:main signs[5] set value "-"
execute if score #z_rot global matches ..-1 run scoreboard players operation #z_rot global *= #-1 constants
scoreboard players operation #z_rot_int global = #z_rot global
scoreboard players operation #z_rot_int global /= #1000 constants
scoreboard players operation #z_rot_dec global = #z_rot global
scoreboard players operation #z_rot_dec global %= #1000 constants
scoreboard players operation #z_rot_dec_0 global = #z_rot_dec global
scoreboard players operation #z_rot_dec_0 global /= #100 constants
scoreboard players operation #z_rot_dec_1 global = #z_rot_dec global
scoreboard players operation #z_rot_dec_1 global %= #100 constants
scoreboard players operation #z_rot_dec_1 global /= #10 constants
scoreboard players operation #z_rot_dec_2 global = #z_rot_dec global
scoreboard players operation #z_rot_dec_2 global %= #10 constants

scoreboard players operation #anim_length global = @s anim_length
scoreboard players operation #anim_length_int global = #anim_length global
scoreboard players operation #anim_length_int global /= #20 constants
scoreboard players operation #anim_length_dec_0 global = #anim_length global
scoreboard players operation #anim_length_dec_0 global %= #20 constants
scoreboard players operation #anim_length_dec_0 global /= #2 constants
scoreboard players operation #anim_length_dec_1 global = #anim_length global
scoreboard players operation #anim_length_dec_1 global %= #2 constants
scoreboard players operation #anim_length_dec_1 global *= #5 constants

scoreboard players operation #time global = @s time
scoreboard players operation #time_int global = #time global
scoreboard players operation #time_int global /= #20 constants
scoreboard players operation #time_dec_0 global = #time global
scoreboard players operation #time_dec_0 global %= #20 constants
scoreboard players operation #time_dec_0 global /= #2 constants
scoreboard players operation #time_dec_1 global = #time global
scoreboard players operation #time_dec_1 global %= #2 constants
scoreboard players operation #time_dec_1 global *= #5 constants

scoreboard players operation #progress global = @s time
scoreboard players operation #progress global *= #100 constants
scoreboard players operation #progress global /= @s anim_length

data modify storage blockbuster:strings position set value "[{\"text\":\"[\",\"color\":\"#202020\"},{\"storage\":\"blockbuster:main\",\"nbt\":\"signs[0]\",\"color\":\"dark_red\"},{\"score\":{\"name\":\"#x_pos_int\",\"objective\":\"global\"},\"color\":\"dark_red\"},{\"text\":\".\",\"color\":\"dark_red\"},{\"score\":{\"name\":\"#x_pos_dec_0\",\"objective\":\"global\"},\"color\":\"dark_red\"},{\"score\":{\"name\":\"#x_pos_dec_1\",\"objective\":\"global\"},\"color\":\"dark_red\"},{\"score\":{\"name\":\"#x_pos_dec_2\",\"objective\":\"global\"},\"color\":\"dark_red\"},{\"text\":\", \",\"color\":\"#202020\"},{\"storage\":\"blockbuster:main\",\"nbt\":\"signs[1]\",\"color\":\"dark_green\"},{\"score\":{\"name\":\"#y_pos_int\",\"objective\":\"global\"},\"color\":\"dark_green\"},{\"text\":\".\",\"color\":\"dark_green\"},{\"score\":{\"name\":\"#y_pos_dec_0\",\"objective\":\"global\"},\"color\":\"dark_green\"},{\"score\":{\"name\":\"#y_pos_dec_1\",\"objective\":\"global\"},\"color\":\"dark_green\"},{\"score\":{\"name\":\"#y_pos_dec_2\",\"objective\":\"global\"},\"color\":\"dark_green\"},{\"text\":\", \",\"color\":\"#202020\"},{\"storage\":\"blockbuster:main\",\"nbt\":\"signs[2]\",\"color\":\"dark_blue\"},{\"score\":{\"name\":\"#z_pos_int\",\"objective\":\"global\"},\"color\":\"dark_blue\"},{\"text\":\".\",\"color\":\"dark_blue\"},{\"score\":{\"name\":\"#z_pos_dec_0\",\"objective\":\"global\"},\"color\":\"dark_blue\"},{\"score\":{\"name\":\"#z_pos_dec_1\",\"objective\":\"global\"},\"color\":\"dark_blue\"},{\"score\":{\"name\":\"#z_pos_dec_2\",\"objective\":\"global\"},\"color\":\"dark_blue\"},{\"text\":\"]\",\"color\":\"#202020\"}]"
data modify storage blockbuster:strings rotation set value "[{\"text\":\"[\",\"color\":\"#202020\"},{\"storage\":\"blockbuster:main\",\"nbt\":\"signs[3]\",\"color\":\"dark_red\"},{\"score\":{\"name\":\"#x_rot_int\",\"objective\":\"global\"},\"color\":\"dark_red\"},{\"text\":\".\",\"color\":\"dark_red\"},{\"score\":{\"name\":\"#x_rot_dec_0\",\"objective\":\"global\"},\"color\":\"dark_red\"},{\"score\":{\"name\":\"#x_rot_dec_1\",\"objective\":\"global\"},\"color\":\"dark_red\"},{\"score\":{\"name\":\"#x_rot_dec_2\",\"objective\":\"global\"},\"color\":\"dark_red\"},{\"text\":\", \",\"color\":\"#202020\"},{\"storage\":\"blockbuster:main\",\"nbt\":\"signs[4]\",\"color\":\"dark_green\"},{\"score\":{\"name\":\"#y_rot_int\",\"objective\":\"global\"},\"color\":\"dark_green\"},{\"text\":\".\",\"color\":\"dark_green\"},{\"score\":{\"name\":\"#y_rot_dec_0\",\"objective\":\"global\"},\"color\":\"dark_green\"},{\"score\":{\"name\":\"#y_rot_dec_1\",\"objective\":\"global\"},\"color\":\"dark_green\"},{\"score\":{\"name\":\"#y_rot_dec_2\",\"objective\":\"global\"},\"color\":\"dark_green\"},{\"text\":\", \",\"color\":\"#202020\"},{\"storage\":\"blockbuster:main\",\"nbt\":\"signs[5]\",\"color\":\"dark_blue\"},{\"score\":{\"name\":\"#z_rot_int\",\"objective\":\"global\"},\"color\":\"dark_blue\"},{\"text\":\".\",\"color\":\"dark_blue\"},{\"score\":{\"name\":\"#z_rot_dec_0\",\"objective\":\"global\"},\"color\":\"dark_blue\"},{\"score\":{\"name\":\"#z_rot_dec_1\",\"objective\":\"global\"},\"color\":\"dark_blue\"},{\"score\":{\"name\":\"#z_rot_dec_2\",\"objective\":\"global\"},\"color\":\"dark_blue\"},{\"text\":\"]\",\"color\":\"#202020\"}]"

data modify storage blockbuster:main timeline[0] set value "{\"text\":\"-\",\"color\":\"light_purple\"}"
data modify storage blockbuster:main timeline[1] set value "{\"text\":\"-\",\"color\":\"light_purple\"}"
data modify storage blockbuster:main timeline[2] set value "{\"text\":\"-\",\"color\":\"light_purple\"}"
data modify storage blockbuster:main timeline[3] set value "{\"text\":\"-\",\"color\":\"light_purple\"}"
data modify storage blockbuster:main timeline[4] set value "{\"text\":\"-\",\"color\":\"light_purple\"}"
data modify storage blockbuster:main timeline[5] set value "{\"text\":\"-\",\"color\":\"light_purple\"}"
data modify storage blockbuster:main timeline[6] set value "{\"text\":\"-\",\"color\":\"light_purple\"}"
data modify storage blockbuster:main timeline[7] set value "{\"text\":\"-\",\"color\":\"light_purple\"}"
data modify storage blockbuster:main timeline[8] set value "{\"text\":\"-\",\"color\":\"light_purple\"}"
data modify storage blockbuster:main timeline[9] set value "{\"text\":\"-\",\"color\":\"light_purple\"}"
data modify storage blockbuster:main timeline[10] set value "{\"text\":\"-\",\"color\":\"light_purple\"}"
data modify storage blockbuster:main timeline[11] set value "{\"text\":\"-\",\"color\":\"light_purple\"}"
data modify storage blockbuster:main timeline[12] set value "{\"text\":\"-\",\"color\":\"light_purple\"}"
data modify storage blockbuster:main timeline[13] set value "{\"text\":\"-\",\"color\":\"light_purple\"}"
data modify storage blockbuster:main timeline[14] set value "{\"text\":\"-\",\"color\":\"light_purple\"}"
data modify storage blockbuster:main timeline[15] set value "{\"text\":\"-\",\"color\":\"light_purple\"}"
data modify storage blockbuster:main timeline[16] set value "{\"text\":\"-\",\"color\":\"light_purple\"}"
data modify storage blockbuster:main timeline[17] set value "{\"text\":\"-\",\"color\":\"light_purple\"}"
data modify storage blockbuster:main timeline[18] set value "{\"text\":\"-\",\"color\":\"light_purple\"}"
data modify storage blockbuster:main timeline[19] set value "{\"text\":\"-\",\"color\":\"light_purple\"}"

execute if score #progress global matches ..4 if score @s keyframe_type matches 0 run data modify storage blockbuster:main timeline[0] set value "[{\"text\":\"<\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_int\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\".\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_dec_0\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_dec_1\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\">\",\"color\":\"light_purple\"}]"
execute if score #progress global matches 5..9 if score @s keyframe_type matches 0 run data modify storage blockbuster:main timeline[1] set value "[{\"text\":\"<\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_int\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\".\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_dec_0\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_dec_1\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\">\",\"color\":\"light_purple\"}]"
execute if score #progress global matches 10..14 if score @s keyframe_type matches 0 run data modify storage blockbuster:main timeline[2] set value "[{\"text\":\"<\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_int\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\".\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_dec_0\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_dec_1\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\">\",\"color\":\"light_purple\"}]"
execute if score #progress global matches 15..19 if score @s keyframe_type matches 0 run data modify storage blockbuster:main timeline[3] set value "[{\"text\":\"<\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_int\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\".\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_dec_0\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_dec_1\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\">\",\"color\":\"light_purple\"}]"
execute if score #progress global matches 20..24 if score @s keyframe_type matches 0 run data modify storage blockbuster:main timeline[4] set value "[{\"text\":\"<\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_int\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\".\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_dec_0\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_dec_1\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\">\",\"color\":\"light_purple\"}]"
execute if score #progress global matches 25..29 if score @s keyframe_type matches 0 run data modify storage blockbuster:main timeline[5] set value "[{\"text\":\"<\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_int\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\".\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_dec_0\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_dec_1\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\">\",\"color\":\"light_purple\"}]"
execute if score #progress global matches 30..34 if score @s keyframe_type matches 0 run data modify storage blockbuster:main timeline[6] set value "[{\"text\":\"<\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_int\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\".\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_dec_0\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_dec_1\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\">\",\"color\":\"light_purple\"}]"
execute if score #progress global matches 35..39 if score @s keyframe_type matches 0 run data modify storage blockbuster:main timeline[7] set value "[{\"text\":\"<\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_int\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\".\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_dec_0\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_dec_1\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\">\",\"color\":\"light_purple\"}]"
execute if score #progress global matches 40..44 if score @s keyframe_type matches 0 run data modify storage blockbuster:main timeline[8] set value "[{\"text\":\"<\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_int\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\".\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_dec_0\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_dec_1\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\">\",\"color\":\"light_purple\"}]"
execute if score #progress global matches 45..49 if score @s keyframe_type matches 0 run data modify storage blockbuster:main timeline[9] set value "[{\"text\":\"<\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_int\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\".\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_dec_0\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_dec_1\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\">\",\"color\":\"light_purple\"}]"
execute if score #progress global matches 50..54 if score @s keyframe_type matches 0 run data modify storage blockbuster:main timeline[10] set value "[{\"text\":\"<\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_int\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\".\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_dec_0\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_dec_1\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\">\",\"color\":\"light_purple\"}]"
execute if score #progress global matches 55..59 if score @s keyframe_type matches 0 run data modify storage blockbuster:main timeline[11] set value "[{\"text\":\"<\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_int\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\".\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_dec_0\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_dec_1\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\">\",\"color\":\"light_purple\"}]"
execute if score #progress global matches 60..64 if score @s keyframe_type matches 0 run data modify storage blockbuster:main timeline[12] set value "[{\"text\":\"<\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_int\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\".\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_dec_0\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_dec_1\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\">\",\"color\":\"light_purple\"}]"
execute if score #progress global matches 65..69 if score @s keyframe_type matches 0 run data modify storage blockbuster:main timeline[13] set value "[{\"text\":\"<\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_int\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\".\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_dec_0\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_dec_1\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\">\",\"color\":\"light_purple\"}]"
execute if score #progress global matches 70..74 if score @s keyframe_type matches 0 run data modify storage blockbuster:main timeline[14] set value "[{\"text\":\"<\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_int\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\".\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_dec_0\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_dec_1\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\">\",\"color\":\"light_purple\"}]"
execute if score #progress global matches 75..79 if score @s keyframe_type matches 0 run data modify storage blockbuster:main timeline[15] set value "[{\"text\":\"<\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_int\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\".\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_dec_0\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_dec_1\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\">\",\"color\":\"light_purple\"}]"
execute if score #progress global matches 80..84 if score @s keyframe_type matches 0 run data modify storage blockbuster:main timeline[16] set value "[{\"text\":\"<\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_int\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\".\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_dec_0\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_dec_1\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\">\",\"color\":\"light_purple\"}]"
execute if score #progress global matches 85..89 if score @s keyframe_type matches 0 run data modify storage blockbuster:main timeline[17] set value "[{\"text\":\"<\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_int\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\".\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_dec_0\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_dec_1\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\">\",\"color\":\"light_purple\"}]"
execute if score #progress global matches 90..94 if score @s keyframe_type matches 0 run data modify storage blockbuster:main timeline[18] set value "[{\"text\":\"<\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_int\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\".\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_dec_0\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_dec_1\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\">\",\"color\":\"light_purple\"}]"
execute if score #progress global matches 95..100 if score @s keyframe_type matches 0 run data modify storage blockbuster:main timeline[19] set value "[{\"text\":\"<\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_int\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\".\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_dec_0\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_dec_1\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\">\",\"color\":\"light_purple\"}]"

execute if score #progress global matches ..4 if score @s keyframe_type matches 1 run data modify storage blockbuster:main timeline[0] set value "[{\"text\":\"<\",\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_int\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"text\":\".\",\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_dec_0\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_dec_1\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"text\":\">\",\"color\":\"#663bb3\"}]"
execute if score #progress global matches 5..9 if score @s keyframe_type matches 1 run data modify storage blockbuster:main timeline[1] set value "[{\"text\":\"<\",\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_int\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"text\":\".\",\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_dec_0\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_dec_1\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"text\":\">\",\"color\":\"#663bb3\"}]"
execute if score #progress global matches 10..14 if score @s keyframe_type matches 1 run data modify storage blockbuster:main timeline[2] set value "[{\"text\":\"<\",\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_int\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"text\":\".\",\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_dec_0\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_dec_1\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"text\":\">\",\"color\":\"#663bb3\"}]"
execute if score #progress global matches 15..19 if score @s keyframe_type matches 1 run data modify storage blockbuster:main timeline[3] set value "[{\"text\":\"<\",\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_int\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"text\":\".\",\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_dec_0\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_dec_1\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"text\":\">\",\"color\":\"#663bb3\"}]"
execute if score #progress global matches 20..24 if score @s keyframe_type matches 1 run data modify storage blockbuster:main timeline[4] set value "[{\"text\":\"<\",\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_int\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"text\":\".\",\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_dec_0\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_dec_1\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"text\":\">\",\"color\":\"#663bb3\"}]"
execute if score #progress global matches 25..29 if score @s keyframe_type matches 1 run data modify storage blockbuster:main timeline[5] set value "[{\"text\":\"<\",\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_int\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"text\":\".\",\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_dec_0\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_dec_1\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"text\":\">\",\"color\":\"#663bb3\"}]"
execute if score #progress global matches 30..34 if score @s keyframe_type matches 1 run data modify storage blockbuster:main timeline[6] set value "[{\"text\":\"<\",\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_int\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"text\":\".\",\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_dec_0\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_dec_1\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"text\":\">\",\"color\":\"#663bb3\"}]"
execute if score #progress global matches 35..39 if score @s keyframe_type matches 1 run data modify storage blockbuster:main timeline[7] set value "[{\"text\":\"<\",\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_int\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"text\":\".\",\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_dec_0\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_dec_1\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"text\":\">\",\"color\":\"#663bb3\"}]"
execute if score #progress global matches 40..44 if score @s keyframe_type matches 1 run data modify storage blockbuster:main timeline[8] set value "[{\"text\":\"<\",\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_int\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"text\":\".\",\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_dec_0\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_dec_1\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"text\":\">\",\"color\":\"#663bb3\"}]"
execute if score #progress global matches 45..49 if score @s keyframe_type matches 1 run data modify storage blockbuster:main timeline[9] set value "[{\"text\":\"<\",\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_int\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"text\":\".\",\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_dec_0\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_dec_1\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"text\":\">\",\"color\":\"#663bb3\"}]"
execute if score #progress global matches 50..54 if score @s keyframe_type matches 1 run data modify storage blockbuster:main timeline[10] set value "[{\"text\":\"<\",\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_int\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"text\":\".\",\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_dec_0\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_dec_1\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"text\":\">\",\"color\":\"#663bb3\"}]"
execute if score #progress global matches 55..59 if score @s keyframe_type matches 1 run data modify storage blockbuster:main timeline[11] set value "[{\"text\":\"<\",\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_int\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"text\":\".\",\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_dec_0\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_dec_1\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"text\":\">\",\"color\":\"#663bb3\"}]"
execute if score #progress global matches 60..64 if score @s keyframe_type matches 1 run data modify storage blockbuster:main timeline[12] set value "[{\"text\":\"<\",\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_int\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"text\":\".\",\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_dec_0\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_dec_1\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"text\":\">\",\"color\":\"#663bb3\"}]"
execute if score #progress global matches 65..69 if score @s keyframe_type matches 1 run data modify storage blockbuster:main timeline[13] set value "[{\"text\":\"<\",\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_int\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"text\":\".\",\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_dec_0\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_dec_1\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"text\":\">\",\"color\":\"#663bb3\"}]"
execute if score #progress global matches 70..74 if score @s keyframe_type matches 1 run data modify storage blockbuster:main timeline[14] set value "[{\"text\":\"<\",\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_int\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"text\":\".\",\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_dec_0\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_dec_1\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"text\":\">\",\"color\":\"#663bb3\"}]"
execute if score #progress global matches 75..79 if score @s keyframe_type matches 1 run data modify storage blockbuster:main timeline[15] set value "[{\"text\":\"<\",\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_int\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"text\":\".\",\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_dec_0\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_dec_1\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"text\":\">\",\"color\":\"#663bb3\"}]"
execute if score #progress global matches 80..84 if score @s keyframe_type matches 1 run data modify storage blockbuster:main timeline[16] set value "[{\"text\":\"<\",\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_int\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"text\":\".\",\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_dec_0\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_dec_1\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"text\":\">\",\"color\":\"#663bb3\"}]"
execute if score #progress global matches 85..89 if score @s keyframe_type matches 1 run data modify storage blockbuster:main timeline[17] set value "[{\"text\":\"<\",\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_int\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"text\":\".\",\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_dec_0\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_dec_1\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"text\":\">\",\"color\":\"#663bb3\"}]"
execute if score #progress global matches 90..94 if score @s keyframe_type matches 1 run data modify storage blockbuster:main timeline[18] set value "[{\"text\":\"<\",\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_int\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"text\":\".\",\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_dec_0\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_dec_1\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"text\":\">\",\"color\":\"#663bb3\"}]"
execute if score #progress global matches 95..100 if score @s keyframe_type matches 1 run data modify storage blockbuster:main timeline[19] set value "[{\"text\":\"<\",\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_int\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"text\":\".\",\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_dec_0\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_dec_1\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"text\":\">\",\"color\":\"#663bb3\"}]"

data modify storage blockbuster:main timeline_short[0] set value "{\"text\":\"-\",\"color\":\"light_purple\"}"
data modify storage blockbuster:main timeline_short[1] set value "{\"text\":\"-\",\"color\":\"light_purple\"}"
data modify storage blockbuster:main timeline_short[2] set value "{\"text\":\"-\",\"color\":\"light_purple\"}"
data modify storage blockbuster:main timeline_short[3] set value "{\"text\":\"-\",\"color\":\"light_purple\"}"
data modify storage blockbuster:main timeline_short[4] set value "{\"text\":\"-\",\"color\":\"light_purple\"}"

execute if score #progress global matches ..19 if score @s keyframe_type matches 0 run data modify storage blockbuster:main timeline_short[0] set value "[{\"text\":\"<\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_int\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\".\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_dec_0\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_dec_1\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\">\",\"color\":\"light_purple\"}]"
execute if score #progress global matches 20..39 if score @s keyframe_type matches 0 run data modify storage blockbuster:main timeline_short[1] set value "[{\"text\":\"<\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_int\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\".\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_dec_0\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_dec_1\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\">\",\"color\":\"light_purple\"}]"
execute if score #progress global matches 40..59 if score @s keyframe_type matches 0 run data modify storage blockbuster:main timeline_short[2] set value "[{\"text\":\"<\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_int\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\".\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_dec_0\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_dec_1\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\">\",\"color\":\"light_purple\"}]"
execute if score #progress global matches 60..79 if score @s keyframe_type matches 0 run data modify storage blockbuster:main timeline_short[3] set value "[{\"text\":\"<\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_int\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\".\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_dec_0\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_dec_1\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\">\",\"color\":\"light_purple\"}]"
execute if score #progress global matches 80.. if score @s keyframe_type matches 0 run data modify storage blockbuster:main timeline_short[4] set value "[{\"text\":\"<\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_int\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\".\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_dec_0\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"score\":{\"name\":\"#time_dec_1\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\">\",\"color\":\"light_purple\"}]"

execute if score #progress global matches ..19 if score @s keyframe_type matches 1 run data modify storage blockbuster:main timeline_short[0] set value "[{\"text\":\"<\",\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_int\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"text\":\".\",\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_dec_0\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_dec_1\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"text\":\">\",\"color\":\"#663bb3\"}]"
execute if score #progress global matches 20..39 if score @s keyframe_type matches 1 run data modify storage blockbuster:main timeline_short[1] set value "[{\"text\":\"<\",\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_int\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"text\":\".\",\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_dec_0\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_dec_1\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"text\":\">\",\"color\":\"#663bb3\"}]"
execute if score #progress global matches 40..59 if score @s keyframe_type matches 1 run data modify storage blockbuster:main timeline_short[2] set value "[{\"text\":\"<\",\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_int\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"text\":\".\",\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_dec_0\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_dec_1\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"text\":\">\",\"color\":\"#663bb3\"}]"
execute if score #progress global matches 60..79 if score @s keyframe_type matches 1 run data modify storage blockbuster:main timeline_short[3] set value "[{\"text\":\"<\",\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_int\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"text\":\".\",\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_dec_0\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_dec_1\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"text\":\">\",\"color\":\"#663bb3\"}]"
execute if score #progress global matches 80.. if score @s keyframe_type matches 1 run data modify storage blockbuster:main timeline_short[4] set value "[{\"text\":\"<\",\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_int\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"text\":\".\",\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_dec_0\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"score\":{\"name\":\"#time_dec_1\",\"objective\":\"global\"},\"color\":\"#663bb3\"},{\"text\":\">\",\"color\":\"#663bb3\"}]"

data modify storage blockbuster:strings timeline set value "[{\"text\":\"0.00 |\",\"color\":\"light_purple\"},{\"storage\":\"blockbuster:main\",\"nbt\":\"timeline[0]\",\"interpret\":true},{\"storage\":\"blockbuster:main\",\"nbt\":\"timeline[1]\",\"interpret\":true},{\"storage\":\"blockbuster:main\",\"nbt\":\"timeline[2]\",\"interpret\":true},{\"storage\":\"blockbuster:main\",\"nbt\":\"timeline[3]\",\"interpret\":true},{\"storage\":\"blockbuster:main\",\"nbt\":\"timeline[4]\",\"interpret\":true},{\"storage\":\"blockbuster:main\",\"nbt\":\"timeline[5]\",\"interpret\":true},{\"storage\":\"blockbuster:main\",\"nbt\":\"timeline[6]\",\"interpret\":true},{\"storage\":\"blockbuster:main\",\"nbt\":\"timeline[7]\",\"interpret\":true},{\"storage\":\"blockbuster:main\",\"nbt\":\"timeline[8]\",\"interpret\":true},{\"storage\":\"blockbuster:main\",\"nbt\":\"timeline[9]\",\"interpret\":true},{\"storage\":\"blockbuster:main\",\"nbt\":\"timeline[10]\",\"interpret\":true},{\"storage\":\"blockbuster:main\",\"nbt\":\"timeline[11]\",\"interpret\":true},{\"storage\":\"blockbuster:main\",\"nbt\":\"timeline[12]\",\"interpret\":true},{\"storage\":\"blockbuster:main\",\"nbt\":\"timeline[13]\",\"interpret\":true},{\"storage\":\"blockbuster:main\",\"nbt\":\"timeline[14]\",\"interpret\":true},{\"storage\":\"blockbuster:main\",\"nbt\":\"timeline[15]\",\"interpret\":true},{\"storage\":\"blockbuster:main\",\"nbt\":\"timeline[16]\",\"interpret\":true},{\"storage\":\"blockbuster:main\",\"nbt\":\"timeline[17]\",\"interpret\":true},{\"storage\":\"blockbuster:main\",\"nbt\":\"timeline[18]\",\"interpret\":true},{\"storage\":\"blockbuster:main\",\"nbt\":\"timeline[19]\",\"interpret\":true},{\"text\":\"| \",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#anim_length_int\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\".\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#anim_length_dec_0\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"score\":{\"name\":\"#anim_length_dec_1\",\"objective\":\"global\"},\"color\":\"light_purple\"}]"

data modify storage blockbuster:strings timeline_short set value "[{\"text\":\"0.00 |\",\"color\":\"light_purple\"},{\"storage\":\"blockbuster:main\",\"nbt\":\"timeline_short[0]\",\"interpret\":true},{\"storage\":\"blockbuster:main\",\"nbt\":\"timeline_short[1]\",\"interpret\":true},{\"storage\":\"blockbuster:main\",\"nbt\":\"timeline_short[2]\",\"interpret\":true},{\"storage\":\"blockbuster:main\",\"nbt\":\"timeline_short[3]\",\"interpret\":true},{\"storage\":\"blockbuster:main\",\"nbt\":\"timeline_short[4]\",\"interpret\":true},{\"text\":\"| \",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#anim_length_int\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"text\":\".\",\"color\":\"light_purple\"},{\"score\":{\"name\":\"#anim_length_dec_0\",\"objective\":\"global\"},\"color\":\"light_purple\"},{\"score\":{\"name\":\"#anim_length_dec_1\",\"objective\":\"global\"},\"color\":\"light_purple\"}]"

scoreboard players operation #kx_pos global = @s[scores={keyframe_type=1}] from_pos_x
execute if entity @s[tag=!has_parent] run scoreboard players remove #kx_pos global 500
execute if entity @s[tag=!has_parent] if score #kx_pos global matches ..-1 run data modify storage blockbuster:main signs[6] set value "-"
execute if entity @s[tag=has_parent] if score #kx_pos global matches 1.. run data modify storage blockbuster:main signs[6] set value "-"
execute if score #kx_pos global matches ..-1 run scoreboard players operation #kx_pos global *= #-1 constants
scoreboard players operation #kx_pos_int global = #kx_pos global
scoreboard players operation #kx_pos_int global /= #1000 constants
scoreboard players operation #kx_pos_dec global = #kx_pos global
scoreboard players operation #kx_pos_dec global %= #1000 constants
scoreboard players operation #kx_pos_dec_0 global = #kx_pos_dec global
scoreboard players operation #kx_pos_dec_0 global /= #100 constants
scoreboard players operation #kx_pos_dec_1 global = #kx_pos_dec global
scoreboard players operation #kx_pos_dec_1 global %= #100 constants
scoreboard players operation #kx_pos_dec_1 global /= #10 constants
scoreboard players operation #kx_pos_dec_2 global = #kx_pos_dec global
scoreboard players operation #kx_pos_dec_2 global %= #10 constants

scoreboard players operation #ky_pos global = @s[scores={keyframe_type=1}] from_pos_y
execute if entity @s[tag=!has_parent] run scoreboard players add #ky_pos global 226
execute if score #ky_pos global matches ..-1 run data modify storage blockbuster:main signs[7] set value "-"
execute if score #ky_pos global matches ..-1 run scoreboard players operation #ky_pos global *= #-1 constants
scoreboard players operation #ky_pos_int global = #ky_pos global
scoreboard players operation #ky_pos_int global /= #1000 constants
scoreboard players operation #ky_pos_dec global = #ky_pos global
scoreboard players operation #ky_pos_dec global %= #1000 constants
scoreboard players operation #ky_pos_dec_0 global = #ky_pos_dec global
scoreboard players operation #ky_pos_dec_0 global /= #100 constants
scoreboard players operation #ky_pos_dec_1 global = #ky_pos_dec global
scoreboard players operation #ky_pos_dec_1 global %= #100 constants
scoreboard players operation #ky_pos_dec_1 global /= #10 constants
scoreboard players operation #ky_pos_dec_2 global = #ky_pos_dec global
scoreboard players operation #ky_pos_dec_2 global %= #10 constants

scoreboard players operation #kz_pos global = @s[scores={keyframe_type=1}] from_pos_z
execute if entity @s[tag=!has_parent] run scoreboard players remove #kz_pos global 500
execute if score #kz_pos global matches ..-1 run data modify storage blockbuster:main signs[8] set value "-"
execute if score #kz_pos global matches ..-1 run scoreboard players operation #kz_pos global *= #-1 constants
scoreboard players operation #kz_pos_int global = #kz_pos global
scoreboard players operation #kz_pos_int global /= #1000 constants
scoreboard players operation #kz_pos_dec global = #kz_pos global
scoreboard players operation #kz_pos_dec global %= #1000 constants
scoreboard players operation #kz_pos_dec_0 global = #kz_pos_dec global
scoreboard players operation #kz_pos_dec_0 global /= #100 constants
scoreboard players operation #kz_pos_dec_1 global = #kz_pos_dec global
scoreboard players operation #kz_pos_dec_1 global %= #100 constants
scoreboard players operation #kz_pos_dec_1 global /= #10 constants
scoreboard players operation #kz_pos_dec_2 global = #kz_pos_dec global
scoreboard players operation #kz_pos_dec_2 global %= #10 constants

scoreboard players operation #kx_rot global = @s[scores={keyframe_type=1}] from_rot_x
execute if score #kx_rot global matches ..-1 run data modify storage blockbuster:main signs[9] set value "-"
execute if score #kx_rot global matches ..-1 run scoreboard players operation #kx_rot global *= #-1 constants
scoreboard players operation #kx_rot_int global = #kx_rot global
scoreboard players operation #kx_rot_int global /= #1000 constants
scoreboard players operation #kx_rot_dec global = #kx_rot global
scoreboard players operation #kx_rot_dec global %= #1000 constants
scoreboard players operation #kx_rot_dec_0 global = #kx_rot_dec global
scoreboard players operation #kx_rot_dec_0 global /= #100 constants
scoreboard players operation #kx_rot_dec_1 global = #kx_rot_dec global
scoreboard players operation #kx_rot_dec_1 global %= #100 constants
scoreboard players operation #kx_rot_dec_1 global /= #10 constants
scoreboard players operation #kx_rot_dec_2 global = #kx_rot_dec global
scoreboard players operation #kx_rot_dec_2 global %= #10 constants

scoreboard players operation #ky_rot global = @s[scores={keyframe_type=1}] from_rot_y
execute if score #ky_rot global matches 1.. run data modify storage blockbuster:main signs[10] set value "-"
execute if score #ky_rot global matches ..-1 run scoreboard players operation #ky_rot global *= #-1 constants
scoreboard players operation #ky_rot_int global = #ky_rot global
scoreboard players operation #ky_rot_int global /= #1000 constants
scoreboard players operation #ky_rot_dec global = #ky_rot global
scoreboard players operation #ky_rot_dec global %= #1000 constants
scoreboard players operation #ky_rot_dec_0 global = #ky_rot_dec global
scoreboard players operation #ky_rot_dec_0 global /= #100 constants
scoreboard players operation #ky_rot_dec_1 global = #ky_rot_dec global
scoreboard players operation #ky_rot_dec_1 global %= #100 constants
scoreboard players operation #ky_rot_dec_1 global /= #10 constants
scoreboard players operation #ky_rot_dec_2 global = #ky_rot_dec global
scoreboard players operation #ky_rot_dec_2 global %= #10 constants

scoreboard players operation #kz_rot global = @s[scores={keyframe_type=1}] from_rot_z
execute if score #kz_rot global matches 1.. run data modify storage blockbuster:main signs[11] set value "-"
execute if score #kz_rot global matches ..-1 run scoreboard players operation #kz_rot global *= #-1 constants
scoreboard players operation #kz_rot_int global = #kz_rot global
scoreboard players operation #kz_rot_int global /= #1000 constants
scoreboard players operation #kz_rot_dec global = #kz_rot global
scoreboard players operation #kz_rot_dec global %= #1000 constants
scoreboard players operation #kz_rot_dec_0 global = #kz_rot_dec global
scoreboard players operation #kz_rot_dec_0 global /= #100 constants
scoreboard players operation #kz_rot_dec_1 global = #kz_rot_dec global
scoreboard players operation #kz_rot_dec_1 global %= #100 constants
scoreboard players operation #kz_rot_dec_1 global /= #10 constants
scoreboard players operation #kz_rot_dec_2 global = #kz_rot_dec global
scoreboard players operation #kz_rot_dec_2 global %= #10 constants

data modify storage blockbuster:strings keyframe_pos set value "[{\"text\":\"[\",\"color\":\"#663bb3\"},{\"storage\":\"blockbuster:main\",\"nbt\":\"signs[6]\",\"color\":\"dark_red\"},{\"score\":{\"name\":\"#kx_pos_int\",\"objective\":\"global\"},\"color\":\"dark_red\"},{\"text\":\".\",\"color\":\"dark_red\"},{\"score\":{\"name\":\"#kx_pos_dec_0\",\"objective\":\"global\"},\"color\":\"dark_red\"},{\"score\":{\"name\":\"#kx_pos_dec_1\",\"objective\":\"global\"},\"color\":\"dark_red\"},{\"score\":{\"name\":\"#kx_pos_dec_2\",\"objective\":\"global\"},\"color\":\"dark_red\"},{\"text\":\", \",\"color\":\"#663bb3\"},{\"storage\":\"blockbuster:main\",\"nbt\":\"signs[7]\",\"color\":\"dark_green\"},{\"score\":{\"name\":\"#ky_pos_int\",\"objective\":\"global\"},\"color\":\"dark_green\"},{\"text\":\".\",\"color\":\"dark_green\"},{\"score\":{\"name\":\"#ky_pos_dec_0\",\"objective\":\"global\"},\"color\":\"dark_green\"},{\"score\":{\"name\":\"#ky_pos_dec_1\",\"objective\":\"global\"},\"color\":\"dark_green\"},{\"score\":{\"name\":\"#ky_pos_dec_2\",\"objective\":\"global\"},\"color\":\"dark_green\"},{\"text\":\", \",\"color\":\"#663bb3\"},{\"storage\":\"blockbuster:main\",\"nbt\":\"signs[8]\",\"color\":\"dark_blue\"},{\"score\":{\"name\":\"#kz_pos_int\",\"objective\":\"global\"},\"color\":\"dark_blue\"},{\"text\":\".\",\"color\":\"dark_blue\"},{\"score\":{\"name\":\"#kz_pos_dec_0\",\"objective\":\"global\"},\"color\":\"dark_blue\"},{\"score\":{\"name\":\"#kz_pos_dec_1\",\"objective\":\"global\"},\"color\":\"dark_blue\"},{\"score\":{\"name\":\"#kz_pos_dec_2\",\"objective\":\"global\"},\"color\":\"dark_blue\"},{\"text\":\"]\",\"color\":\"#663bb3\"}]"
data modify storage blockbuster:strings keyframe_rot set value "[{\"text\":\"[\",\"color\":\"#663bb3\"},{\"storage\":\"blockbuster:main\",\"nbt\":\"signs[9]\",\"color\":\"dark_red\"},{\"score\":{\"name\":\"#kx_rot_int\",\"objective\":\"global\"},\"color\":\"dark_red\"},{\"text\":\".\",\"color\":\"dark_red\"},{\"score\":{\"name\":\"#kx_rot_dec_0\",\"objective\":\"global\"},\"color\":\"dark_red\"},{\"score\":{\"name\":\"#kx_rot_dec_1\",\"objective\":\"global\"},\"color\":\"dark_red\"},{\"score\":{\"name\":\"#kx_rot_dec_2\",\"objective\":\"global\"},\"color\":\"dark_red\"},{\"text\":\", \",\"color\":\"#663bb3\"},{\"storage\":\"blockbuster:main\",\"nbt\":\"signs[10]\",\"color\":\"dark_green\"},{\"score\":{\"name\":\"#ky_rot_int\",\"objective\":\"global\"},\"color\":\"dark_green\"},{\"text\":\".\",\"color\":\"dark_green\"},{\"score\":{\"name\":\"#ky_rot_dec_0\",\"objective\":\"global\"},\"color\":\"dark_green\"},{\"score\":{\"name\":\"#ky_rot_dec_1\",\"objective\":\"global\"},\"color\":\"dark_green\"},{\"score\":{\"name\":\"#ky_rot_dec_2\",\"objective\":\"global\"},\"color\":\"dark_green\"},{\"text\":\", \",\"color\":\"#663bb3\"},{\"storage\":\"blockbuster:main\",\"nbt\":\"signs[11]\",\"color\":\"dark_blue\"},{\"score\":{\"name\":\"#kz_rot_int\",\"objective\":\"global\"},\"color\":\"dark_blue\"},{\"text\":\".\",\"color\":\"dark_blue\"},{\"score\":{\"name\":\"#kz_rot_dec_0\",\"objective\":\"global\"},\"color\":\"dark_blue\"},{\"score\":{\"name\":\"#kz_rot_dec_1\",\"objective\":\"global\"},\"color\":\"dark_blue\"},{\"score\":{\"name\":\"#kz_rot_dec_2\",\"objective\":\"global\"},\"color\":\"dark_blue\"},{\"text\":\"]\",\"color\":\"#663bb3\"}]"