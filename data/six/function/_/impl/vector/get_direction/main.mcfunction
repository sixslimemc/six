# IMPL > six : vector/get_direction
# main

data modify storage six:_ v.get_direction.x set from storage six:in get_direction.vector[0]
data modify storage six:_ v.get_direction.y set from storage six:in get_direction.vector[1]
data modify storage six:_ v.get_direction.z set from storage six:in get_direction.vector[2]

execute if score *statics _six matches 1 as 358a978f-e286-48d3-bcde-81106c020d2f run function six:_/impl/vector/get_direction/proxy_static
execute unless score *statics _six matches 1 summon marker run function six:_/impl/vector/get_direction/proxy