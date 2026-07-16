#> six:_/impl/set/compare/gen_b_comp.1

$$(by)

data modify storage six:_ eval[-1].v.b_comp append value {matched:false}
data modify storage six:_ eval[-1].v.b_comp[-1].compare set from storage six:api compare[-1].equality_key
data modify storage six:_ eval[-1].v.b_comp[-1].value set from storage six:api compare[-1].value
data modify storage six:_ eval[-1].v.b_comp[-1].index set from storage six:_ eval[-1].v.b_index
execute unless data storage six:api compare[-1].equality_key run data modify storage six:_ eval[-1].v.b_comp[-1].matched set value true
