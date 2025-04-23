#> six : list/map
# ^ T
# ^ R
#--------------------
# -> items[]: ^T
# -> transform: Lambda<^T, ^R>
#--------------------
# <- result[]: ^R
#--------------------
# TODO: description
#--------------------
# 1.
#--------------------

data remove storage six:out map

function six:_/impl/list/map/main

data remove storage six:_ impl.map
data remove storage six:in map

return 1