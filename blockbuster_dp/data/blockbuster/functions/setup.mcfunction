# for transformations
scoreboard objectives add global dummy
scoreboard objectives add temp dummy
scoreboard objectives add constants dummy
scoreboard objectives add trig_table dummy

scoreboard objectives add self_uuid_0 dummy
scoreboard objectives add self_uuid_1 dummy
scoreboard objectives add self_uuid_2 dummy
scoreboard objectives add self_uuid_3 dummy

scoreboard objectives add parent_uuid_0 dummy
scoreboard objectives add parent_uuid_1 dummy
scoreboard objectives add parent_uuid_2 dummy
scoreboard objectives add parent_uuid_3 dummy

scoreboard objectives add self_pos_x dummy
scoreboard objectives add self_pos_y dummy
scoreboard objectives add self_pos_z dummy

scoreboard objectives add parent_pos_x dummy
scoreboard objectives add parent_pos_y dummy
scoreboard objectives add parent_pos_z dummy

scoreboard objectives add self_rot_x dummy
scoreboard objectives add self_rot_y dummy
scoreboard objectives add self_rot_z dummy

scoreboard objectives add parent_rot_x dummy
scoreboard objectives add parent_rot_y dummy
scoreboard objectives add parent_rot_z dummy

scoreboard objectives add depth dummy

scoreboard objectives add self_cos_x dummy
scoreboard objectives add self_cos_y dummy
scoreboard objectives add self_cos_z dummy
scoreboard objectives add self_sin_x dummy
scoreboard objectives add self_sin_y dummy
scoreboard objectives add self_sin_z dummy

scoreboard objectives add parent_cos_x dummy
scoreboard objectives add parent_cos_y dummy
scoreboard objectives add parent_cos_z dummy
scoreboard objectives add parent_sin_x dummy
scoreboard objectives add parent_sin_y dummy
scoreboard objectives add parent_sin_z dummy

scoreboard objectives add self_matrix_0 dummy
scoreboard objectives add self_matrix_1 dummy
scoreboard objectives add self_matrix_2 dummy
scoreboard objectives add self_matrix_3 dummy
scoreboard objectives add self_matrix_4 dummy
scoreboard objectives add self_matrix_5 dummy
scoreboard objectives add self_matrix_6 dummy
scoreboard objectives add self_matrix_7 dummy
scoreboard objectives add self_matrix_8 dummy

scoreboard objectives add parent_matrix_0 dummy
scoreboard objectives add parent_matrix_1 dummy
scoreboard objectives add parent_matrix_2 dummy
scoreboard objectives add parent_matrix_3 dummy
scoreboard objectives add parent_matrix_4 dummy
scoreboard objectives add parent_matrix_5 dummy
scoreboard objectives add parent_matrix_6 dummy
scoreboard objectives add parent_matrix_7 dummy
scoreboard objectives add parent_matrix_8 dummy

scoreboard objectives add matrix_scale_x dummy
scoreboard objectives add matrix_scale_y dummy
scoreboard objectives add matrix_scale_z dummy

scoreboard objectives add has_rot dummy
scoreboard objectives add has_hand_item dummy

scoreboard objectives add initial_pos_x dummy
scoreboard objectives add initial_pos_y dummy
scoreboard objectives add initial_pos_z dummy

scoreboard objectives add initial_rot_x dummy
scoreboard objectives add initial_rot_y dummy
scoreboard objectives add initial_rot_z dummy

scoreboard objectives add last_pos_x dummy
scoreboard objectives add last_pos_y dummy
scoreboard objectives add last_pos_z dummy

scoreboard objectives add self_vel_x dummy
scoreboard objectives add self_vel_y dummy
scoreboard objectives add self_vel_z dummy

scoreboard objectives add parent_vel_x dummy
scoreboard objectives add parent_vel_y dummy
scoreboard objectives add parent_vel_z dummy

scoreboard objectives add last_rot_x dummy
scoreboard objectives add last_rot_y dummy
scoreboard objectives add last_rot_z dummy

scoreboard objectives add self_omega_x dummy
scoreboard objectives add self_omega_y dummy
scoreboard objectives add self_omega_z dummy

scoreboard objectives add parent_omega_x dummy
scoreboard objectives add parent_omega_y dummy
scoreboard objectives add parent_omega_z dummy

scoreboard objectives add correction_x dummy
scoreboard objectives add correction_y dummy
scoreboard objectives add correction_z dummy

scoreboard objectives add correction_scale dummy

# for animations
scoreboard objectives add anim_length dummy
scoreboard objectives add time dummy
scoreboard objectives add play dummy

scoreboard objectives add keyframe_type dummy
scoreboard objectives add transition_type dummy

scoreboard objectives add pos_trans_type dummy
scoreboard objectives add rot_trans_type dummy

scoreboard objectives add from_pos_x dummy
scoreboard objectives add from_pos_y dummy
scoreboard objectives add from_pos_z dummy
scoreboard objectives add from_pos_time dummy

scoreboard objectives add to_pos_x dummy
scoreboard objectives add to_pos_y dummy
scoreboard objectives add to_pos_z dummy
scoreboard objectives add to_pos_time dummy

scoreboard objectives add from_rot_x dummy
scoreboard objectives add from_rot_y dummy
scoreboard objectives add from_rot_z dummy
scoreboard objectives add from_rot_time dummy

scoreboard objectives add to_rot_x dummy
scoreboard objectives add to_rot_y dummy
scoreboard objectives add to_rot_z dummy
scoreboard objectives add to_rot_time dummy

scoreboard objectives add last_time dummy
scoreboard objectives add delta_time dummy

# for edit mode
scoreboard objectives add edit dummy
scoreboard objectives add message dummy

