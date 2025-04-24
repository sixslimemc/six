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

data merge storage six:_ {impl:{enumerate:{key:{index:'index', value:'value'}}}}
data modify storage six:_ impl.enumerate.key merge from storage six:in enumerate.key

scoreboard players set *enumerate.index _six 0
execute if data storage six:in enumerate.items[0] run function six:_/impl/list/enumerate/each with storage six:_ impl.enumerate.key