#> six:_/impl/struc/partial/main

# if <get> not specified, just return struc:
execute unless data storage six:in partial.get.only unless data storage six:in partial.get.without run return run data modify storage six:out partial.result set from storage six:in partial.struc

# init {..struc}:
data merge storage six:_ {impl:{partial:{struc:{}}}}
execute unless data storage six:in partial.get.only run data modify storage six:out partial.result set from storage six:in partial.struc

data modify storage six:_ v.partial.get set from storage six:in partial.get

execute if data storage six:_ v.partial.get.only[0] run function six:_/impl/struc/partial/each_only

execute if data storage six:_ v.partial.get.without[0] run function six:_/impl/struc/partial/each_without

return 1