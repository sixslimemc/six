#> six : set/distinct

data remove storage six:out distinct

execute store result score *x _six run function six:_/impl/set/distinct/main

data remove storage six:_ v.distinct
data remove storage six:in distinct
scoreboard players reset *distinct.removed _six
scoreboard players reset *distinct.equal _six

return run scoreboard players get *x _six