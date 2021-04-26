scoreboard players set @s[scores={time=0,depth=0}] global 1
scoreboard players set @s[scores={global=1}] temp 1
execute store result entity @s[scores={global=1}] ArmorItems[0].tag.InitialPos[0] int 1 run data get entity @s[scores={global=1}] Pos[0] 1000
execute store result entity @s[scores={global=1}] ArmorItems[0].tag.InitialPos[1] int 1 run data get entity @s[scores={global=1}] Pos[1] 1000
execute store result entity @s[scores={global=1}] ArmorItems[0].tag.InitialPos[2] int 1 run data get entity @s[scores={global=1}] Pos[2] 1000
execute if entity @s[scores={global=1}] run function blockbuster:parent/locking

execute store result score @s self_pos_x run data get entity @s Pos[0] 1000
execute store result score @s temp run data get entity @s ArmorItems[0].tag.InitialPos[0]
execute run scoreboard players operation @s self_pos_x -= @s temp
execute store result entity @s ArmorItems[0].tag.Temp[0] int 1 run scoreboard players get @s self_pos_x
execute run data modify entity @s ArmorItems[0].tag.PosX append from entity @s ArmorItems[0].tag.Temp[0]

execute store result score @s self_pos_y run data get entity @s Pos[1] 1000
execute store result score @s temp run data get entity @s ArmorItems[0].tag.InitialPos[1]
execute run scoreboard players operation @s self_pos_y -= @s temp
execute store result entity @s ArmorItems[0].tag.Temp[0] int 1 run scoreboard players get @s self_pos_y
execute run data modify entity @s ArmorItems[0].tag.PosY append from entity @s ArmorItems[0].tag.Temp[0]

execute store result score @s self_pos_z run data get entity @s Pos[2] 1000
execute store result score @s temp run data get entity @s ArmorItems[0].tag.InitialPos[2]
execute run scoreboard players operation @s self_pos_z -= @s temp
execute store result entity @s ArmorItems[0].tag.Temp[0] int 1 run scoreboard players get @s self_pos_z
execute run data modify entity @s ArmorItems[0].tag.PosZ append from entity @s ArmorItems[0].tag.Temp[0]

execute run data modify entity @s ArmorItems[0].tag.RotX append from entity @s Pose.Head[0]
execute run data modify entity @s ArmorItems[0].tag.RotY append from entity @s Pose.Head[1]
execute run data modify entity @s ArmorItems[0].tag.RotZ append from entity @s Pose.Head[2]

execute if score @s time >= @s anim_length run data modify entity @s ArmorItems[0].tag.BackupPosX set from entity @s ArmorItems[0].tag.PosX
execute if score @s time >= @s anim_length run data modify entity @s ArmorItems[0].tag.BackupPosY set from entity @s ArmorItems[0].tag.PosY
execute if score @s time >= @s anim_length run data modify entity @s ArmorItems[0].tag.BackupPosZ set from entity @s ArmorItems[0].tag.PosZ
execute if score @s time >= @s anim_length run data modify entity @s ArmorItems[0].tag.BackupRotX set from entity @s ArmorItems[0].tag.RotX
execute if score @s time >= @s anim_length run data modify entity @s ArmorItems[0].tag.BackupRotY set from entity @s ArmorItems[0].tag.RotY
execute if score @s time >= @s anim_length run data modify entity @s ArmorItems[0].tag.BackupRotZ set from entity @s ArmorItems[0].tag.RotZ

execute if score @s time >= @s anim_length run tag @s add locked
execute if score @s time >= @s anim_length run tag @s remove block
execute if score @s time >= @s anim_length run tag @s remove locking