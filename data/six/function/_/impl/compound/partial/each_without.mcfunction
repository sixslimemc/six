#> six:_/impl/compound/partial/each_without
#--------------------
# ./main
#--------------------

data modify storage six:_ impl.partial.this_without set from storage six:_ impl.partial.get.without[-1]

function six:_/impl/compound/partial/each_without.1 with storage six:_ impl.partial

data remove storage six:_ impl.partial.get.without[-1]
execute if data storage six:_ impl.partial.get.without[0] run function six:_/impl/compound/partial/each_without