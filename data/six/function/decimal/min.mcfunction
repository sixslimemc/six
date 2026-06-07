#> six : decimal/min

data remove storage six:out min

execute if score *statics _six matches 1 store result score *x _six as 358a978f-e286-48d3-bcde-81106c020d2f at @s run function six:_/impl/decimal/min/main_static
execute unless score *statics _six matches 1 store result score *x _six summon marker run function six:_/impl/decimal/min/main

execute if score *x _six matches 0..1 run data modify storage six:out min.result set from storage six:in min.a
execute if score *x _six matches -1 run data modify storage six:out min.result set from storage six:in min.b

data remove storage six:in min

return run scoreboard players get *x _six