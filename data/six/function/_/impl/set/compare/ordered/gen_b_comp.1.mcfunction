#> six:_/impl/set/compare/ordered/gen_b_comp.1

$$(by)

data modify storage six:_ eval[-1].v.b_comp append value {}
data modify storage six:_ eval[-1].v.b_comp[-1].compare set from storage six:api compare[-1].compare
data modify storage six:_ eval[-1].v.b_comp[-1].value set from storage six:api compare[-1].value
data modify storage six:_ eval[-1].v.b_comp[-1].index set from storage six:_ eval[-1].v.b_index
execute unless data storage six:api compare[-1].compare run data modify storage six:_ eval[-1].v.b_comp[-1].exclude set value true
