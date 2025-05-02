#> six : set/difference
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
# gets the set of elements unique to <a>/<b>.
# if <by> is specified, uses the result of <by> on each element to compare equality.
#- >a< and >b< contain the original elements from their respective input set.
# if <ordered>: preserves original order of elements in <a> and <b>, prioritizing left-most elements.
#--------------------
# 1.
#--------------------
# best performance is achieved if length of <a> is <= length of <b>.
#--------------------

data merge storage six:out {difference:{a:[], b:[]}}

function six:_/impl/set/difference/main

data remove storage six:_ v.difference
data remove storage six:in difference

return 1