# add 0.25 seconds
scoreboard players add @s[scores={edit=45}] anim_length 5

# remove 0.25 seconds
execute if score @s anim_length matches 6.. run scoreboard players remove @s[scores={edit=46}] anim_length 5
execute if score @s anim_length matches ..5 run scoreboard players set @s[scores={edit=46}] anim_length 1

# add 0.05 seconds
scoreboard players add @s[scores={edit=47}] anim_length 1

# remove 0.05 seconds
execute if score @s anim_length matches 2.. run scoreboard players remove @s[scores={edit=48}] anim_length 1

scoreboard players set @s global 1