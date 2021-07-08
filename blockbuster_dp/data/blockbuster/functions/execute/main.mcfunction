execute at @s positioned ~ ~-0.75 ~ if entity @e[type=armor_stand,tag=block,tag=!hidden,tag=!locking,distance=..0.5,limit=1,sort=nearest] run scoreboard players set @e[type=armor_stand,tag=block,tag=!hidden,distance=..0.5,limit=1,sort=nearest] selected 1
execute as @s[tag=execute] run scoreboard players set @e[type=armor_stand,tag=block,scores={selected=1}] selected 2

# hitbox
tag @e[type=armor_stand,tag=block,scores={selected=1..2}] add selected
scoreboard players set @e[type=armor_stand,tag=block,tag=selected] temp 1

## summon new hitbox stands
execute as @e[type=armor_stand,tag=block,tag=!last_selected,scores={temp=1}] run function blockbuster:execute/new_hitbox

## teleport existing hitbox stands
execute as @e[type=armor_stand,tag=block,tag=last_selected,scores={temp=1}] run function blockbuster:execute/teleport_hitbox

scoreboard players set @e[type=armor_stand,tag=block] temp 0

# pass data to selected stand
execute as @e[type=armor_stand,tag=block,scores={selected=1..2}] if entity @p[scores={edit=1..,temp=1}] run function blockbuster:execute/send_data

# test for keyframe at time
scoreboard players set @e[type=armor_stand,tag=block] keyframe_type 0
execute as @e[type=area_effect_cloud,tag=keyframe] if score @s parent_id = @e[type=armor_stand,tag=block,scores={selected=1..2},limit=1] id if score @s time = @e[type=armor_stand,tag=block,scores={selected=1..2},limit=1] time run scoreboard players set @e[type=armor_stand,tag=block,scores={selected=1..2}] keyframe_type 1

# remove keyframe
execute as @e[type=area_effect_cloud,tag=keyframe] if score @s parent_id = @e[type=armor_stand,tag=block,scores={selected=2,edit=32},limit=1] id if score @s time = @e[type=armor_stand,tag=block,scores={selected=2,edit=32},limit=1] time run kill @s

# action
scoreboard players set @e[type=armor_stand] global 0
execute as @e[type=armor_stand,tag=block,scores={selected=2},limit=1] run function blockbuster:execute/action

# actionbar text
execute if entity @e[type=armor_stand,tag=block,scores={selected=1,edit=2}] run function blockbuster:execute/actionbar/main
execute if entity @e[type=armor_stand,tag=block,scores={selected=1,edit=10..52}] run function blockbuster:execute/actionbar/main
execute if entity @s[scores={edit=60}] run title @p[scores={temp=1}] actionbar {"text":"Warning: Locking blocks is permanent and cannot be undone!","color":"red"}

scoreboard players set @e[type=armor_stand,tag=block] selected 0
kill @s