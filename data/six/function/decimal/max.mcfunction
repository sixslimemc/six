#> six : decimal/max

data remove storage six:out max

execute store result score *x _six summon marker run function six:_/impl/decimal/max/main

execute if score *x _six matches 0..1 run data modify storage six:out max.result set from storage six:in max.a
execute if score *x _six matches -1 run data modify storage six:out max.result set from storage six:in max.b

data remove storage six:in max

return run scoreboard players get *x _six