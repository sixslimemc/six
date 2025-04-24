#> six:_/impl/set/intersection/each
#--------------------
# ./main
#--------------------

data modify storage six:_ v.intersection.this_a set from storage six:in intersection.a[-1]
function lambda:-/1/execute

function six:_/impl/set/intersection/get_matches with storage six:_ v.intersection

data remove storage six:in intersection.a[-1]
execute if data storage six:in intersection.a[0] run function six:_/impl/set/intersection/each