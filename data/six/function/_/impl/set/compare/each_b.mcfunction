#> six:_/impl/set/compare/each_b
#--------------------
# ./main
# ./direct/do
#--------------------

execute unless data storage six:_ eval[-1].v.b_comp[-1].exclude run data modify storage six:_ eval[-1].out.b append from storage six:_ eval[-1].v.b_comp[-1].value

data remove storage six:_ eval[-1].v.b_comp[-1]
execute if data storage six:_ eval[-1].v.b_comp[0] run function six:_/impl/set/compare/each_b