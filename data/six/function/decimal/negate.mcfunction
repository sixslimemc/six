#> six : decimal/negate

data remove storage six:out negate

execute if score *statics _six matches 1 as 358a978f-e286-48d3-bcde-81106c020d2f run function six:_/impl/decimal/negate/main_static
execute unless score *statics _six matches 1 summon marker run function six:_/impl/decimal/negate/main

data remove storage six:in negate

return 1