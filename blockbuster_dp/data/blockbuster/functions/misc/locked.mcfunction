execute as @e[type=armor_stand,tag=locked] store result score @s self_pos_x run data get entity @s ArmorItems[0].tag.PosX[0]
execute as @e[type=armor_stand,tag=locked] store result score @s temp run data get entity @s ArmorItems[0].tag.InitialPos[0]
execute as @e[type=armor_stand,tag=locked] run scoreboard players operation @s self_pos_x += @s temp
execute as @e[type=armor_stand,tag=locked] store result entity @s ArmorItems[0].tag.TempDouble[0] double 0.001 run scoreboard players get @s self_pos_x
execute as @p run scoreboard players get @e[tag=locked,limit=1] self_pos_x
execute as @e[type=armor_stand,tag=locked] run data modify entity @s Pos[0] set from entity @s ArmorItems[0].tag.TempDouble[0]

execute as @e[type=armor_stand,tag=locked] store result score @s self_pos_y run data get entity @s ArmorItems[0].tag.PosY[0]
execute as @e[type=armor_stand,tag=locked] store result score @s temp run data get entity @s ArmorItems[0].tag.InitialPos[1]
execute as @e[type=armor_stand,tag=locked] run scoreboard players operation @s self_pos_y += @s temp
execute as @e[type=armor_stand,tag=locked] store result entity @s ArmorItems[0].tag.TempDouble[0] double 0.001 run scoreboard players get @s self_pos_y
execute as @e[type=armor_stand,tag=locked] run data modify entity @s Pos[1] set from entity @s ArmorItems[0].tag.TempDouble[0]

execute as @e[type=armor_stand,tag=locked] store result score @s self_pos_z run data get entity @s ArmorItems[0].tag.PosZ[0]
execute as @e[type=armor_stand,tag=locked] store result score @s temp run data get entity @s ArmorItems[0].tag.InitialPos[2]
execute as @e[type=armor_stand,tag=locked] run scoreboard players operation @s self_pos_z += @s temp
execute as @e[type=armor_stand,tag=locked] store result entity @s ArmorItems[0].tag.TempDouble[0] double 0.001 run scoreboard players get @s self_pos_z
execute as @e[type=armor_stand,tag=locked] run data modify entity @s Pos[2] set from entity @s ArmorItems[0].tag.TempDouble[0]

execute as @e[type=armor_stand,tag=locked] run data modify entity @s Pose.Head[0] set from entity @s ArmorItems[0].tag.RotX[0]
execute as @e[type=armor_stand,tag=locked] run data modify entity @s Pose.Head[1] set from entity @s ArmorItems[0].tag.RotY[0]
execute as @e[type=armor_stand,tag=locked] run data modify entity @s Pose.Head[2] set from entity @s ArmorItems[0].tag.RotZ[0]

execute as @e[type=armor_stand,tag=locked,scores={play=1}] run scoreboard players add @s time 1

execute as @e[type=armor_stand,tag=locked,scores={play=1}] run data remove entity @s ArmorItems[0].tag.PosX[0]
execute as @e[type=armor_stand,tag=locked,scores={play=1}] run data remove entity @s ArmorItems[0].tag.PosY[0]
execute as @e[type=armor_stand,tag=locked,scores={play=1}] run data remove entity @s ArmorItems[0].tag.PosZ[0]
execute as @e[type=armor_stand,tag=locked,scores={play=1}] run data remove entity @s ArmorItems[0].tag.RotX[0]
execute as @e[type=armor_stand,tag=locked,scores={play=1}] run data remove entity @s ArmorItems[0].tag.RotY[0]
execute as @e[type=armor_stand,tag=locked,scores={play=1}] run data remove entity @s ArmorItems[0].tag.RotZ[0]

execute as @e[type=armor_stand,tag=locked] if score @s time >= @s anim_length run data modify entity @s ArmorItems[0].tag.PosX set from entity @s ArmorItems[0].tag.BackupPosX
execute as @e[type=armor_stand,tag=locked] if score @s time >= @s anim_length run data modify entity @s ArmorItems[0].tag.PosY set from entity @s ArmorItems[0].tag.BackupPosY
execute as @e[type=armor_stand,tag=locked] if score @s time >= @s anim_length run data modify entity @s ArmorItems[0].tag.PosZ set from entity @s ArmorItems[0].tag.BackupPosZ
execute as @e[type=armor_stand,tag=locked] if score @s time >= @s anim_length run data modify entity @s ArmorItems[0].tag.RotX set from entity @s ArmorItems[0].tag.BackupRotX
execute as @e[type=armor_stand,tag=locked] if score @s time >= @s anim_length run data modify entity @s ArmorItems[0].tag.RotY set from entity @s ArmorItems[0].tag.BackupRotY
execute as @e[type=armor_stand,tag=locked] if score @s time >= @s anim_length run data modify entity @s ArmorItems[0].tag.RotZ set from entity @s ArmorItems[0].tag.BackupRotZ

execute as @e[type=armor_stand,tag=locked] if score @s time >= @s anim_length run scoreboard players set @s time 0