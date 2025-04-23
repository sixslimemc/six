#> six : list/key_wrap
# ^ T
#--------------------
# -> items[]: ^T
# -> key: string
#--------------------
# <- result[]: {<key>: ^T}
#--------------------
# transforms each element of <list> to a single-key compound where <key> is equal to the element.
#--------------------
# 1.
#--------------------
# example: <list> = [1, 2, 3], <key> = 'foo'; >result< = [{foo: 1}, {foo: 2}, {foo: 3}]
#--------------------

data remove storage six:out key_wrap

function six:_/impl/list/key_wrap/main

data remove storage six:_ impl.key_wrap
data remove storage six:in key_wrap

return 1