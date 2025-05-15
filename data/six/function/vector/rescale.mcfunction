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

# literally just a shorthand for calling 'direction_of' then 'toward'

data remove storage six:out rescale

data modify storage six:in direction_of.vector set from storage six:in rescale.vector
function six:vector/direction_of

data modify storage six:in toward.rotation set from storage six:out direction_of.result
data modify storage six:in toward.magnitude set from storage six:in rescale.magnitude
function six:vector/toward

data modify storage six:out rescale.result set from storage six:out toward.result

data remove storage six:in rescale

return 1