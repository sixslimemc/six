#> six : decimal/negate
#--------------------
# -> number: number
#--------------------
# <- result: number
#--------------------
# TODO: description
#--------------------
# 1.
#--------------------

data remove storage six:out negate

execute summon marker run function six:_/impl/decimal/negate/main with storage six:in negate

data remove storage six:in negate

return 1