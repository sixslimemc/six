#> six:_/impl/list/map/transform
#--------------------
# ./each
#--------------------

data modify storage six:api map append value {in:{}}
data modify storage six:api map[-1].in set from storage six:_ eval[-1].in.list[0]
$$(transform)
execute if data storage six:api map[-1].out run data modify storage six:_ eval[-1].out.result append from storage six:api map[-1].out
data remove storage six:api map[-1]