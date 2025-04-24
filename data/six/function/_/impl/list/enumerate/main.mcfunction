#> six:_/impl/list/enumerate/main
# ^ T
#--------------------
# -> items[]: ^T
#--------------------
# <- result[]: {index: int, value: ^T}
#--------------------
# TODO: description
#--------------------
# 1.
#--------------------

scoreboard players set *enumerate.index _six 0
execute if data storage six:in enumerate.items[0] run function six:_/impl/list/enumerate/each