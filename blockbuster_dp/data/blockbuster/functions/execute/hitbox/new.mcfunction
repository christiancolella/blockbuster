execute at @s run summon armor_stand ~0.25 ~0.226 ~0.25 {Small:1b,Invisible:1b,NoGravity:1b,ShowArms:1b,NoBasePlate:1b,DisabledSlots:4079166,Tags:["new_hitbox"]}
execute at @s run summon armor_stand ~0.25 ~0.226 ~ {Small:1b,Invisible:1b,NoGravity:1b,ShowArms:1b,NoBasePlate:1b,DisabledSlots:4079166,Tags:["new_hitbox"]}
execute at @s run summon armor_stand ~0.25 ~0.226 ~-0.25 {Small:1b,Invisible:1b,NoGravity:1b,ShowArms:1b,NoBasePlate:1b,DisabledSlots:4079166,Tags:["new_hitbox"]}
execute at @s run summon armor_stand ~ ~0.226 ~0.25 {Small:1b,Invisible:1b,NoGravity:1b,ShowArms:1b,NoBasePlate:1b,DisabledSlots:4079166,Tags:["new_hitbox"]}
execute at @s run summon armor_stand ~ ~0.226 ~ {Small:1b,Invisible:1b,NoGravity:1b,ShowArms:1b,NoBasePlate:1b,DisabledSlots:4079166,Tags:["new_hitbox"]}
execute at @s run summon armor_stand ~ ~0.226 ~-0.25 {Small:1b,Invisible:1b,NoGravity:1b,ShowArms:1b,NoBasePlate:1b,DisabledSlots:4079166,Tags:["new_hitbox"]}
execute at @s run summon armor_stand ~-0.25 ~0.226 ~0.25 {Small:1b,Invisible:1b,NoGravity:1b,ShowArms:1b,NoBasePlate:1b,DisabledSlots:4079166,Tags:["new_hitbox"]}
execute at @s run summon armor_stand ~-0.25 ~0.226 ~ {Small:1b,Invisible:1b,NoGravity:1b,ShowArms:1b,NoBasePlate:1b,DisabledSlots:4079166,Tags:["new_hitbox"]}
execute at @s run summon armor_stand ~-0.25 ~0.226 ~-0.25 {Small:1b,Invisible:1b,NoGravity:1b,ShowArms:1b,NoBasePlate:1b,DisabledSlots:4079166,Tags:["new_hitbox"]}

scoreboard players operation @e[type=armor_stand,tag=new_hitbox] parent_id = @s id
execute as @e[type=armor_stand,tag=new_hitbox] store result score @s initial_pos_x run data get entity @s Pos[0] 1000
execute as @e[type=armor_stand,tag=new_hitbox] store result score @s initial_pos_y run data get entity @s Pos[1] 1000
execute as @e[type=armor_stand,tag=new_hitbox] store result score @s initial_pos_z run data get entity @s Pos[2] 1000

scoreboard players operation @e[type=armor_stand,tag=new_hitbox] initial_pos_x -= @s self_pos_x
scoreboard players operation @e[type=armor_stand,tag=new_hitbox] initial_pos_y -= @s self_pos_y
scoreboard players operation @e[type=armor_stand,tag=new_hitbox] initial_pos_z -= @s self_pos_z

tag @e[type=armor_stand,tag=new_hitbox] add hitbox
tag @e[type=armor_stand,tag=new_hitbox] remove new_hitbox
