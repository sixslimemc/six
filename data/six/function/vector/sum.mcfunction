#> six : vector/sum

data remove storage six:out sum

execute store result score *x _six run function six:_/impl/vector/sum/main
execute if score *x _six matches 0 run data merge storage six:out {sum:{result:[0d, 0d, 0d]}}

data remove storage six:_ v.sum
data remove storage six:in sum

return run scoreboard players get *x _six