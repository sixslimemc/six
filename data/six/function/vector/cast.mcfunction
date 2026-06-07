#> six : vector/cast

data remove storage six:out cast

execute unless data storage six:in cast.magnitude run data modify storage six:in cast.magnitude set value 1

function six:_/impl/vector/cast/main

data remove storage six:in cast

return 1