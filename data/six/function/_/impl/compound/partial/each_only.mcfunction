#> six:_/impl/compound/partial/each_only
#--------------------
# ./main
#--------------------

data modify storage six:_ impl.partial.this_only set from storage six:_ impl.partial.get.only[-1]

function six:_/impl/compound/partial/each_only.1 with storage six:_ impl.partial

data remove storage six:_ impl.partial.get.only[-1]
execute if data storage six:_ impl.partial.get.only[0] run function six:_/impl/compound/partial/each_only