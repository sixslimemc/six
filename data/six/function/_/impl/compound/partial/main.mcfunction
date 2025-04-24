#> six:_/impl/compound/partial/main

# if <get> not specified, just return compound:
execute unless data storage six:in partial.get.only unless data storage six:in partial.get.without run return run data modify storage six:out partial.result set from storage six:in partial.compound

# init {..compound}:
data merge storage six:_ {impl:{partial:{compound:{}}}}
execute unless data storage six:in partial.get.only run data modify storage six:out partial.result set from storage six:in partial.compound

data modify storage six:_ v.partial.get set from storage six:in partial.get

execute if data storage six:_ v.partial.get.only[0] run function six:_/impl/compound/partial/each_only

execute if data storage six:_ v.partial.get.without[0] run function six:_/impl/compound/partial/each_without

return 1