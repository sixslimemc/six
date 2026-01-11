# six : list/map

data remove storage six:out map

execute store success score *y _six if data storage six:in map.transform
execute if score *y _six matches 0 run data modify storage six:out map.result set from storage six:in map.items
execute if score *y _six matches 0 run scoreboard players set *x _six 0
execute if score *y _six matches 1 store result score *x _six run function six:_/impl/list/map/main

data remove storage six:_ v.map
data remove storage six:in map

return run scoreboard players get *x _six