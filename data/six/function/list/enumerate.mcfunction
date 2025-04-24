#> six : list/enumerate
# ^ T
#--------------------
# -> items[]: ^T
# -> key? {index: string = 'index', value: string = 'value'}
#--------------------
# <- result[]: {index: int, value: ^T}
#--------------------
# TODO: description
#--------------------
# 1.
#--------------------

data remove storage six:out enumerate

function six:_/impl/list/enumerate/main

data remove storage six:_ impl.enumerate
data remove storage six:in enumerate
scoreboard players reset *enumerate.index _six

return 1