scoreboard players set @e[type=armor_stand,tag=block,tag=locking,scores={time=0,depth=0}] global 1
scoreboard players set @e[type=armor_stand,tag=block,scores={global=1}] temp 1
execute as @e[type=armor_stand,tag=block,scores={global=1}] store result entity @s ArmorItems[0].tag.InitialPos[0] int 1 run data get entity @s Pos[0] 1000
execute as @e[type=armor_stand,tag=block,scores={global=1}] store result entity @s ArmorItems[0].tag.InitialPos[1] int 1 run data get entity @s Pos[1] 1000
execute as @e[type=armor_stand,tag=block,scores={global=1}] store result entity @s ArmorItems[0].tag.InitialPos[2] int 1 run data get entity @s Pos[2] 1000
execute if entity @e[type=armor_stand,tag=block,scores={global=1}] run function blockbuster:parent/locking

execute as @e[type=armor_stand,tag=block,tag=locking] store result score @s self_pos_x run data get entity @s Pos[0] 1000
execute as @e[type=armor_stand,tag=block,tag=locking] store result score @s temp run data get entity @s ArmorItems[0].tag.InitialPos[0] 1000
execute as @e[type=armor_stand,tag=block,tag=locking] run scoreboard players operation @s self_pos_x -= @s temp
execute as @e[type=armor_stand,tag=block,tag=locking] store result entity @s ArmorItems[0].tag.Temp[0] int 1 run scoreboard players get @s self_pos_x
execute as @e[type=armor_stand,tag=block,tag=locking] run data modify entity @s ArmorItems[0].tag.PosX append from entity @s ArmorItems[0].tag.Temp[0]

execute as @e[type=armor_stand,tag=block,tag=locking] store result score @s self_pos_y run data get entity @s Pos[1] 1000
execute as @e[type=armor_stand,tag=block,tag=locking] store result score @s temp run data get entity @s ArmorItems[0].tag.InitialPos[1] 1000
execute as @e[type=armor_stand,tag=block,tag=locking] run scoreboard players operation @s self_pos_y -= @s temp
execute as @e[type=armor_stand,tag=block,tag=locking] store result entity @s ArmorItems[0].tag.Temp[0] int 1 run scoreboard players get @s self_pos_y
execute as @e[type=armor_stand,tag=block,tag=locking] run data modify entity @s ArmorItems[0].tag.PosY append from entity @s ArmorItems[0].tag.Temp[0]

execute as @e[type=armor_stand,tag=block,tag=locking] store result score @s self_pos_z run data get entity @s Pos[2] 1000
execute as @e[type=armor_stand,tag=block,tag=locking] store result score @s temp run data get entity @s ArmorItems[0].tag.InitialPos[2] 1000
execute as @e[type=armor_stand,tag=block,tag=locking] run scoreboard players operation @s self_pos_z -= @s temp
execute as @e[type=armor_stand,tag=block,tag=locking] store result entity @s ArmorItems[0].tag.Temp[0] int 1 run scoreboard players get @s self_pos_z
execute as @e[type=armor_stand,tag=block,tag=locking] run data modify entity @s ArmorItems[0].tag.PosZ append from entity @s ArmorItems[0].tag.Temp[0]

execute as @e[type=armor_stand,tag=block,tag=locking] store result entity @s ArmorItems[0].tag.Temp[0] int 1 run data get entity @s Pose.Head[0] 1000
execute as @e[type=armor_stand,tag=block,tag=locking] run data modify entity @s ArmorItems[0].tag.RotX append from entity @s ArmorItems[0].tag.Temp[0]

execute as @e[type=armor_stand,tag=block,tag=locking] store result entity @s ArmorItems[0].tag.Temp[0] int 1 run data get entity @s Pose.Head[1] 1000
execute as @e[type=armor_stand,tag=block,tag=locking] run data modify entity @s ArmorItems[0].tag.RotY append from entity @s ArmorItems[0].tag.Temp[0]

execute as @e[type=armor_stand,tag=block,tag=locking] store result entity @s ArmorItems[0].tag.Temp[0] int 1 run data get entity @s Pose.Head[2] 1000
execute as @e[type=armor_stand,tag=block,tag=locking] run data modify entity @s ArmorItems[0].tag.RotZ append from entity @s ArmorItems[0].tag.Temp[0]

execute as @e[type=armor_stand,tag=block,tag=locking] if score @s time = @s anim_length run tag @s add locked
execute as @e[type=armor_stand,tag=locking,tag=locked] if score @s time = @s anim_length run tag @s remove locking