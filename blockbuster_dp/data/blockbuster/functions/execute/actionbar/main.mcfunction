data merge storage blockbuster:main {signs:["","","","","","","","","","","",""]}
data merge storage blockbuster:main {timeline:["","","","","","","","","","","","","","","","","","","",""]}
data merge storage blockbuster:main {timeline_short:["","","","",""]}

function blockbuster:execute/actionbar/block

scoreboard players set @e[type=armor_stand,tag=block] temp 0
scoreboard players set @s temp 1
execute as @e[type=area_effect_cloud,tag=keyframe] if score @s parent_id = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] id if score @s time = @e[type=armor_stand,tag=block,scores={temp=1},limit=1] time run function blockbuster:execute/actionbar/keyframe

function blockbuster:execute/actionbar/text