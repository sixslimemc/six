#> six : decimal/max

data remove storage six:out max

execute if score *statics _six matches 1 store result score *x _six as 358a978f-e286-48d3-bcde-81106c020d2f run function six:_/impl/decimal/max/main_static
execute unless score *statics _six matches 1 store result score *x _six summon marker run function six:_/impl/decimal/max/main

execute if score *x _six matches 0..1 run data modify storage six:out max.result set from storage six:in max.a
execute if score *x _six matches -1 run data modify storage six:out max.result set from storage six:in max.b

data remove storage six:in max

return run scoreboard players get *x _six