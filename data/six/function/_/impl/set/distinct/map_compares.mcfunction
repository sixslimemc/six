#> six:_/impl/set/distinct/map_compares
#--------------------
# ./main
#--------------------

data modify storage six:in map.items set from storage six:in distinct.items
data modify storage six:in map.transform set from storage six:in distinct.by
data merge storage six:in {map:{preserve_order:true}}
function six:list/map
data modify storage six:_ impl.distinct.compares set from storage six:out map.result