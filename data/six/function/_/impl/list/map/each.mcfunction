#> six:_/impl/list/map/each
#--------------------
# ./main
#--------------------

data modify storage six:in execute.lambda set from storage six:in map.transform
data merge storage six:in {execute:{from:'six:in map.items[-1]', to:'six:_ impl.map.x'}}
function six:lambda/1/execute

data modify storage six:out map.result prepend from storage six:_ impl.map.x

data remove storage six:in map.items[-1]
execute if data storage six:in map.items[0] run function six:_/impl/list/map/each