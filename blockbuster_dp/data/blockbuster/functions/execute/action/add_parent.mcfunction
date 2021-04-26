tag @s add awaiting_parent
scoreboard players operation @p[scores={temp=1}] parent_uuid_0 = @s self_uuid_0
scoreboard players operation @p[scores={temp=1}] parent_uuid_1 = @s self_uuid_1
scoreboard players operation @p[scores={temp=1}] parent_uuid_2 = @s self_uuid_2
scoreboard players operation @p[scores={temp=1}] parent_uuid_3 = @s self_uuid_3
scoreboard players set @p[scores={temp=1}] edit 3
scoreboard players set @s temp 0