#> six:_/impl/list/map/each
#--------------------
# ./main
#--------------------

function six:_/impl/list/map/transform with storage six:_ eval[-1].in

data remove storage six:_ eval[-1].in.list[0]
execute if data storage six:_ eval[-1].in.list[0] run function six:_/impl/list/map/each