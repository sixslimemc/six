# six : list/map

data remove storage six:out map

data modify storage six:_ eval append value {in:{}, out:{result:[]}}
data modify storage six:_ eval[-1].in set from storage six:in map
data remove storage six:in map

execute store success score *y _six if data storage six:_ eval[-1].in.transform
execute if score *y _six matches 0 run data modify storage six:_ eval[-1].out.result set from storage six:_ eval[-1].in.list
execute if score *y _six matches 1 run function six:_/impl/list/map/main

data modify storage six:out map set from storage six:_ eval[-1].out
data remove storage six:_ eval[-1]

return 1