#> six : misc/gen_loot_vector

data remove storage six:out gen_loot_vector

loot spawn ~ ~ ~ loot six:_/gen_loot_vector
execute as @n[type=item, predicate=six:_/gen_loot_vector] run function six:_/impl/misc/gen_loot_vector/main

return 1