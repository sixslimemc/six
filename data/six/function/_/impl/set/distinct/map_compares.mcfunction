#> six:_/impl/set/distinct/map_compares
#--------------------
# ./main
#--------------------

data modify storage six:in map.items set from storage six:in distinct.items
data modify storage six:in map.transform set from storage six:in distinct.by
function six:list/map
data modify storage six:_ v.distinct.compares set from storage six:out map.result