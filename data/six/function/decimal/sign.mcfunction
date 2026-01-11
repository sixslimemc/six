#> six : decimal/sign

data remove storage six:out sign

execute store result score *x _six summon marker run function six:_/impl/decimal/sign/main

data remove storage six:in sign

return run scoreboard players get *x _six