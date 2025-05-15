#> six : vector/toward
#--------------------
# -> rotation: rotation
# => magnitude: number = 1
#--------------------
# <- result: spaceVector
#--------------------
# TODO: description
#--------------------
# 1.
#--------------------

data remove storage six:out toward

execute unless data storage six:in toward.magnitude run data merge storage six:in {toward:{magnitude:1}}

function six:_/impl/vector/toward/main

data remove storage six:in toward

return 1