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

# literally just a shorthand for calling 'direction_of' then 'cast'

data remove storage six:out rescale

data modify storage six:in direction_of.vector set from storage six:in rescale.vector
function six:vector/direction_of

data modify storage six:in cast.rotation set from storage six:out direction_of.result
data modify storage six:in cast.magnitude set from storage six:in rescale.magnitude
function six:vector/cast

data modify storage six:out rescale.result set from storage six:out cast.result

data remove storage six:in rescale

return 1