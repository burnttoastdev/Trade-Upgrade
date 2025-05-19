clear @p minecraft:rabbit_foot[minecraft:custom_data={old: 1}] 1
data modify entity @e[type=villager, limit=1, sort=nearest, distance=..5, tag=!upgraded] Offers.Recipes[0].maxUses set value 40
data modify entity @e[type=villager, limit=1, sort=nearest, distance=..5, tag=!upgraded] Offers.Recipes[1].maxUses set value 40
data modify entity @e[type=villager, limit=1, sort=nearest, distance=..5, tag=!upgraded] Offers.Recipes[2].maxUses set value 30
data modify entity @e[type=villager, limit=1, sort=nearest, distance=..5, tag=!upgraded] Offers.Recipes[3].maxUses set value 30
execute at @e[type=villager, limit=1, sort=nearest, distance=..5, tag=!upgraded] run particle minecraft:totem_of_undying ~ ~1 ~ 0.2 0.2 0.2 0.5 300
playsound minecraft:block.anvil.use player @p
tellraw @p {"text": "\u2726 Villager upgraded!", "color": "green"}
data merge entity @e[type=villager, limit=1, sort=nearest, distance=..5, tag=!upgraded] {Tags: ["upgraded"]}
