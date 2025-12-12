#> six : list/initialize
# ^ T
#--------------------
# -> length: int
# -> value: ^T
#--------------------
# <- result: [^T]
#--------------------
# TODO: description
#--------------------
# 1.
#--------------------

data modify storage six:out initialize set value {result:[]}

function six:_/impl/list/initialize/main

data remove storage six:in initialize

return 1