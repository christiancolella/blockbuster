# y = (yf - yi) * ((t - ti) / (tf - ti)) + yi
# global.#from_value = yi; global.#to_value = yf; global.#time = t; global.#from_time = ti; global.#to_time = tf; global.#output_value = y
# all variables should be scaled by 1000

scoreboard players operation #output_value global = #from_value global
scoreboard players operation #output_value global -= #to_value global
scoreboard players operation #output_value global /= #2 constants
scoreboard players operation #input_cos global = #time global
scoreboard players operation #input_cos global -= #from_time global
scoreboard players operation #input_cos global *= #1000 constants
scoreboard players operation #temp global = #to_time global
scoreboard players operation #temp global -= #from_time global
scoreboard players operation #input_cos global /= #temp global
scoreboard players operation #input_cos global *= #180 constants
function blockbuster:math/cos
scoreboard players operation #output_value global *= #output_cos global
scoreboard players operation #output_value global /= #1000 constants
scoreboard players operation #temp global = #from_value global
scoreboard players operation #temp global += #to_value global
scoreboard players operation #temp global /= #2 constants
scoreboard players operation #output_value global += #temp global