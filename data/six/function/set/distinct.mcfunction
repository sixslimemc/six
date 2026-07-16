#> six : set/distinct

data remove storage six:out distinct

data modify storage six:_ eval append value {in:{}, out:{result:[]}}
data modify storage six:_ eval[-1].in set from storage six:in distinct
data remove storage six:in distinct

execute store result score *x _six run function six:_/impl/set/distinct/main

data modify storage six:out compare set from storage six:_ eval[-1].out
data remove storage six:_ eval[-1]
scoreboard players reset *distinct.removed _six
scoreboard players reset *distinct.equal _six

return run scoreboard players get *x _six