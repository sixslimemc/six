#> six : player/get_next_ammo
# AS [player]

data remove storage six:out get_next_ammo

execute store result score *x _six run function six:_/impl/player/get_next_ammo/main

data remove storage six:_ v.get_next_ammo
data remove storage six:in get_next_ammo

return run scoreboard players get *x _six