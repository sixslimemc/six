# IMPL > six : list/map
# main

scoreboard players set *map.return _six 0

execute if data storage six:_ eval[-1].in.list[0] run function six:_/impl/list/map/each

return run scoreboard players get *map.return _six