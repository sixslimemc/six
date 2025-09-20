#> six : player/get_next_ammo
# AS [player]
#--------------------
# -> amount: int
# => types[]: 'bow' | 'crossbow' = []
# => custom_items[]: $itemID = []
#--------------------
# <- result[]: {item: item, amount: int, slotPath: $itemSlotPath}
#--------------------
# TODO: description
#--------------------
# 0..: ammo items successfully found.
#--------------------

data remove storage six:out get_next_ammo

execute store result score *x _six run function six:_/impl/player/get_next_ammo/main

data remove storage six:_ v.get_next_ammo
data remove storage six:in get_next_ammo

return run scoreboard players get *x _six