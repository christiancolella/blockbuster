# global.#input_cos = input; global.#output_cos = output
# input should be degrees * 1000
# output is also scaled by 1000

scoreboard players operation #input_cos global %= #360000 constants

# cos(360 - x) = cos(x)
execute if score #input_cos global matches 180001..359999 run scoreboard players set #range_cos global 3
execute if score #range_cos global matches 3 run scoreboard players operation #input_cos global -= #360000 constants
execute if score #range_cos global matches 3 run scoreboard players operation #input_cos global *= #-1 constants
execute if score #range_cos global matches 3 run scoreboard players set #range_cos global 0

# cos(180 - x) = -cos(x)
execute if score #input_cos global matches 90001..180000 run scoreboard players set #range_cos global 2
execute if score #range_cos global matches 2 run scoreboard players operation #input_cos global -= #180000 constants
execute if score #range_cos global matches 2 run scoreboard players operation #input_cos global *= #-1 constants
execute if score #range_cos global matches 2 run scoreboard players set #negative_cos global 1
execute if score #range_cos global matches 2 run scoreboard players set #range_cos global 0

# lookup from table
execute if score #input_cos global matches 0..499 run scoreboard players operation #output_cos global = #cos0 trig_table
execute if score #input_cos global matches 500..1499 run scoreboard players operation #output_cos global = #cos1 trig_table
execute if score #input_cos global matches 1500..2499 run scoreboard players operation #output_cos global = #cos2 trig_table
execute if score #input_cos global matches 2500..3499 run scoreboard players operation #output_cos global = #cos3 trig_table
execute if score #input_cos global matches 3500..4499 run scoreboard players operation #output_cos global = #cos4 trig_table
execute if score #input_cos global matches 4500..5499 run scoreboard players operation #output_cos global = #cos5 trig_table
execute if score #input_cos global matches 5500..6499 run scoreboard players operation #output_cos global = #cos6 trig_table
execute if score #input_cos global matches 6500..7499 run scoreboard players operation #output_cos global = #cos7 trig_table
execute if score #input_cos global matches 7500..8499 run scoreboard players operation #output_cos global = #cos8 trig_table
execute if score #input_cos global matches 8500..9499 run scoreboard players operation #output_cos global = #cos9 trig_table
execute if score #input_cos global matches 9500..10499 run scoreboard players operation #output_cos global = #cos10 trig_table
execute if score #input_cos global matches 10500..11499 run scoreboard players operation #output_cos global = #cos11 trig_table
execute if score #input_cos global matches 11500..12499 run scoreboard players operation #output_cos global = #cos12 trig_table
execute if score #input_cos global matches 12500..13499 run scoreboard players operation #output_cos global = #cos13 trig_table
execute if score #input_cos global matches 13500..14499 run scoreboard players operation #output_cos global = #cos14 trig_table
execute if score #input_cos global matches 14500..15499 run scoreboard players operation #output_cos global = #cos15 trig_table
execute if score #input_cos global matches 15500..16499 run scoreboard players operation #output_cos global = #cos16 trig_table
execute if score #input_cos global matches 16500..17499 run scoreboard players operation #output_cos global = #cos17 trig_table
execute if score #input_cos global matches 17500..18499 run scoreboard players operation #output_cos global = #cos18 trig_table
execute if score #input_cos global matches 18500..19499 run scoreboard players operation #output_cos global = #cos19 trig_table
execute if score #input_cos global matches 19500..20499 run scoreboard players operation #output_cos global = #cos20 trig_table
execute if score #input_cos global matches 20500..21499 run scoreboard players operation #output_cos global = #cos21 trig_table
execute if score #input_cos global matches 21500..22499 run scoreboard players operation #output_cos global = #cos22 trig_table
execute if score #input_cos global matches 22500..23499 run scoreboard players operation #output_cos global = #cos23 trig_table
execute if score #input_cos global matches 23500..24499 run scoreboard players operation #output_cos global = #cos24 trig_table
execute if score #input_cos global matches 24500..25499 run scoreboard players operation #output_cos global = #cos25 trig_table
execute if score #input_cos global matches 25500..26499 run scoreboard players operation #output_cos global = #cos26 trig_table
execute if score #input_cos global matches 26500..27499 run scoreboard players operation #output_cos global = #cos27 trig_table
execute if score #input_cos global matches 27500..28499 run scoreboard players operation #output_cos global = #cos28 trig_table
execute if score #input_cos global matches 28500..29499 run scoreboard players operation #output_cos global = #cos29 trig_table
execute if score #input_cos global matches 29500..30499 run scoreboard players operation #output_cos global = #cos30 trig_table
execute if score #input_cos global matches 30500..31499 run scoreboard players operation #output_cos global = #cos31 trig_table
execute if score #input_cos global matches 31500..32499 run scoreboard players operation #output_cos global = #cos32 trig_table
execute if score #input_cos global matches 32500..33499 run scoreboard players operation #output_cos global = #cos33 trig_table
execute if score #input_cos global matches 33500..34499 run scoreboard players operation #output_cos global = #cos34 trig_table
execute if score #input_cos global matches 34500..35499 run scoreboard players operation #output_cos global = #cos35 trig_table
execute if score #input_cos global matches 35500..36499 run scoreboard players operation #output_cos global = #cos36 trig_table
execute if score #input_cos global matches 36500..37499 run scoreboard players operation #output_cos global = #cos37 trig_table
execute if score #input_cos global matches 37500..38499 run scoreboard players operation #output_cos global = #cos38 trig_table
execute if score #input_cos global matches 38500..39499 run scoreboard players operation #output_cos global = #cos39 trig_table
execute if score #input_cos global matches 39500..40499 run scoreboard players operation #output_cos global = #cos40 trig_table
execute if score #input_cos global matches 40500..41499 run scoreboard players operation #output_cos global = #cos41 trig_table
execute if score #input_cos global matches 41500..42499 run scoreboard players operation #output_cos global = #cos42 trig_table
execute if score #input_cos global matches 42500..43499 run scoreboard players operation #output_cos global = #cos43 trig_table
execute if score #input_cos global matches 43500..44499 run scoreboard players operation #output_cos global = #cos44 trig_table
execute if score #input_cos global matches 44500..45000 run scoreboard players operation #output_cos global = #cos45 trig_table

# cos(90 - x) = sin(x)
execute if score #input_cos global matches 45001..90000 run scoreboard players set #range_cos global 1
execute if score #range_cos global matches 1 run scoreboard players operation #input_cos global -= #90000 constants
execute if score #range_cos global matches 1 run scoreboard players operation #input_cos global *= #-1 constants
execute if score #range_cos global matches 1 run scoreboard players operation #input_sin global = #input_cos global
execute if score #range_cos global matches 1 run function blockbuster:math/sin
execute if score #range_cos global matches 1 run scoreboard players operation #output_cos global = #output_sin global
execute if score #range_cos global matches 1 run scoreboard players set #range_cos global 0

execute if score #negative_cos global matches 1 run scoreboard players operation #output_cos global *= #-1 constants
scoreboard players set #negative_cos global 0