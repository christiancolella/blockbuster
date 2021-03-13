# global.#input_sin = input; global.#output_sin = output
# input should be degrees * 1000
# output is also scaled by 1000

scoreboard players operation #input_sin global %= #360000 constants

# sin(360 - x) = -sin(x)
execute if score #input_sin global matches 180001..359999 run scoreboard players set #range_sin global 3
execute if score #range_sin global matches 3 run scoreboard players operation #input_sin global -= #360000 constants
execute if score #range_sin global matches 3 run scoreboard players operation #input_sin global *= #-1 constants
execute if score #range_sin global matches 3 run scoreboard players set #negative_sin global 1
execute if score #range_sin global matches 3 run scoreboard players set #range_sin global 0

# sin(180 - x) = sin(x)
execute if score #input_sin global matches 90001..180000 run scoreboard players set #range_sin global 2
execute if score #range_sin global matches 2 run scoreboard players operation #input_sin global -= #180000 constants
execute if score #range_sin global matches 2 run scoreboard players operation #input_sin global *= #-1 constants
execute if score #range_sin global matches 2 run scoreboard players set #range_sin global 0

# lookup
execute if score #input_sin global matches 0..499 run scoreboard players operation #output_sin global = #sin0 trig_table
execute if score #input_sin global matches 500..1499 run scoreboard players operation #output_sin global = #sin1 trig_table
execute if score #input_sin global matches 1500..2499 run scoreboard players operation #output_sin global = #sin2 trig_table
execute if score #input_sin global matches 2500..3499 run scoreboard players operation #output_sin global = #sin3 trig_table
execute if score #input_sin global matches 3500..4499 run scoreboard players operation #output_sin global = #sin4 trig_table
execute if score #input_sin global matches 4500..5499 run scoreboard players operation #output_sin global = #sin5 trig_table
execute if score #input_sin global matches 5500..6499 run scoreboard players operation #output_sin global = #sin6 trig_table
execute if score #input_sin global matches 6500..7499 run scoreboard players operation #output_sin global = #sin7 trig_table
execute if score #input_sin global matches 7500..8499 run scoreboard players operation #output_sin global = #sin8 trig_table
execute if score #input_sin global matches 8500..9499 run scoreboard players operation #output_sin global = #sin9 trig_table
execute if score #input_sin global matches 9500..10499 run scoreboard players operation #output_sin global = #sin10 trig_table
execute if score #input_sin global matches 10500..11499 run scoreboard players operation #output_sin global = #sin11 trig_table
execute if score #input_sin global matches 11500..12499 run scoreboard players operation #output_sin global = #sin12 trig_table
execute if score #input_sin global matches 12500..13499 run scoreboard players operation #output_sin global = #sin13 trig_table
execute if score #input_sin global matches 13500..14499 run scoreboard players operation #output_sin global = #sin14 trig_table
execute if score #input_sin global matches 14500..15499 run scoreboard players operation #output_sin global = #sin15 trig_table
execute if score #input_sin global matches 15500..16499 run scoreboard players operation #output_sin global = #sin16 trig_table
execute if score #input_sin global matches 16500..17499 run scoreboard players operation #output_sin global = #sin17 trig_table
execute if score #input_sin global matches 17500..18499 run scoreboard players operation #output_sin global = #sin18 trig_table
execute if score #input_sin global matches 18500..19499 run scoreboard players operation #output_sin global = #sin19 trig_table
execute if score #input_sin global matches 19500..20499 run scoreboard players operation #output_sin global = #sin20 trig_table
execute if score #input_sin global matches 20500..21499 run scoreboard players operation #output_sin global = #sin21 trig_table
execute if score #input_sin global matches 21500..22499 run scoreboard players operation #output_sin global = #sin22 trig_table
execute if score #input_sin global matches 22500..23499 run scoreboard players operation #output_sin global = #sin23 trig_table
execute if score #input_sin global matches 23500..24499 run scoreboard players operation #output_sin global = #sin24 trig_table
execute if score #input_sin global matches 24500..25499 run scoreboard players operation #output_sin global = #sin25 trig_table
execute if score #input_sin global matches 25500..26499 run scoreboard players operation #output_sin global = #sin26 trig_table
execute if score #input_sin global matches 26500..27499 run scoreboard players operation #output_sin global = #sin27 trig_table
execute if score #input_sin global matches 27500..28499 run scoreboard players operation #output_sin global = #sin28 trig_table
execute if score #input_sin global matches 28500..29499 run scoreboard players operation #output_sin global = #sin29 trig_table
execute if score #input_sin global matches 29500..30499 run scoreboard players operation #output_sin global = #sin30 trig_table
execute if score #input_sin global matches 30500..31499 run scoreboard players operation #output_sin global = #sin31 trig_table
execute if score #input_sin global matches 31500..32499 run scoreboard players operation #output_sin global = #sin32 trig_table
execute if score #input_sin global matches 32500..33499 run scoreboard players operation #output_sin global = #sin33 trig_table
execute if score #input_sin global matches 33500..34499 run scoreboard players operation #output_sin global = #sin34 trig_table
execute if score #input_sin global matches 34500..35499 run scoreboard players operation #output_sin global = #sin35 trig_table
execute if score #input_sin global matches 35500..36499 run scoreboard players operation #output_sin global = #sin36 trig_table
execute if score #input_sin global matches 36500..37499 run scoreboard players operation #output_sin global = #sin37 trig_table
execute if score #input_sin global matches 37500..38499 run scoreboard players operation #output_sin global = #sin38 trig_table
execute if score #input_sin global matches 38500..39499 run scoreboard players operation #output_sin global = #sin39 trig_table
execute if score #input_sin global matches 39500..40499 run scoreboard players operation #output_sin global = #sin40 trig_table
execute if score #input_sin global matches 40500..41499 run scoreboard players operation #output_sin global = #sin41 trig_table
execute if score #input_sin global matches 41500..42499 run scoreboard players operation #output_sin global = #sin42 trig_table
execute if score #input_sin global matches 42500..43499 run scoreboard players operation #output_sin global = #sin43 trig_table
execute if score #input_sin global matches 43500..44499 run scoreboard players operation #output_sin global = #sin44 trig_table
execute if score #input_sin global matches 44500..45000 run scoreboard players operation #output_sin global = #sin45 trig_table

# sin(90 - x) = cos(x)
execute if score #input_sin global matches 45001..90000 run scoreboard players set #range_sin global 1
execute if score #range_sin global matches 1 run scoreboard players operation #input_sin global -= #90000 constants
execute if score #range_sin global matches 1 run scoreboard players operation #input_sin global *= #-1 constants
execute if score #range_sin global matches 1 run scoreboard players operation #input_cos global = #input_sin global
execute if score #range_sin global matches 1 run function animations:math/cos
execute if score #range_sin global matches 1 run scoreboard players operation #output_sin global = #output_cos global
execute if score #range_sin global matches 1 run scoreboard players set #range_sin global 0

execute if score #negative_sin global matches 1 run scoreboard players operation #output_sin global *= #-1 constants
scoreboard players set #negative_sin global 0