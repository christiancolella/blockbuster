# move +0.25 seconds
scoreboard players set @e[type=armor_stand,tag=block,scores={selected=2,edit=23}] temp 1
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run scoreboard players operation #temp global = @s anim_length
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run scoreboard players operation #temp global -= @s time
execute as @e[type=armor_stand,tag=block,scores={temp=1}] if score #temp global matches 5.. run scoreboard players add @s time 5
execute as @e[type=armor_stand,tag=block,scores={temp=1}] if score #temp global matches ..4 run scoreboard players operation @s time = @s anim_length
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run scoreboard players set @s global 1
scoreboard players set @e[type=armor_stand,tag=block] temp 0

# move -0.25 seconds
scoreboard players set @e[type=armor_stand,tag=block,scores={selected=2,edit=24}] temp 1
execute as @e[type=armor_stand,tag=block,scores={temp=1}] if score @s time matches 5.. run scoreboard players remove @s time 5
execute as @e[type=armor_stand,tag=block,scores={temp=1}] if score @s time matches ..4 run scoreboard players set @s time 0
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run scoreboard players set @s global 1
scoreboard players set @e[type=armor_stand,tag=block] temp 0

# move +0.05 seconds
scoreboard players set @e[type=armor_stand,tag=block,scores={selected=2,edit=25}] temp 1
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run scoreboard players operation #temp global = @s anim_length
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run scoreboard players operation #temp global -= @s time
execute as @e[type=armor_stand,tag=block,scores={temp=1}] if score #temp global matches 1.. run scoreboard players add @s time 1
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run scoreboard players set @s global 1
scoreboard players set @e[type=armor_stand,tag=block] temp 0

# move -0.05 seconds
scoreboard players set @e[type=armor_stand,tag=block,scores={selected=2,edit=26}] temp 1
execute as @e[type=armor_stand,tag=block,scores={temp=1}] if score @s time matches 1.. run scoreboard players remove @s time 1
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run scoreboard players set @s global 1
scoreboard players set @e[type=armor_stand,tag=block] temp 0

# jump to beginning
scoreboard players set @e[type=armor_stand,tag=block,scores={selected=2,edit=27}] temp 1
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run scoreboard players set @s time 0
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run scoreboard players set @s global 1
scoreboard players set @e[type=armor_stand,tag=block] temp 0

# jump to end
scoreboard players set @e[type=armor_stand,tag=block,scores={selected=2,edit=28}] temp 1
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run scoreboard players operation @s time = @s anim_length
execute as @e[type=armor_stand,tag=block,scores={temp=1}] run scoreboard players set @s global 1
scoreboard players set @e[type=armor_stand,tag=block] temp 0