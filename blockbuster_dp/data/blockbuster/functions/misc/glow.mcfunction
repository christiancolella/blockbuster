team join blue @s[tag=block]
team join blue @s[tag=locked]
team join yellow @s[scores={edit=4}]
team join yellow @s[tag=awaiting_parent]
team join gold @s[scores={edit=9}]
team join red @s[scores={edit=5}]
team join dark_gray @s[scores={edit=6}]
team join dark_red @s[scores={edit=8}]
team join aqua @s[scores={edit=10..17}]
team join aqua @s[scores={edit=39..44}]
team join light_purple @s[scores={edit=23..28}]
team join dark_aqua @s[scores={edit=45..48}]
team join dark_purple @s[scores={edit=29..31}]
team join red @s[scores={edit=32}]
team join dark_purple @s[scores={edit=49..52}]
team join dark_blue @s[scores={edit=34..38}]
team join green @s[scores={edit=18}]
team join red @s[scores={edit=19}]
team join dark_green @s[scores={edit=57}]
team join red @s[scores={edit=58}]
team join dark_blue @s[scores={edit=55}]
team join dark_red @s[scores={edit=59}]
team join dark_blue @s[tag=parent_glow]

data merge entity @s[tag=!glow] {Glowing:0b}
data merge entity @s[tag=glow] {Glowing:1b}
data merge entity @s[tag=parent_glow] {Glowing:1b}
data merge entity @s[tag=awaiting_parent] {Glowing:1b}