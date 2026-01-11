#> six:_/impl/list/map/each
#--------------------
# ./main
#--------------------

data modify storage six:out map.result prepend value {}

execute store result score *x _six run function lambda:-/1/execute with storage six:_ v.map.lambdar
scoreboard players operation *map.return _six += *x _six

data remove storage six:in map.list[-1]
execute if data storage six:in map.list[0] run function six:_/impl/list/map/each