#> six:_/impl/set/difference/ordered/gen_b_comp.1

$$(by)
execute unless data storage six:api difference[-1].compare run return 0

data modify storage six:_ eval[-1].v.b_comp append value {}
data modify storage six:_ eval[-1].v.b_comp[-1].compare set from storage six:api difference[-1].compare
data modify storage six:_ eval[-1].v.b_comp[-1].value set from storage six:_ eval[-1].in.b[-1]
data modify storage six:_ eval[-1].v.b_comp[-1].index set from storage six:_ eval[-1].v.b_index