# transform
execute if entity @e[type=area_effect_cloud,tag=ray,scores={edit=2}] run title @p[scores={temp=1}] actionbar {"text":"You cannot transform locked blocks!","color":"red"}
execute if entity @e[type=area_effect_cloud,tag=ray,scores={edit=10..17}] run title @p[scores={temp=1}] actionbar {"text":"You cannot transform locked blocks!","color":"red"}
execute if entity @e[type=area_effect_cloud,tag=ray,scores={edit=39..44}] run title @p[scores={temp=1}] actionbar {"text":"You cannot transform locked blocks!","color":"red"}

# animate
execute if entity @e[type=area_effect_cloud,tag=ray,scores={edit=3}] run title @p[scores={temp=1}] actionbar {"text":"You cannot animate locked blocks!","color":"red"}
execute if entity @e[type=area_effect_cloud,tag=ray,scores={edit=20..38}] run title @p[scores={temp=1}] actionbar {"text":"You cannot animate locked blocks!","color":"red"}
execute if entity @e[type=area_effect_cloud,tag=ray,scores={edit=45..52}] run title @p[scores={temp=1}] actionbar {"text":"You cannot animate locked blocks!","color":"red"}
execute if entity @e[type=area_effect_cloud,tag=ray,scores={edit=3}] run title @p[scores={temp=1}] actionbar {"text":"You cannot animate locked blocks!","color":"red"}

# parent
execute if entity @e[type=area_effect_cloud,tag=ray,scores={edit=4..5}] run title @p[scores={temp=1}] actionbar {"text":"You cannot parent locked blocks!","color":"red"}

# locked
execute if entity @e[type=area_effect_cloud,tag=ray,scores={edit=60}] run title @p[scores={temp=1}] actionbar {"text":"This block is already locked!","color":"red"}
