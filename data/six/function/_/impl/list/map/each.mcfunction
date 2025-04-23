#> six:_/impl/list/map/each
#--------------------
# ./main
#--------------------

data modify storage six:out map.result prepend value {}
function six:-/lambdar/1/execute with storage six:_ impl.map.lambdar

data remove storage six:in map.items[-1]
execute if data storage six:in map.items[0] run function six:_/impl/list/map/each