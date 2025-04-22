#> six:_/impl/list/key_wrap/main
# ^ T
#--------------------
# -> list[]: ^T
# -> key: string
#--------------------
# <- result[]: {<key>: ^T}
#--------------------

data modify storage six:out key_wrap.result prepend value {}
$data modify storage six:out key_wrap.result[0].'$(key)' set from storage six:in key_wrap.list[-1]

data remove storage six:in key_wrap.list[-1]
execute if data storage six:in key_wrap.list[0] run function six:_/impl/list/key_wrap/each with storage six:in key_wrap
