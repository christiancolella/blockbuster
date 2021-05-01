execute store result score @s self_pos_x run data get entity @s ArmorItems[0].tag.PosX[0]
execute store result score @s temp run data get entity @s ArmorItems[0].tag.InitialPos[0]
scoreboard players operation @s self_pos_x += @s temp
execute store result entity @s ArmorItems[0].tag.TempDouble[0] double 0.001 run scoreboard players get @s self_pos_x
execute as @p run scoreboard players get @e[tag=locked,limit=1] self_pos_x
data modify entity @s Pos[0] set from entity @s ArmorItems[0].tag.TempDouble[0]

execute store result score @s self_pos_y run data get entity @s ArmorItems[0].tag.PosY[0]
execute store result score @s temp run data get entity @s ArmorItems[0].tag.InitialPos[1]
scoreboard players operation @s self_pos_y += @s temp
execute store result entity @s ArmorItems[0].tag.TempDouble[0] double 0.001 run scoreboard players get @s self_pos_y
data modify entity @s Pos[1] set from entity @s ArmorItems[0].tag.TempDouble[0]

execute store result score @s self_pos_z run data get entity @s ArmorItems[0].tag.PosZ[0]
execute store result score @s temp run data get entity @s ArmorItems[0].tag.InitialPos[2]
scoreboard players operation @s self_pos_z += @s temp
execute store result entity @s ArmorItems[0].tag.TempDouble[0] double 0.001 run scoreboard players get @s self_pos_z
data modify entity @s Pos[2] set from entity @s ArmorItems[0].tag.TempDouble[0]

data modify entity @s Pose.Head[0] set from entity @s ArmorItems[0].tag.RotX[0]
data modify entity @s Pose.Head[1] set from entity @s ArmorItems[0].tag.RotY[0]
data modify entity @s Pose.Head[2] set from entity @s ArmorItems[0].tag.RotZ[0]

scoreboard players add @s[scores={play=1}] time 1

data remove entity @s[scores={play=1}] ArmorItems[0].tag.PosX[0]
data remove entity @s[scores={play=1}] ArmorItems[0].tag.PosY[0]
data remove entity @s[scores={play=1}] ArmorItems[0].tag.PosZ[0]
data remove entity @s[scores={play=1}] ArmorItems[0].tag.RotX[0]
data remove entity @s[scores={play=1}] ArmorItems[0].tag.RotY[0]
data remove entity @s[scores={play=1}] ArmorItems[0].tag.RotZ[0]

execute if score @s time > @s anim_length run data modify entity @s ArmorItems[0].tag.PosX set from entity @s ArmorItems[0].tag.BackupPosX
execute if score @s time > @s anim_length run data modify entity @s ArmorItems[0].tag.PosY set from entity @s ArmorItems[0].tag.BackupPosY
execute if score @s time > @s anim_length run data modify entity @s ArmorItems[0].tag.PosZ set from entity @s ArmorItems[0].tag.BackupPosZ
execute if score @s time > @s anim_length run data modify entity @s ArmorItems[0].tag.RotX set from entity @s ArmorItems[0].tag.BackupRotX
execute if score @s time > @s anim_length run data modify entity @s ArmorItems[0].tag.RotY set from entity @s ArmorItems[0].tag.BackupRotY
execute if score @s time > @s anim_length run data modify entity @s ArmorItems[0].tag.RotZ set from entity @s ArmorItems[0].tag.BackupRotZ

execute if score @s time > @s anim_length run scoreboard players set @s time 0