#> six : vector/rotation/point
#--------------------
# -> vector: rotationVector
# -> magnitude: number = 1
#--------------------
# <- result: spaceVector
#--------------------
# TODO: description
#--------------------
# 1: 
#--------------------

data remove storage six:out point

execute unless data storage six:in point.magnitude run data merge storage six:in {point:{magnitude:1}}

execute store result score *x _six run function six:_/impl/vector/rotation/point/main

data remove storage six:_ v.point
data remove storage six:in point

return run scoreboard players get *x _six