#> six : set/intersection
# ^ A
# ^ B
#--------------------
# -> a[]: ^A
# -> b[]: ^B
# -> by? Lambda<^A | ^B, any>
# => preserve_order? = false
#--------------------
# <- a[]: ^A
# <- b[]: ^B
#--------------------
# gets the set of elements contained in both <a> and <b>.
# if <by> is specified, uses the result of <by> on each element to compare equality.
#- >a< and >b< contain the original elements from their respective input set.
# if <preserve_order>: preserves original order, prioritizing left-most elements.
#--------------------
# 0..: count of items in >result<
#--------------------
# if <by> is unspecified (direct equality comparison), >a< and >b< will be identical.
# best performance is achieved if the length of <a> is <= to the length of <b>.
#--------------------
data remove storage six:out intersection

execute store result score *x _six run function six:_/impl/set/intersection/main

data remove storage six:_ impl.intersection
data remove storage six:in intersection
scoreboard players reset *intersection.count _six

return run scoreboard players get *x _six