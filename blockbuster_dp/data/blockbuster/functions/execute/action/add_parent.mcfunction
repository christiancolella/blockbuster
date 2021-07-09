tag @s add awaiting_parent
scoreboard players operation @p[scores={temp=1}] parent_id = @s id
scoreboard players set @p[scores={temp=1}] edit 3
scoreboard players set @s temp 0
