#> six:_/impl/list/map/each
#--------------------
# ./main
#--------------------

function six:_/impl/list/map/execute with storage six:_ impl.map.macro

data remove storage six:_ impl.map.list[-1]
execute if data storage six:_ impl.map.list[0] run function six:_/impl/list/map/each