team add black
team add dark_blue
team add dark_green
team add dark_aqua
team add dark_red
team add dark_purple
team add gold
team add gray
team add dark_gray
team add blue
team add green
team add aqua
team add red
team add light_purple
team add yellow
team add white

team modify black color black
team modify dark_blue color dark_blue
team modify dark_green color dark_green
team modify dark_aqua color dark_aqua
team modify dark_red color dark_red
team modify dark_purple color dark_purple
team modify gold color gold
team modify gray color gray
team modify dark_gray color dark_gray
team modify blue color blue
team modify green color green
team modify aqua color aqua
team modify red color red
team modify light_purple color light_purple
team modify yellow color yellow
team modify white color white

title @a times 5 0 5

# set constants
scoreboard players set #-1 constants -1
scoreboard players set #2 constants 2
scoreboard players set #5 constants 5
scoreboard players set #10 constants 10
scoreboard players set #13 constants 13
scoreboard players set #20 constants 20
scoreboard players set #100 constants 100
scoreboard players set #110 constants 110
scoreboard players set #180 constants 180
scoreboard players set #1000 constants 1000
scoreboard players set #15820 constants 15820
scoreboard players set #90000 constants 90000
scoreboard players set #180000 constants 180000
scoreboard players set #360000 constants 360000

# set cos values
scoreboard players set #cos0 trig_table 1000
scoreboard players set #cos1 trig_table 999
scoreboard players set #cos2 trig_table 999
scoreboard players set #cos3 trig_table 998
scoreboard players set #cos4 trig_table 997
scoreboard players set #cos5 trig_table 996
scoreboard players set #cos6 trig_table 994
scoreboard players set #cos7 trig_table 992
scoreboard players set #cos8 trig_table 990
scoreboard players set #cos9 trig_table 987
scoreboard players set #cos10 trig_table 984
scoreboard players set #cos11 trig_table 981
scoreboard players set #cos12 trig_table 978
scoreboard players set #cos13 trig_table 974
scoreboard players set #cos14 trig_table 970
scoreboard players set #cos15 trig_table 965
scoreboard players set #cos16 trig_table 961
scoreboard players set #cos17 trig_table 956
scoreboard players set #cos18 trig_table 951
scoreboard players set #cos19 trig_table 945
scoreboard players set #cos20 trig_table 939
scoreboard players set #cos21 trig_table 933
scoreboard players set #cos22 trig_table 927
scoreboard players set #cos23 trig_table 920
scoreboard players set #cos24 trig_table 913
scoreboard players set #cos25 trig_table 906
scoreboard players set #cos26 trig_table 898
scoreboard players set #cos27 trig_table 891
scoreboard players set #cos28 trig_table 882
scoreboard players set #cos29 trig_table 874
scoreboard players set #cos30 trig_table 866
scoreboard players set #cos31 trig_table 857
scoreboard players set #cos32 trig_table 848
scoreboard players set #cos33 trig_table 838
scoreboard players set #cos34 trig_table 829
scoreboard players set #cos35 trig_table 819
scoreboard players set #cos36 trig_table 809
scoreboard players set #cos37 trig_table 798
scoreboard players set #cos38 trig_table 788
scoreboard players set #cos39 trig_table 777
scoreboard players set #cos40 trig_table 766
scoreboard players set #cos41 trig_table 754
scoreboard players set #cos42 trig_table 743
scoreboard players set #cos43 trig_table 731
scoreboard players set #cos44 trig_table 719
scoreboard players set #cos45 trig_table 707

# set sin values
scoreboard players set #sin0 trig_table 0
scoreboard players set #sin1 trig_table 17
scoreboard players set #sin2 trig_table 34
scoreboard players set #sin3 trig_table 52
scoreboard players set #sin4 trig_table 69
scoreboard players set #sin5 trig_table 87
scoreboard players set #sin6 trig_table 104
scoreboard players set #sin7 trig_table 121
scoreboard players set #sin8 trig_table 139
scoreboard players set #sin9 trig_table 156
scoreboard players set #sin10 trig_table 173
scoreboard players set #sin11 trig_table 190
scoreboard players set #sin12 trig_table 207
scoreboard players set #sin13 trig_table 224
scoreboard players set #sin14 trig_table 241
scoreboard players set #sin15 trig_table 258
scoreboard players set #sin16 trig_table 275
scoreboard players set #sin17 trig_table 292
scoreboard players set #sin18 trig_table 309
scoreboard players set #sin19 trig_table 325
scoreboard players set #sin20 trig_table 342
scoreboard players set #sin21 trig_table 358
scoreboard players set #sin22 trig_table 374
scoreboard players set #sin23 trig_table 390
scoreboard players set #sin24 trig_table 406
scoreboard players set #sin25 trig_table 422
scoreboard players set #sin26 trig_table 438
scoreboard players set #sin27 trig_table 453
scoreboard players set #sin28 trig_table 469
scoreboard players set #sin29 trig_table 484
scoreboard players set #sin30 trig_table 499
scoreboard players set #sin31 trig_table 515
scoreboard players set #sin32 trig_table 529
scoreboard players set #sin33 trig_table 544
scoreboard players set #sin34 trig_table 559
scoreboard players set #sin35 trig_table 573
scoreboard players set #sin36 trig_table 587
scoreboard players set #sin37 trig_table 601
scoreboard players set #sin38 trig_table 615
scoreboard players set #sin39 trig_table 629
scoreboard players set #sin40 trig_table 642
scoreboard players set #sin41 trig_table 656
scoreboard players set #sin42 trig_table 669
scoreboard players set #sin43 trig_table 681
scoreboard players set #sin44 trig_table 694
scoreboard players set #sin45 trig_table 707