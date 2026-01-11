#> six : set/intersection

data merge storage six:out {intersection:{a:[], b:[]}}

function six:_/impl/set/intersection/main

data remove storage six:_ v.intersection
data remove storage six:in intersection

return 1