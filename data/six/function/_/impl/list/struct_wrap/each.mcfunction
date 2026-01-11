#> six:_/impl/list/struct_wrap/each
#--------------------
# ./main
#--------------------

data modify storage six:out struct_wrap.result prepend value {}
$data modify storage six:out struct_wrap.result[0].$(path) set from storage six:in struct_wrap.list[-1]

data remove storage six:in struct_wrap.list[-1]
execute if data storage six:in struct_wrap.list[0] run function six:_/impl/list/struct_wrap/each with storage six:in struct_wrap
