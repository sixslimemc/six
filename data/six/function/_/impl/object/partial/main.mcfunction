#> six:_/impl/object/partial/main

# if <get> not specified, just return object:
execute unless data storage six:in partial.get.only unless data storage six:in partial.get.without run return run data modify storage six:out partial.result set from storage six:in partial.object

# init {..object}:
data merge storage six:_ {impl:{partial:{object:{}}}}
execute unless data storage six:in partial.get.only run data modify storage six:out partial.result set from storage six:in partial.object

data modify storage six:_ impl.partial.get set from storage six:in partial.get

execute if data storage six:_ impl.partial.get.only[0] run function six:_/impl/object/partial/each_only

execute if data storage six:_ impl.partial.get.without[0] run function six:_/impl/object/partial/each_without

return 1