#> six : struc/partial

data remove storage six:out partial

execute store result score *x _six run function six:_/impl/struc/partial/main

data remove storage six:_ v.partial
data remove storage six:in partial

return run scoreboard players get *x _six