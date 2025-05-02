#> six:_/impl/set/difference/each_b
#--------------------
# ./main
# ./direct/do
#--------------------

execute unless data storage six:_ v.difference.b_comp[-1].exclude run data modify storage six:out difference.b append from storage six:_ v.difference.b_comp[-1].value

data remove storage six:_ v.difference.b_comp[-1]
execute if data storage six:_ v.difference.b_comp[0] run function six:_/impl/set/difference/each_b