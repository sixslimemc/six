#> six:_/impl/set/distinct/main
# ^T
#--------------------
# -> items[]: ^T
# => ordered: bool = false
#--------------------
# <- result[]: ^T
#--------------------
# removes duplicates from <items>, returning a set.
# if <ordered> is true, preserves original order, prioritizing left-most elements.
#--------------------
# 0..: number of duplicates removed.
#--------------------

scoreboard players set *distinct.removed _six 0

# set {..compares}
execute store success score *x _six if data storage six:in distinct.by
execute if score *x _six matches 1 run function six:_/impl/set/distinct/map_compares
execute if score *x _six matches 0 run data modify storage six:_ v.distinct.compares set from storage six:in distinct.items

# ASSERT: {..compares}.count == <items>.count

execute store success score *x _six if data storage six:in distinct{ordered:true}
execute if score *x _six matches 1 if data storage six:in distinct.items[0] run function six:_/impl/set/distinct/each_preserve
execute if score *x _six matches 0 if data storage six:in distinct.items[0] run function six:_/impl/set/distinct/each

return run scoreboard players get *distinct.removed _six