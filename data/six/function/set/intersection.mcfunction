#> six : set/intersection
# ^ A
# ^ B
#--------------------
# -> a[]: ^A
# -> b[]: ^B
# -> by? Lambda<^A | ^B, any>
# => ordered? = false
#--------------------
# <- a[]: ^A
# <- b[]: ^B
#--------------------
# gets the set of elements contained in both <a> and <b>.
# if <by> is specified, uses the result of <by> on each element to compare equality.
#- >a< and >b< contain the original elements from their respective input set.
#-- (thus their length will be equal.)
# if <ordered>: preserves original order of elements in <a> and <b>, prioritizing left-most elements.
#--------------------
# 1.
#--------------------
# if <by> is unspecified (direct equality comparison), >a< and >b< will hold identical elements (but not necessarily be in the same order).
# best performance is achieved if length of <a> is <= length of <b>.
#--------------------

data merge storage six:out {intersection:{a:[], b:[]}}

function six:_/impl/set/intersection/main

data remove storage six:_ v.intersection
data remove storage six:in intersection

return 1