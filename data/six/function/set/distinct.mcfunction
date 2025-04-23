#> six : set/distinct
# ^ T
#--------------------
# -> items[]: ^T
# -> by? Lambda<^T, any>
# => preserve_order: bool = false
#--------------------
# <- result[]: ^T
#--------------------
# removes duplicates from <items>, returning a set.
# if <by> is specified, uses the result of <by> on each element to compare equality.
# if <preserve_order>: preserves <items> order, prioritizing left-most elements.
#--------------------
# 0..: count of duplicates removed.
#--------------------

data remove storage six:out distinct

execute store result score *x _six run function six:_/impl/set/distinct/main

data remove storage six:_ impl.distinct
data remove storage six:in distinct
scoreboard players reset *distinct.removed _six
scoreboard players reset *distinct.equal _six

return run scoreboard players get *x _six