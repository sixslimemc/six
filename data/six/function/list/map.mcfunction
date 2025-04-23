#> six : list/map
# ^ T
# ^ R
#--------------------
# -> items[]: ^T
# -> transform: lambda/Lambda<^T, ^R>
#--------------------
# <- result[]: ^R
#--------------------
# TODO: description
#--------------------
# ..: sum of all returns by <transform> when applied to <items>
#--------------------

data remove storage six:out map

function six:_/impl/list/map/main

data remove storage six:_ impl.map
data remove storage six:in map

return 1