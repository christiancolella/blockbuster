# y = yf - (yf - yi) * ((t - tf) / (tf - ti))^2
# global.#from_value = yi; global.#to_value = yf; global.#time = t; global.#from_time = ti; global.#to_time = tf; global.#output_value = y
# all variables should be scaled by 1000

scoreboard players operation #output_value global = #to_value global
scoreboard players operation #output_value global -= #from_value global
scoreboard players operation #temp global = #time global
scoreboard players operation #temp global -= #to_time global
scoreboard players operation #output_value global *= #temp global
scoreboard players operation #temp global = #to_time global
scoreboard players operation #temp global -= #from_time global
scoreboard players operation #output_value global /= #temp global
scoreboard players operation #temp global = #time global
scoreboard players operation #temp global -= #to_time global
scoreboard players operation #output_value global *= #temp global
scoreboard players operation #temp global = #to_time global
scoreboard players operation #temp global -= #from_time global
scoreboard players operation #output_value global /= #temp global
scoreboard players operation #output_value global -= #to_value global
scoreboard players operation #output_value global *= #-1 constants