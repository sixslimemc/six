#> six:_/impl/set/difference/each.1

$$(by)
execute unless data storage six:api difference[-1].compare run return 0

data modify storage six:_ eval[-1].v.a_compare.compare set from storage six:api difference[-1].compare

return 1