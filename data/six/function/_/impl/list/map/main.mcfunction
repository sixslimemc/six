#> six:_/impl/list/map/main
# ^ T
# ^ R
#--------------------
# -> list[]: ^T
# -> transform: Lambda<^T, ^R>
#--------------------
# <- result[]: ^R
#--------------------
# 
#--------------------
# 1.
#--------------------

execute if data storage six:in map.items[0] run function six:_/impl/list/map/each
