#> six:_/impl/list/key_wrap/main
# ^ T
#--------------------
# -> list[]: ^T
# -> key: string
#--------------------
# <- result[]: {<key>: ^T}
#--------------------

execute if data storage six:in key_wrap.list[0] run function six:_/impl/list/key_wrap/each with storage six:in key_wrap
