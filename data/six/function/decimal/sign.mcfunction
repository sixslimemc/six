#> six : decimal/sign

data remove storage six:out sign

execute if score *statics _six matches 1 store result score *x _six as 358a978f-e286-48d3-bcde-81106c020d2f run function six:_/impl/decimal/sign/main_static
execute store result score *x _six summon marker run function six:_/impl/decimal/sign/main

data remove storage six:in sign

return run scoreboard players get *x _six