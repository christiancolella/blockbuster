execute as @e[type=armor_stand,tag=block] if score @s depth = #depth global run scoreboard players set @s global 1

execute as @e[type=armor_stand,tag=block,scores={global=1}] run function blockbuster:transform/main

# compute matrix
scoreboard players set @e[type=armor_stand,tag=block] temp 0
execute if entity @e[type=armor_stand,tag=block,tag=is_parent,scores={global=1}] run function blockbuster:transform/trig_main
scoreboard players set @e[type=armor_stand,tag=block] temp 0
execute as @e[type=armor_stand,tag=block,tag=is_parent,scores={global=1}] run function blockbuster:transform/compute_matrix

# send to children
scoreboard players set @e[type=armor_stand,tag=block] temp 0
execute if entity @e[type=armor_stand,tag=block,tag=is_parent,scores={global=1}] run function blockbuster:parent/transform_main

# repeat at next layer
scoreboard players add #depth global 1
scoreboard players set @e[type=armor_stand,tag=block] global 0
execute if score #depth global <= #maxdepth global run function blockbuster:transform
