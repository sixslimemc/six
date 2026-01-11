#> six:_/impl/set/intersection/ordered/each_b
#--------------------
# ./do
#--------------------


execute if data storage six:_ v.intersection.b_comp[-1].include run data modify storage six:out intersection.b prepend from storage six:_ v.intersection.b_comp[-1].value

data remove storage six:_ v.intersection.b_comp[-1]
execute if data storage six:_ v.intersection.b_comp[0] run function six:_/impl/set/intersection/ordered/each_b