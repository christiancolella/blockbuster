# move +0.25 seconds
scoreboard players operation #temp global = @s[scores={edit=23}] anim_length
scoreboard players operation #temp global -= @s[scores={edit=23}] time
execute if score #temp global matches 5.. run scoreboard players add @s[scores={edit=23}] time 5
execute if score #temp global matches ..4 run scoreboard players operation @s[scores={edit=23}] time = @s[scores={edit=23}] anim_length

# move -0.25 seconds
execute if score @s[scores={edit=24}] time matches 5.. run scoreboard players remove @s[scores={edit=24}] time 5
execute if score @s[scores={edit=24}] time matches ..4 run scoreboard players set @s[scores={edit=24}] time 0

# move +0.05 seconds
scoreboard players operation #temp global = @s[scores={edit=25}] anim_length
scoreboard players operation #temp global -= @s[scores={edit=25}] time
execute if score #temp global matches 1.. run scoreboard players add @s[scores={edit=25}] time 1

# move -0.05 seconds
execute if score @s[scores={edit=26}] time matches 1.. run scoreboard players remove @s[scores={edit=26}] time 1

# jump to beginning
scoreboard players set @s[scores={edit=27}] time 0

# jump to end
scoreboard players operation @s[scores={edit=28}] time = @s[scores={edit=28}] anim_length

scoreboard players set @s global 1