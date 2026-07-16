#> six:_/impl/set/compare/each.1

$$(by)
execute unless data storage six:api compare[-1].equality_key run return 0

data modify storage six:_ eval[-1].v.a_compare.compare set from storage six:api compare[-1].equality_key
data modify storage six:_ eval[-1].v.a_compare.matched set value false
return 1