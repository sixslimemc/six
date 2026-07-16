#> six : set/difference

data remove storage six:out compare

data modify storage six:_ eval append value {in:{}, out:{difference:{a:[], b:[]}, intersection:{a:[], b:[]}}}
data modify storage six:_ eval[-1].in set from storage six:in compare
data remove storage six:in compare

function six:_/impl/set/compare/main

data modify storage six:out compare set from storage six:_ eval[-1].out
data remove storage six:_ eval[-1]

return 1