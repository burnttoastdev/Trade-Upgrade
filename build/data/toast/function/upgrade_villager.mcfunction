advancement revoke @s only toast:ate_upgrade

execute if entity @e[type=villager, limit=1, sort=nearest, distance=..5, tag=!upgraded, nbt={VillagerData: {profession: "minecraft:none"}}] run tellraw @p {"text": "\u2726 Cannot upgrade a nitwit, baby, or jobless villager.", "color": "red"}

#error messages

execute if entity @e[type=villager, limit=1, sort=nearest, distance=..5, tag=!upgraded, nbt={VillagerData: {level: 1}}] run tellraw @p {"text": "\u2726 Villager must be apprentice level or higher to upgrade.", "color": "red"}

execute if entity @e[type=villager, tag=upgraded, distance=..5] run tellraw @p {"text": "\u2726 All nearby villagers have already been upgraded.", "color": "red"}

execute if entity @e[type=villager, limit=1, sort=nearest, distance=..5, tag=!upgraded, nbt=!{VillagerData: {profession: "minecraft:none"}}, nbt=!{VillagerData: {level: 1}}] run function toast:upgrade_villager/nested_execute_0

# upgrades a la villager