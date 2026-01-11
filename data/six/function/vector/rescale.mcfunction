#> six : vector/space/rescale

# literally just a shorthand for calling 'direction' then 'cast'

data remove storage six:out rescale

data modify storage six:in get_direction.vector set from storage six:in rescale.vector
function six:vector/direction

data modify storage six:in cast.rotation set from storage six:out get_direction.result
data modify storage six:in cast.magnitude set from storage six:in rescale.magnitude
function six:vector/cast

data modify storage six:out rescale.result set from storage six:out cast.result

data remove storage six:in rescale

return 1