#> six:_/impl/struc/partial/each_only
#--------------------
# ./main
#--------------------

data modify storage six:_ v.partial.this_only set from storage six:_ v.partial.get.only[-1]

function six:_/impl/struc/partial/each_only.1 with storage six:_ v.partial

data remove storage six:_ v.partial.get.only[-1]
execute if data storage six:_ v.partial.get.only[0] run function six:_/impl/struc/partial/each_only