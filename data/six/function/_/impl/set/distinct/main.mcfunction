#> six:_/impl/set/distnict/main
# ^T
#--------------------
# -> items[]: ^T
# => preserve_order: bool = false
#--------------------
# <- result[]: ^T
#--------------------
# removes duplicates from <items>, returning a set.
# if <preserve_order> is true, preserves original order, prioritizing left-most elements.
#--------------------
# 0..: number of duplicates removed.
#--------------------

scoreboard players set *distinct.removed _six 0

data modify storage six:_ impl.distinct.items set from storage six:in distinct.items

execute if data storage six:in distinct{preserve_order:true} if data storage six:_ impl.distinct.items[0] run function six:_/impl/set/distinct/each_preserve
execute unless data storage six:in distinct{preserve_order:true} if data storage six:_ impl.distinct.items[0] run function six:_/impl/set/distinct/each

return run scoreboard players get *distinct.removed _six