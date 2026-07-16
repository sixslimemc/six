#> six:_/impl/list/map/transform
#--------------------
# ./each
#--------------------

data remove storage six:api map.out
data modify storage six:api map.in set from storage six:_ eval[-1].in.list[0]
$$(transform)
execute if data storage six:api map.out run data modify storage six:_ eval[-1].out.result append from storage six:api map.out