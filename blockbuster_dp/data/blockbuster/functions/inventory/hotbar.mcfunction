execute unless score @s edit matches 1.. run item replace entity @s hotbar.8 with warped_fungus_on_a_stick{display:{Name:"{\"text\":\"Edit Mode\",\"color\":\"blue\",\"italic\":false}"},CustomModelData:-1}
execute as @s[scores={edit=1}] run function blockbuster:inventory/home
execute as @s[scores={edit=2}] run function blockbuster:inventory/copy
execute as @s[scores={edit=3}] run function blockbuster:inventory/parent
execute as @s[scores={edit=4}] run function blockbuster:inventory/transform
execute as @s[scores={edit=5..6}] run function blockbuster:inventory/animate
execute as @s[scores={edit=7}] run function blockbuster:inventory/timeline
execute as @s[scores={edit=8}] run function blockbuster:inventory/anim_length
execute as @s[scores={edit=9}] run function blockbuster:inventory/transform_from_anim
execute as @s[scores={edit=10..11}] run function blockbuster:inventory/keyframe
execute as @s[scores={edit=12}] run function blockbuster:inventory/transition_type
execute as @s[scores={edit=13}] run function blockbuster:inventory/move
execute as @s[scores={edit=14}] run function blockbuster:inventory/rotate
execute as @s[scores={edit=15}] run function blockbuster:inventory/move_from_anim
execute as @s[scores={edit=16}] run function blockbuster:inventory/rotate_from_anim
execute as @s[scores={edit=17..20}] run function blockbuster:inventory/options