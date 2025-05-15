#> six : vector/towards
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

data remove storage six:out towards

execute unless data storage six:in towards.magnitude run data merge storage six:in {towards:{magnitude:1}}

function six:_/impl/vector/towards/main

data remove storage six:in towards

return 1