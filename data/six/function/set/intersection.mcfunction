#> six : set/intersection
# ^ T
#--------------------
# -> a[]: ^T
# -> b[]: ^T
# -> by? Lambda<^T, any>
# => preserve_order? = false
#--------------------
# <- result[]: ^T
#--------------------
# gets the set of items in both <a> and <b>.
# if <by> is specified, uses the result of <by> on each element to compare equality.
# if <preserve_order>: keep the order of <a>, removing elements not in <b>.
#--------------------
# 0..: count of items in >result<
#--------------------

data remove storage six:out intersection

execute store result score *x _six run function six:_/impl/set/intersection/main

data remove storage six:_ impl.intersection
data remove storage six:in intersection
scoreboard players reset *intersection.count _six

return run scoreboard players get *x _six