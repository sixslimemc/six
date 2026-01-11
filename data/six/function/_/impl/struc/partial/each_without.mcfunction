#> six:_/impl/struc/partial/each_without
#--------------------
# ./main
#--------------------

data modify storage six:_ v.partial.this_without set from storage six:_ v.partial.get.without[-1]

function six:_/impl/struc/partial/each_without.1 with storage six:_ v.partial

data remove storage six:_ v.partial.get.without[-1]
execute if data storage six:_ v.partial.get.without[0] run function six:_/impl/struc/partial/each_without