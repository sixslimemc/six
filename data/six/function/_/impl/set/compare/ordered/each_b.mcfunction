#> six:_/impl/set/compare/ordered/each_b
#--------------------
# ./do
# ../direct/ordered/do
#--------------------

execute unless data storage six:_ eval[-1].v.b_comp[-1].matched run data modify storage six:_ eval[-1].out.b prepend from storage six:_ eval[-1].v.b_comp[-1].value

data remove storage six:_ eval[-1].v.b_comp[-1]
execute if data storage six:_ eval[-1].v.b_comp[0] run function six:_/impl/set/compare/ordered/each_b