data merge storage blockbuster:main {signs:["","","","","","","","","","","",""]}
data merge storage blockbuster:main {timeline:["","","","","","","","","","","","","","","","","","","",""]}
data merge storage blockbuster:main {timeline_short:["","","","",""]}

execute as @e[type=armor_stand,tag=block,scores={selected=1..2},limit=1] run function blockbuster:execute/actionbar/block

scoreboard players set @e[type=armor_stand,tag=block,scores={selected=1..2},limit=1] temp 1
execute as @e[type=area_effect_cloud,tag=keyframe] if score @s parent_uuid_0 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_0 if score @s parent_uuid_1 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_1 if score @s parent_uuid_2 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_2 if score @s parent_uuid_3 = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] self_uuid_3 if score @s time = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] time run scoreboard players set @s temp 1
execute as @e[type=area_effect_cloud,tag=keyframe,scores={temp=1},limit=1] run function blockbuster:execute/actionbar/keyframe

execute as @e[type=armor_stand,tag=block,scores={selected=1..2},limit=1] run function blockbuster:execute/actionbar/text