#> six:_/impl/list/map/each
#--------------------
# ./main
#--------------------

data modify storage six:out map.result prepend value {}

execute store result score *x _six run function six:-/lambdar/1/execute with storage six:_ impl.map.lambdar
scoreboard players operation *map.return _six += *x _six

data remove storage six:in map.items[-1]
execute if data storage six:in map.items[0] run function six:_/impl/list/map/each