#> six : vector/cast

data remove storage six:out cast

execute unless data storage six:in cast.magnitude run data merge storage six:in {cast:{magnitude:1}}

function six:_/impl/vector/cast/main

data remove storage six:in cast

return 1