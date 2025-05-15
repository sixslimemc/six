#> six : vector/space/rescale
#--------------------
# -> vector: spaceVector
# => magnitude: number = 1
#--------------------
# <- result: spaceVector
#--------------------
# TODO: description
#--------------------
# 1.
#--------------------

data remove storage six:out rescale

data modify storage six:in direction.vector set from storage six:in rescale.vector
function six:vector/space/direction

data modify storage six:in toward.vector set from storage six:out direction.result
data modify storage six:in toward.magnitude set from storage six:in rescale.magnitude
function six:vector/toward

data remove storage six:in rescale

return 1